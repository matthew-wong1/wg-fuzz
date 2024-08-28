export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    
    device20.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("out-of-memory");
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.destroy();
    device70.destroy();
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.pushErrorScope("validation");
    command_encoder300.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.pushErrorScope("validation");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device60.pushErrorScope("out-of-memory");
    command_encoder500.insertDebugMarker("mymarker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device50.pushErrorScope("out-of-memory");
    
    command_encoder503.insertDebugMarker("mymarker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder601.insertDebugMarker("mymarker");
    device40.pushErrorScope("validation");
    
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder504.insertDebugMarker("mymarker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder602.insertDebugMarker("mymarker");
    command_encoder600.insertDebugMarker("mymarker");
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    command_encoder502.insertDebugMarker("mymarker");
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    
    command_encoder504.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    
    command_encoder601.insertDebugMarker("mymarker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    command_encoder500.insertDebugMarker("mymarker");
    device110.pushErrorScope("internal");
    command_encoder300.insertDebugMarker("mymarker");
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder601.insertDebugMarker("mymarker");
    
    device60.pushErrorScope("internal");
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device50.pushErrorScope("validation");
    command_encoder1100.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    command_encoder503.insertDebugMarker("mymarker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device100.pushErrorScope("internal");
    
    
    
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    command_encoder601.insertDebugMarker("mymarker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder506.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    
    
    command_encoder1100.insertDebugMarker("mymarker");
    command_encoder401.insertDebugMarker("mymarker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.destroy();
    
    command_encoder504.insertDebugMarker("mymarker");
    command_encoder605.insertDebugMarker("mymarker");
    device60.pushErrorScope("validation");
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder505.insertDebugMarker("mymarker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder603.insertDebugMarker("mymarker");
    command_encoder604.insertDebugMarker("mymarker");
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device100.pushErrorScope("validation");
    
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    command_encoder505.insertDebugMarker("mymarker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    command_encoder1000.insertDebugMarker("mymarker");
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    device30.pushErrorScope("validation");
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder508 = device50.createCommandEncoder({ label: "command_encoder508" });
    
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    command_encoder605.insertDebugMarker("mymarker");
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder509 = device50.createCommandEncoder({ label: "command_encoder509" });
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder606.insertDebugMarker("mymarker");
    
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder1101.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder509.insertDebugMarker("mymarker");
    command_encoder509.insertDebugMarker("mymarker");
    
    command_encoder501.insertDebugMarker("mymarker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("validation");
    command_encoder505.insertDebugMarker("mymarker");
    
    const command_encoder5010 = device50.createCommandEncoder({ label: "command_encoder5010" });
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder305.insertDebugMarker("mymarker");
    
    command_encoder602.insertDebugMarker("mymarker");
    
    command_encoder504.insertDebugMarker("mymarker");
    command_encoder1101.insertDebugMarker("mymarker");
    command_encoder304.insertDebugMarker("mymarker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder508.insertDebugMarker("mymarker");
    
    command_encoder301.insertDebugMarker("mymarker");
    
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder5010.insertDebugMarker("mymarker");
    command_encoder1100.insertDebugMarker("mymarker");
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    command_encoder401.insertDebugMarker("mymarker");
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("validation");
    command_encoder605.insertDebugMarker("mymarker");
    const command_encoder1300 = device130.createCommandEncoder({ label: "command_encoder1300" });
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder1001.insertDebugMarker("mymarker");
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder606.insertDebugMarker("mymarker");
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    command_encoder504.insertDebugMarker("mymarker");
    
    command_encoder1100.insertDebugMarker("mymarker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder1101.insertDebugMarker("mymarker");
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.pushErrorScope("validation");
    
    command_encoder302.insertDebugMarker("mymarker");
    
    command_encoder801.insertDebugMarker("mymarker");
    
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder5011 = device50.createCommandEncoder({ label: "command_encoder5011" });
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder602.insertDebugMarker("mymarker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device130.pushErrorScope("validation");
    
    command_encoder502.insertDebugMarker("mymarker");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    command_encoder505.insertDebugMarker("mymarker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder508.insertDebugMarker("mymarker");
    
    command_encoder305.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    
    const command_encoder5012 = device50.createCommandEncoder({ label: "command_encoder5012" });
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder600.insertDebugMarker("mymarker");
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    command_encoder1300.insertDebugMarker("mymarker");
    const command_encoder5013 = device50.createCommandEncoder({ label: "command_encoder5013" });
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder509.insertDebugMarker("mymarker");
    
    command_encoder802.insertDebugMarker("mymarker");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    
    
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder5011.insertDebugMarker("mymarker");
    
    command_encoder801.insertDebugMarker("mymarker");
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder305.insertDebugMarker("mymarker");
    
    device80.pushErrorScope("internal");
    command_encoder5013.insertDebugMarker("mymarker");
    
    command_encoder508.insertDebugMarker("mymarker");
    command_encoder605.insertDebugMarker("mymarker");
    const command_encoder1102 = device110.createCommandEncoder({ label: "command_encoder1102" });
    command_encoder507.insertDebugMarker("mymarker");
    
    
    
    command_encoder503.insertDebugMarker("mymarker");
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("validation");
    
    
    command_encoder800.insertDebugMarker("mymarker");
    device100.pushErrorScope("out-of-memory");
    device60.pushErrorScope("validation");
    
    
    
    
    command_encoder507.insertDebugMarker("mymarker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder604.insertDebugMarker("mymarker");
    command_encoder304.insertDebugMarker("mymarker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    command_encoder504.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder802.insertDebugMarker("mymarker");
    command_encoder509.insertDebugMarker("mymarker");
    command_encoder608.insertDebugMarker("mymarker");
    command_encoder403.insertDebugMarker("mymarker");
    command_encoder801.insertDebugMarker("mymarker");
    command_encoder5011.insertDebugMarker("mymarker");
    device60.pushErrorScope("validation");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder607.insertDebugMarker("mymarker");
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder800.insertDebugMarker("mymarker");
    const command_encoder5014 = device50.createCommandEncoder({ label: "command_encoder5014" });
    command_encoder800.insertDebugMarker("mymarker");
    
    
    command_encoder1100.insertDebugMarker("mymarker");
    command_encoder1300.insertDebugMarker("mymarker");
    
    
    
    command_encoder5011.insertDebugMarker("mymarker");
    const command_encoder609 = device60.createCommandEncoder({ label: "command_encoder609" });
    command_encoder601.insertDebugMarker("mymarker");
    
    
    command_encoder1200.insertDebugMarker("mymarker");
    
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder301.insertDebugMarker("mymarker");
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    command_encoder804.insertDebugMarker("mymarker");
    command_encoder5013.insertDebugMarker("mymarker");
    const command_encoder1301 = device130.createCommandEncoder({ label: "command_encoder1301" });
    command_encoder606.insertDebugMarker("mymarker");
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder303.insertDebugMarker("mymarker");
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    command_encoder1100.insertDebugMarker("mymarker");
    
    
    command_encoder300.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    command_encoder1000.insertDebugMarker("mymarker");
    command_encoder403.insertDebugMarker("mymarker");
    
    
    command_encoder500.insertDebugMarker("mymarker");
    device120.pushErrorScope("internal");
    const command_encoder1103 = device110.createCommandEncoder({ label: "command_encoder1103" });
    command_encoder609.insertDebugMarker("mymarker");
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder304.insertDebugMarker("mymarker");
    
    
    command_encoder404.insertDebugMarker("mymarker");
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder503.insertDebugMarker("mymarker");
    device80.pushErrorScope("internal");
    command_encoder603.insertDebugMarker("mymarker");
    device130.pushErrorScope("validation");
    
    command_encoder504.insertDebugMarker("mymarker");
    command_encoder802.insertDebugMarker("mymarker");
    command_encoder802.insertDebugMarker("mymarker");
    command_encoder1300.insertDebugMarker("mymarker");
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("validation");
    
    const command_encoder6010 = device60.createCommandEncoder({ label: "command_encoder6010" });
    command_encoder802.insertDebugMarker("mymarker");
    command_encoder606.insertDebugMarker("mymarker");
    
    command_encoder1102.insertDebugMarker("mymarker");
    command_encoder801.insertDebugMarker("mymarker");
    
    
    const command_encoder1104 = device110.createCommandEncoder({ label: "command_encoder1104" });
    command_encoder802.insertDebugMarker("mymarker");
    
    const command_encoder1105 = device110.createCommandEncoder({ label: "command_encoder1105" });
    
    
    
    command_encoder605.insertDebugMarker("mymarker");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder1104.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    
    
    device140.pushErrorScope("validation");
    command_encoder1002.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder1003.insertDebugMarker("mymarker");
    command_encoder1102.insertDebugMarker("mymarker");
    device60.pushErrorScope("out-of-memory");
    
    command_encoder502.insertDebugMarker("mymarker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder605.insertDebugMarker("mymarker");
    
    command_encoder505.insertDebugMarker("mymarker");
    
    const command_encoder6011 = device60.createCommandEncoder({ label: "command_encoder6011" });
    command_encoder5013.insertDebugMarker("mymarker");
    
    command_encoder1301.insertDebugMarker("mymarker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder5014.insertDebugMarker("mymarker");
    command_encoder607.insertDebugMarker("mymarker");
    command_encoder804.insertDebugMarker("mymarker");
    
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder1100.insertDebugMarker("mymarker");
    command_encoder6010.insertDebugMarker("mymarker");
    
    command_encoder1001.insertDebugMarker("mymarker");
    
    const command_encoder1400 = device140.createCommandEncoder({ label: "command_encoder1400" });
    
    command_encoder509.insertDebugMarker("mymarker");
    command_encoder802.insertDebugMarker("mymarker");
    
    command_encoder5010.insertDebugMarker("mymarker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    device110.pushErrorScope("internal");
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder509.insertDebugMarker("mymarker");
    
    command_encoder1400.insertDebugMarker("mymarker");
    command_encoder609.insertDebugMarker("mymarker");
    command_encoder1100.insertDebugMarker("mymarker");
    command_encoder801.insertDebugMarker("mymarker");
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder508.insertDebugMarker("mymarker");
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}