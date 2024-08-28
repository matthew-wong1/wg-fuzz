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
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder104.insertDebugMarker("mymarker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder103.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    command_encoder104.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder104.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder003.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    
    
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder601.insertDebugMarker("mymarker");
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    command_encoder405.insertDebugMarker("mymarker");
    
    command_encoder600.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    command_encoder601.insertDebugMarker("mymarker");
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    
    command_encoder105.insertDebugMarker("mymarker");
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder300.insertDebugMarker("mymarker");
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    command_encoder602.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    command_encoder301.insertDebugMarker("mymarker");
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    command_encoder603.insertDebugMarker("mymarker");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
}