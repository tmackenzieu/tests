package escenarios;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"features/loginLinkedin.feature"}, glue = {"definitions"})
public class Runner {

}