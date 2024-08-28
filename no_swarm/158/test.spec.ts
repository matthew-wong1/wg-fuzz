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
    
    const array0 = new Float32Array([1.0, 1.0, -1.0, -0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -0.75, -0.25, 0.5, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, -0.75, -1.0, 0.0, -0.75, 0.0, 0.5, 1.0, 0.5, 1.0, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, -0.5, 0.25, 0.25, 0.25, -0.5, 1.0, 0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.25, -0.5, -0.5, 0.0, -0.25, -1.0, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 0.5, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -0.25, 0.25, -0.25, 0.25, 0.5, 0.0, -0.5, -1.0, -0.5, -0.25, -0.75, 0.5, 0.5, -0.75, 1.0, 0.25, -0.5, -0.25, 0.25, -0.75, ]);
    const array1 = new Float32Array([0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 1.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 0.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, -0.5, -0.25, -0.5, -0.5, -0.75, 0.0, 1.0, -1.0, -0.5, -1.0, 1.0, -0.25, 0.25, -0.25, -1.0, 0.75, -0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 1.0, -0.75, 0.25, 0.5, -0.5, 0.25, 0.25, 0.75, 0.25, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, -0.25, -0.5, 0.5, -0.25, 0.25, -0.75, ]);
    
    
    const array2 = new Float32Array([0.0, 0.25, -1.0, -0.5, -0.5, 1.0, 0.75, 0.0, -1.0, 0.5, 0.5, -0.25, -0.5, -1.0, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, -0.5, 0.0, -0.5, -0.25, 0.75, -1.0, 0.25, 0.5, -1.0, 0.5, 0.5, 0.25, 1.0, -1.0, 0.25, 1.0, 1.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, 0.0, 0.0, 0.5, 1.0, 0.75, 0.25, -0.75, -1.0, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, -0.5, 1.0, 0.25, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -1.0, -0.75, 0.75, -0.5, -0.5, -1.0, 1.0, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, ]);
    const array3 = new Float32Array([-0.75, 0.75, 1.0, 0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, 0.75, -1.0, 0.0, 0.75, 1.0, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, -0.75, 1.0, 0.25, 0.5, 1.0, -1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -0.75, 1.0, -0.25, 0.75, 0.75, -0.75, -1.0, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, -0.25, 0.25, -1.0, 1.0, 0.25, 0.5, 0.5, -1.0, ]);
    
    const array4 = new Float32Array([1.0, -1.0, 0.25, 0.75, -0.5, -0.75, 1.0, 1.0, -0.25, 1.0, 0.5, 0.25, 1.0, 0.75, 0.25, -0.75, 1.0, 1.0, 0.0, -0.75, 0.0, 0.5, -1.0, -0.25, -0.25, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.5, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, -1.0, 0.0, 0.75, 0.75, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 0.0, 1.0, 1.0, -0.75, -0.5, 0.25, 0.0, -0.5, -0.25, -1.0, 0.5, 0.0, -0.75, -0.5, -0.75, -0.5, 0.25, 0.5, 1.0, -0.25, 1.0, -0.75, 1.0, 1.0, 0.25, 1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.25, -0.25, -0.25, 0.75, ]);
    
    const array5 = new Float32Array([0.5, -0.75, 0.0, -0.5, 0.5, 0.75, -0.5, 1.0, -0.25, 0.5, 0.25, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, 0.0, -0.5, -0.5, -0.5, -0.25, 0.75, 0.25, -0.75, -1.0, -0.5, 0.5, 0.75, -0.25, 0.75, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, 0.5, -0.5, -1.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, 1.0, 1.0, -0.5, 0.25, 0.5, -0.25, -0.75, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 0.75, 0.75, -0.25, 1.0, 0.5, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 1.0, 1.0, -0.25, 0.0, -0.25, 0.0, 0.25, -0.5, -0.25, -0.75, 0.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array6 = new Float32Array([-0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.75, -0.25, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.75, -0.25, 0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.5, -0.25, -0.5, -0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -0.5, -0.25, 0.25, -0.75, 0.0, -0.75, 1.0, -0.25, 0.25, 1.0, 0.0, -0.25, -0.25, 0.5, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, -0.25, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder000.popDebugGroup()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder001.popDebugGroup();
    buffer101.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer100.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder100.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -0.5, -0.75, 0.25, 0.25, 0.5, 0.5, 0.25, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -1.0, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, -0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 0.75, -1.0, 0.25, 1.0, 0.25, 0.25, -0.75, -0.25, -1.0, 0.0, -0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, 0.75, 0.25, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.25, -0.5, -1.0, 0.25, 1.0, -0.5, 0.25, 0.75, -0.25, 0.5, 1.0, -0.25, 0.0, -0.25, -0.25, 0.75, 0.5, -1.0, -0.75, ]);
    
    texture100.destroy();
    render_bundle_encoder100.popDebugGroup();
    
    device10.pushErrorScope("internal");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder101.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query002.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query002.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture103.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder001.popDebugGroup();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer000.destroy()
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder101.insertDebugMarker("marker");
    texture001.destroy();
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query001.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    texture104.destroy();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    buffer301.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture101.destroy();
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    const command_buffer300 = command_encoder300.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    query300.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture105.destroy();
    compute_pass_encoder1020.popDebugGroup()
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    command_encoder400.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder400.popDebugGroup()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture000.destroy();
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query300.destroy()
    query301.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    buffer001.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline002);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device40.pushErrorScope("internal");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module006,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module006,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module003,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    buffer103.destroy()
    buffer003.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.popDebugGroup();
    
    command_encoder402.insertDebugMarker("mymarker");
    
    query301.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder403.pushDebugGroup("mygroupmarker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module003,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer004.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1030.executeBundles([])
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    buffer002.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer601.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("internal");
    buffer005.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_buffer301 = command_encoder301.finish();
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    buffer303.destroy()
    device50.pushErrorScope("internal");
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.popDebugGroup()
    query200.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.popDebugGroup()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    query301.destroy()
    buffer300.destroy()
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout203]
    });
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.popDebugGroup()
    texture400.destroy();
    render_bundle_encoder101.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    command_encoder401.insertDebugMarker("mymarker");
    texture500.destroy();
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    command_encoder403.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    command_encoder403.clearBuffer(buffer401);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer009, 0);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_bundle_encoder200.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group003);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer104.destroy()
    device20.pushErrorScope("validation");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline003);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query600.destroy()
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const command_buffer201 = command_encoder201.finish();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0013, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.popDebugGroup()
    compute_pass_encoder0010.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder403.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1010, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1050.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0014, 0);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer401, ]);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    compute_pass_encoder0000.end();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.end();
    device50.queue.submit([command_buffer500, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer001 = command_encoder001.finish();
    command_encoder101.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    const command_buffer101 = command_encoder101.finish();
    const command_buffer403 = command_encoder403.finish();
    device00.queue.submit([command_buffer001, ]);
    device40.queue.submit([command_buffer403, ]);
    device10.queue.submit([command_buffer101, ]);
}