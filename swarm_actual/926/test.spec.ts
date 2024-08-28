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
    
    const array0 = new Float32Array([-0.25, 0.5, 0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, -1.0, 1.0, 0.5, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, 0.0, 0.0, -0.25, -0.5, 1.0, -0.25, -0.25, -0.75, 1.0, 0.0, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -0.5, -0.5, -0.5, 0.25, 0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 1.0, -0.25, -0.25, 0.5, -0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -1.0, -1.0, 0.5, 0.75, -1.0, -0.75, 0.75, 0.75, 0.75, 0.0, 1.0, -0.5, 0.75, 1.0, 0.25, -1.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.25, 0.25, -0.25, 0.5, -0.5, 0.0, -0.75, -0.25, 0.0, -0.75, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, 0.25, -1.0, 0.0, -0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, 0.5, -1.0, 0.25, -0.5, 1.0, 0.75, -0.75, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, -0.25, -1.0, 0.25, -0.25, 0.25, 1.0, -0.75, -1.0, 0.75, -1.0, 1.0, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.25, -1.0, 0.0, 0.25, 1.0, 0.75, -0.75, 1.0, -0.75, 0.5, -1.0, 0.75, 0.75, 1.0, -0.75, 0.75, -1.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 1.0, 0.25, 1.0, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.5, -0.75, -0.75, 0.5, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    command_encoder000.insertDebugMarker("mymarker");
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const array2 = new Float32Array([-0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 0.5, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.25, 0.5, -0.5, -0.5, -0.75, 1.0, 0.75, 0.5, -0.25, -1.0, 0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, 0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 0.75, 1.0, -0.75, 0.75, -0.25, -0.25, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.75, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.75, -0.5, 0.25, 0.75, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, 0.75, -0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_buffer103 = command_encoder103.finish();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([1.0, 0.5, 0.0, -0.25, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.25, 1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, 0.25, 0.75, -0.5, 0.25, 0.0, 0.5, 0.0, 0.0, 0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, 0.75, 0.25, 1.0, 0.75, 0.0, 0.0, -0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.0, 0.25, 0.0, -0.25, -1.0, 0.5, -0.5, -1.0, 0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.5, 1.0, -0.5, 0.75, 0.0, -0.75, -0.25, -0.75, 1.0, -0.5, 0.75, -1.0, -0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder002.popDebugGroup()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder104.insertDebugMarker("mymarker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array4 = new Float32Array([-0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 0.0, -0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.25, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 0.5, 0.0, 0.5, -0.75, 1.0, -0.5, 0.75, -0.75, 0.5, 0.25, 0.5, -0.75, -0.25, 0.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.0, 1.0, -1.0, 0.5, -0.25, -1.0, 1.0, -0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 1.0, 0.75, -0.5, -0.25, 0.5, -0.75, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.25, 0.75, 0.25, 0.25, 0.75, -1.0, -1.0, -0.75, 0.25, 0.0, -1.0, ]);
    const texture_view1062 = texture106.createView({ label: "texture_view1062" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer105 = command_encoder105.finish();
    
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_buffer104 = command_encoder104.finish();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    command_encoder106.insertDebugMarker("mymarker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const array5 = new Float32Array([-1.0, -0.5, -0.75, 1.0, 0.75, -1.0, -0.5, -1.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.25, -0.25, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -0.75, -1.0, 0.75, 0.75, -0.75, -0.75, -0.75, -1.0, 0.0, -0.25, -0.25, 0.0, -1.0, 0.25, 1.0, -0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 0.75, -0.5, -0.75, 0.0, 0.25, -0.5, -0.75, 0.5, 0.5, 0.5, 0.5, -0.25, 0.75, -0.75, 0.5, 0.0, -0.75, -0.5, -0.75, 0.0, -1.0, -0.5, 1.0, -0.75, -0.5, 0.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 0.5, ]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder107.pushDebugGroup("mygroupmarker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view1007 = texture100.createView({ label: "texture_view1007" });
    const texture_view1008 = texture100.createView({ label: "texture_view1008" });
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    command_encoder108.pushDebugGroup("mygroupmarker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    command_encoder002.insertDebugMarker("mymarker");
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder109.insertDebugMarker("mymarker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_buffer109 = command_encoder109.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const array6 = new Float32Array([1.0, -0.75, -0.25, -1.0, -0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.0, -0.5, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, -0.75, -0.75, -0.5, 0.25, 0.75, -0.25, 1.0, -1.0, 0.75, 1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.75, 0.25, 1.0, -0.5, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, 0.5, -1.0, 1.0, -1.0, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, 0.5, 0.0, -0.75, -0.5, -0.5, 0.75, -0.75, -1.0, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, 0.5, -0.5, ]);
    
    const texture_view1063 = texture106.createView({ label: "texture_view1063" });
    
    compute_pass_encoder1080.insertDebugMarker("marker")
    command_encoder200.popDebugGroup()
    command_encoder106.pushDebugGroup("mygroupmarker")
    const texture_view1009 = texture100.createView({ label: "texture_view1009" });
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view10010 = texture100.createView({ label: "texture_view10010" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1080.insertDebugMarker("marker")
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer004 = command_encoder004.finish();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer200 = command_encoder200.finish();
    
    compute_pass_encoder1070.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture_view1053 = texture105.createView({ label: "texture_view1053" });
    
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view1064 = texture106.createView({ label: "texture_view1064" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder106.popDebugGroup()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const array7 = new Float32Array([-0.75, 0.75, -0.75, 0.25, -0.75, 0.0, -0.5, 0.25, 0.0, -0.75, -0.25, -0.5, -0.25, 0.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.25, -0.25, 0.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.75, 1.0, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.75, 0.25, 0.0, 1.0, 0.5, -0.5, 0.75, 0.75, 0.0, 0.25, 0.5, -0.75, 0.75, 0.25, -0.5, -0.25, 1.0, -0.75, -0.5, -0.5, -0.5, 0.5, 0.25, -0.5, 0.25, -0.25, 0.5, 0.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.75, 0.0, 1.0, -0.25, -0.5, 0.0, -0.75, 0.0, 0.75, -0.75, 0.5, -0.75, 0.75, 0.25, -0.75, 0.5, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([0.75, -0.25, -0.75, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 0.25, 0.0, 0.75, 1.0, -0.25, 0.25, 0.0, 1.0, 0.25, 0.25, 1.0, 0.0, 0.0, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, 0.5, 0.75, 0.0, 0.25, 0.0, 0.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder106.pushDebugGroup("mygroupmarker")
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer005 = command_encoder005.finish();
    command_encoder204.insertDebugMarker("mymarker");
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture_view0016 = texture001.createView({ label: "texture_view0016" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const texture_view0007 = texture000.createView({ label: "texture_view0007" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
    command_encoder203.insertDebugMarker("mymarker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder106.popDebugGroup()
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    const texture_view1054 = texture105.createView({ label: "texture_view1054" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_buffer400 = command_encoder400.finish();
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1018 = texture101.createView({ label: "texture_view1018" });
    const texture_view1065 = texture106.createView({ label: "texture_view1065" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer205 = command_encoder205.finish();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder203.popDebugGroup()
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder401.insertDebugMarker("mymarker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1055 = texture105.createView({ label: "texture_view1055" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder402.insertDebugMarker("mymarker");
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture_view1056 = texture105.createView({ label: "texture_view1056" });
    command_encoder203.insertDebugMarker("mymarker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    command_encoder401.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view10110 = texture1011.createView({ label: "texture_view10110" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder401.insertDebugMarker("mymarker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view0008 = texture000.createView({ label: "texture_view0008" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    compute_pass_encoder1080.insertDebugMarker("marker")
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1060.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_bundle_encoder600.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    const texture_view1057 = texture105.createView({ label: "texture_view1057" });
    
    command_encoder1010.insertDebugMarker("mymarker");
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view1026 = texture102.createView({ label: "texture_view1026" });
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    command_encoder403.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1044 = texture104.createView({ label: "texture_view1044" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_buffer300 = command_encoder300.finish();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    compute_pass_encoder1070.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture_view10111 = texture1011.createView({ label: "texture_view10111" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    command_encoder008.pushDebugGroup("mygroupmarker")
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture_view10100 = texture1010.createView({ label: "texture_view10100" });
    
    
    command_encoder1010.insertDebugMarker("mymarker");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const texture_view10101 = texture1010.createView({ label: "texture_view10101" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view1066 = texture106.createView({ label: "texture_view1066" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer1010 = command_encoder1010.finish();
    const command_buffer500 = command_encoder500.finish();
    command_encoder401.popDebugGroup()
    command_encoder008.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    command_encoder403.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    const command_buffer008 = command_encoder008.finish();
    const command_buffer301 = command_encoder301.finish();
}