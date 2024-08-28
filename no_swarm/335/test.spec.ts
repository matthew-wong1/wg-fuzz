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
    const array0 = new Float32Array([-0.75, -1.0, 1.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, -0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.25, -0.25, -0.25, 1.0, -0.5, -0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 1.0, 0.5, 0.25, 0.25, 1.0, 0.75, -1.0, -0.5, 1.0, 0.5, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, 1.0, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.0, -0.75, -1.0, 0.5, -0.5, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 1.0, 0.75, 0.25, 0.25, 1.0, -1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, ]);
    
    
    const array1 = new Float32Array([0.5, 1.0, 0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -1.0, 0.25, -1.0, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, 0.75, 0.5, 0.75, 0.75, 1.0, 0.5, -1.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -1.0, -1.0, -0.5, -0.75, 0.0, 1.0, -0.75, -0.25, 0.25, 0.75, -1.0, 0.0, 0.5, -0.5, -1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.5, 0.75, 0.25, -0.25, 0.75, 0.5, -0.25, 0.25, -1.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.75, -0.5, 0.0, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, ]);
    
    const array2 = new Float32Array([0.75, -0.5, 0.5, 0.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.0, -0.5, -1.0, -1.0, -0.25, 0.75, 0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.25, 0.75, 0.25, 0.75, 0.5, 0.5, 0.5, -1.0, 1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 0.5, -0.5, -0.25, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array3 = new Float32Array([0.75, -0.25, 0.5, 0.75, 0.5, 0.75, -0.75, -0.75, -0.75, 0.5, -0.75, 0.5, 0.75, 0.75, -0.5, -1.0, 1.0, -1.0, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.75, 0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.5, 0.75, -0.75, 0.25, 0.25, -1.0, -0.5, 0.75, 0.0, -0.75, -0.25, -1.0, 0.75, -0.25, 0.5, -0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 0.5, 0.25, -1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.25, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, 1.0, 1.0, -0.25, 0.0, 0.5, 0.25, -0.5, -0.75, 0.5, ]);
    device00.destroy();
    
    
    const array4 = new Float32Array([-0.5, -0.25, -1.0, -0.75, -0.5, 0.0, 0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 1.0, 0.25, 0.5, 0.5, 0.25, 0.0, -0.75, 0.0, 0.75, 1.0, 0.25, -0.75, 0.0, 0.75, -0.25, -0.25, 0.75, -0.75, -1.0, 0.0, 0.25, 1.0, 0.0, -1.0, 1.0, -1.0, 0.75, -1.0, -0.25, 0.0, 1.0, -0.75, 0.75, -1.0, -0.75, -1.0, 1.0, 1.0, -0.5, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, 1.0, 0.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, 0.0, -1.0, 0.0, -1.0, -1.0, -0.5, 1.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.75, -0.5, 0.5, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.0, 0.0, 1.0, 0.0, -0.25, -1.0, ]);
    const array5 = new Float32Array([0.0, -1.0, 0.5, -0.75, 0.5, -0.5, -0.5, -0.5, 0.75, 0.75, -0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -0.25, 1.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.75, 1.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 1.0, -0.5, 0.75, -1.0, 0.0, -1.0, -0.5, 1.0, -0.25, 1.0, 0.0, -0.75, 1.0, -0.5, 1.0, -0.5, -0.75, -0.5, 0.75, -0.25, -0.25, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, 0.5, -0.5, 0.25, -0.5, -0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, -0.5, 1.0, 0.25, 0.5, -0.5, 0.0, -0.5, -0.5, -0.25, 0.75, -0.5, 1.0, 1.0, 0.5, 0.75, ]);
    
    const array6 = new Float32Array([0.25, -0.75, -0.75, -0.75, -0.5, 0.0, 0.25, -0.5, -0.25, 0.0, -0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -0.75, -0.25, -0.25, 0.0, -0.75, 0.75, 1.0, -0.75, 0.25, 0.25, -0.5, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -0.25, 0.75, -0.25, 0.25, -0.75, -0.75, 0.75, 0.5, -0.75, 0.75, 0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 0.25, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 1.0, 0.0, -0.5, 0.0, 0.75, 0.0, 0.25, 1.0, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.75, 0.25, 0.0, 0.5, -0.75, -1.0, 0.75, -0.25, 1.0, 0.5, -0.25, -0.75, 1.0, -1.0, -0.75, 0.0, -0.5, -0.75, 0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array7 = new Float32Array([1.0, 1.0, 0.5, -1.0, -1.0, -0.25, 0.75, 1.0, -0.25, 0.75, -0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 0.25, -0.25, 0.5, 0.25, -0.75, 0.75, 0.0, -0.5, 0.75, -0.25, 0.5, 0.25, -1.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.0, -0.5, 1.0, 0.5, -0.25, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 0.75, -1.0, -0.75, 0.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.0, -1.0, 0.5, -0.25, -0.25, 1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, 0.75, -1.0, 0.5, 0.25, 1.0, 0.25, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("validation");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    texture101.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer101.destroy()
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array8 = new Float32Array([0.25, 0.5, 0.25, 0.5, -0.25, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 1.0, -0.75, 0.75, 1.0, -0.75, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.5, 0.0, 0.25, -0.75, -0.75, -1.0, -0.25, 0.75, 1.0, -0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 0.0, -0.5, 0.5, 0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, 0.25, 0.0, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 1.0, -0.25, -0.75, -1.0, 0.75, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, 0.25, 0.75, 0.5, -0.5, -0.75, 0.5, 0.25, -0.25, 0.25, 0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query100.destroy()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.popDebugGroup();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query100.destroy()
    query102.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1010.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    texture102.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    buffer103.destroy()
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    render_pass_encoder1030.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder102.popDebugGroup();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    query101.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device20.destroy();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    query102.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    texture402.destroy();
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    buffer106.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    buffer104.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1040.setPipeline(render_pipeline103);
    compute_pass_encoder1000.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    buffer105.destroy()
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    buffer102.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer107.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
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
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query103.destroy()
    render_bundle_encoder101.drawIndirect(buffer102, 0);
    render_pass_encoder1020.popDebugGroup();
    
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    render_pass_encoder1040.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    buffer300.destroy()
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer400 = command_encoder400.finish();
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1011.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer302.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture106.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder1050.setPipeline(render_pipeline100);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder101.finish();
    texture104.destroy();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    query300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    texture403.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer301.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    
    query103.destroy()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    texture400.destroy();
    render_pass_encoder1030.setVertexBuffer(0, buffer101);
    
    
    
    device40.queue.submit([command_buffer400, ]);
    
    buffer108.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    texture100.destroy();
    
    buffer1012.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.pushErrorScope("validation");
    query103.destroy()
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    
    buffer109.destroy()
    
    
    
    query300.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer1015.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array9 = new Float32Array([0.0, 0.0, -0.5, 0.75, 0.5, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, 0.25, 0.0, -0.75, 0.25, -0.5, 0.25, -0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 0.75, 0.0, -1.0, 0.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, -1.0, -0.75, 1.0, 0.0, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, -1.0, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, -1.0, -0.5, -0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.75, -0.25, 0.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.0, -0.5, -0.75, 0.75, ]);
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer1017.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.drawIndirect(buffer102, 0);
    compute_pass_encoder1000.popDebugGroup()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    buffer1010.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer1019, 0, array1, 0, array1.length);
    render_pass_encoder1030.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder1030.draw(3);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    render_pass_encoder1050.setVertexBuffer(0, buffer101);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1030.popDebugGroup();
    command_encoder102.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder3000.end();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
}