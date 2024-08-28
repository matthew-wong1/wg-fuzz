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
    
    const array0 = new Float32Array([-0.25, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 0.5, -0.75, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, -0.25, 0.75, 0.75, 0.25, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, 0.0, -0.75, -1.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.5, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, 0.25, -0.5, 1.0, 0.0, 0.25, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([-0.5, 0.0, -0.5, -1.0, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -0.75, 0.75, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 0.5, 0.5, -0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.25, 0.75, -1.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.5, -0.25, -0.25, 0.5, 0.0, -1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 0.0, 0.25, -0.75, 0.75, -0.5, -0.75, -0.5, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, -0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([1.0, 1.0, -0.75, 0.75, 1.0, -0.5, -1.0, -0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, -0.75, 0.25, -1.0, -1.0, 0.25, -0.25, -0.75, -1.0, 0.75, -1.0, 0.0, -0.25, -0.25, -0.25, 0.25, 1.0, 0.5, 1.0, 0.0, -1.0, 0.75, 1.0, 0.5, -0.75, 0.5, -0.25, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -0.5, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, 0.25, -0.25, 1.0, 0.0, 0.75, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, 0.0, -0.25, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, -0.75, -1.0, -0.5, 0.75, -0.5, -0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, 1.0, 0.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.75, 1.0, 0.5, 0.25, 0.25, 0.75, 1.0, -0.5, 0.0, 0.0, 0.0, 0.0, -1.0, 0.25, 1.0, 0.5, 1.0, -0.25, -0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 1.0, -0.5, -0.25, 0.0, 1.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.5, -1.0, -0.75, 0.5, 0.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, -1.0, 0.25, 1.0, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -0.25, 1.0, 0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 1.0, 0.0, 0.75, -1.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -0.5, -0.25, 1.0, 1.0, 0.5, 0.75, 0.75, 0.25, 0.0, 0.75, 0.0, 0.5, 0.0, 0.75, 0.5, 0.25, -0.75, -0.25, 0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture100.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query400.destroy()
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.destroy();
    
    device40.destroy();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([-1.0, -1.0, -1.0, 0.0, 0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.75, 0.75, 0.5, 0.5, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.5, 0.0, 0.5, 0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -0.75, 0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, -0.75, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, 0.5, 0.75, 0.5, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.5, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.5, ]);
    const array5 = new Float32Array([-0.5, 0.0, -1.0, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.5, 0.75, 0.5, 1.0, 0.5, 0.0, 1.0, 0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 0.25, -0.5, -1.0, 0.75, 0.5, 0.75, 0.0, 0.5, 0.0, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, -0.75, 0.25, 0.75, -0.75, -0.5, 0.25, -0.5, -0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.75, 0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 1.0, 0.25, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, -0.75, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const array6 = new Float32Array([-0.5, 0.25, 0.75, 1.0, 0.0, 0.0, 0.75, 0.5, -0.5, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 0.25, 1.0, 0.25, -0.5, -0.25, 0.0, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.5, 0.75, 0.5, 1.0, -0.25, 1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 0.0, 1.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.75, -0.5, 0.0, -0.25, -0.75, -0.25, -0.25, -0.5, -1.0, -0.75, 0.5, -0.75, -0.75, 0.0, 1.0, 0.0, 0.5, 0.0, ]);
    
    
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    texture101.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder100.popDebugGroup()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device70.destroy();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder1000.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query100.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query800.destroy()
    texture102.destroy();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    texture900.destroy();
    
    
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    command_encoder901.insertDebugMarker("mymarker");
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query100.destroy()
    device60.destroy();
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    command_encoder901.insertDebugMarker("mymarker");
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    
    
    
    compute_pass_encoder1010.popDebugGroup()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    command_encoder902.insertDebugMarker("mymarker");
    
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder10000.popDebugGroup()
    command_encoder902.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture800.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    const array7 = new Float32Array([-1.0, -0.75, -0.75, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, 0.25, 1.0, 0.5, 0.0, -0.5, -0.25, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -0.25, -0.25, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, -0.75, -0.75, 0.75, -1.0, 0.25, -1.0, -0.75, -1.0, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, -0.5, 0.5, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, -0.5, -0.5, 0.75, 0.0, 0.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.5, 0.0, ]);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder901.insertDebugMarker("mymarker");
    
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    
    query802.destroy()
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query1000.destroy()
    
    texture901.destroy();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query1001.destroy()
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder902.insertDebugMarker("mymarker");
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    command_encoder902.insertDebugMarker("mymarker");
    query1001.destroy()
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    command_encoder901.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1020.executeBundles([])
    query802.destroy()
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    texture104.destroy();
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    command_encoder902.insertDebugMarker("mymarker");
    
    
    query802.destroy()
    render_pass_encoder1020.setStencilReference(1);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder10000.popDebugGroup()
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    query803.destroy()
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder903.insertDebugMarker("mymarker");
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile(__dirname + '/shader_module1005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    compute_pass_encoder1010.popDebugGroup()
    
    query101.destroy()
    query900.destroy()
    
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    
    
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    query802.destroy()
    query101.destroy()
    
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder8030 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile(__dirname + '/shader_module807.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pass_encoder9030 = command_encoder903.beginComputePass({ label: "compute_pass_encoder9030" });
    
    render_pass_encoder8030.setStencilReference(1);
    query802.destroy()
    render_bundle_encoder900.insertDebugMarker("marker");
    query1001.destroy()
    render_bundle_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder8000.popDebugGroup()
    texture1100.destroy();
    render_pass_encoder8030.insertDebugMarker("marker");
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const texture_view8012 = texture801.createView({ label: "texture_view8012" });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query902.destroy()
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder902.insertDebugMarker("marker");
    render_pass_encoder8030.insertDebugMarker("marker");
    texture801.destroy();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    query801.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder8030.insertDebugMarker("marker");
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query904.destroy()
    query1000.destroy()
    compute_pass_encoder9000.popDebugGroup()
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query800.destroy()
    
    render_pass_encoder8030.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    texture105.destroy();
    
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    query801.destroy()
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    query802.destroy()
    query801.destroy()
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    
    
    command_encoder1100.pushDebugGroup("mygroupmarker")
    const query1004 = device100.createQuerySet({
        label: "query1004",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.5, -0.75, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 0.5, -0.75, 0.0, -1.0, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, -0.75, 0.75, -0.5, -0.5, 1.0, 0.5, -0.75, -0.25, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 0.25, -0.75, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, 1.0, -0.5, -1.0, 0.75, 0.0, 0.5, 0.5, 0.25, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -1.0, 0.25, 0.25, 0.75, 0.25, -1.0, -0.25, 0.5, -0.5, 0.75, -0.25, -0.75, -0.5, 1.0, 0.5, ]);
    
    
    
    command_encoder1100.popDebugGroup()
    render_bundle_encoder1100.insertDebugMarker("marker");
    var shader_module1006_code = "";
    try {
        shader_module1006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1006 = await device100.createShaderModule({ label: "shader_module1006", code: shader_module1006_code })
    
    render_pass_encoder8030.insertDebugMarker("marker");
    render_pass_encoder8030.insertDebugMarker("marker");
    
    
    
    
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder8020.popDebugGroup()
}