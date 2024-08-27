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
    
    const array0 = new Float32Array([0.25, 0.5, 0.0, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, 0.25, -0.5, 0.5, -0.75, 0.5, 1.0, -1.0, -0.5, -1.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.5, -1.0, -1.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, 0.5, -0.75, 1.0, -0.25, 0.0, -0.25, -1.0, 0.75, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, 0.25, 1.0, -1.0, -0.75, -0.75, -0.25, -0.5, -0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.5, -1.0, 1.0, -0.25, -0.75, 0.5, 0.0, -0.75, 1.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, ]);
    const array1 = new Float32Array([0.75, -0.5, -1.0, -0.75, -0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, 0.0, 0.75, -0.25, -0.75, -0.25, -0.5, -0.5, 1.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -0.25, 0.75, -1.0, -0.5, 0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 1.0, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.0, 0.5, 0.5, 0.75, 0.75, -0.75, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.75, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 0.75, -0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, ]);
    
    
    const array2 = new Float32Array([-0.5, -1.0, 1.0, -0.75, 1.0, 1.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.5, 0.25, -0.25, -1.0, -1.0, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.25, -1.0, 0.0, -0.5, -1.0, -0.75, 1.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -0.75, -1.0, -1.0, 0.25, 0.25, 0.75, 1.0, -1.0, 0.5, 0.0, 0.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, -0.75, 1.0, 0.5, 0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -0.75, 0.75, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, 0.0, 0.75, 0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, 0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, 0.5, -0.75, 0.75, 0.25, -0.75, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, 1.0, 0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -0.75, 0.0, 0.0, 0.75, -0.5, -0.25, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, 1.0, -1.0, 0.0, 0.5, 0.0, 0.75, -0.25, -0.5, 0.25, -0.75, 0.0, 0.75, -0.25, -0.25, 0.5, -1.0, 0.25, -1.0, 1.0, -1.0, 1.0, -0.75, 0.5, -1.0, 1.0, 0.5, 0.0, 0.25, -0.25, -1.0, 0.75, -0.75, 0.75, 1.0, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.5, -0.5, -0.25, -0.25, ]);
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    command_encoder100.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([0.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.0, 0.25, 0.25, -0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.0, 0.0, 0.5, 1.0, -1.0, 0.0, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, -0.75, 0.5, 0.25, -0.75, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.75, 0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -0.5, 0.25, -1.0, 0.25, 0.5, 0.25, 1.0, -1.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.25, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, 0.75, 1.0, -0.25, 1.0, -1.0, 1.0, 0.75, -0.25, -1.0, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device20.destroy();
    const array5 = new Float32Array([-0.5, 0.25, -0.25, -0.5, 0.75, -0.75, 1.0, 0.0, 0.5, -1.0, 0.75, -0.75, 0.0, 0.0, 0.5, 0.0, 0.5, 0.75, -0.25, 0.5, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 0.25, 0.5, 0.5, -0.5, -0.5, 0.5, -0.5, -0.75, 1.0, -0.25, -1.0, 0.0, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.5, 0.5, -0.5, 0.25, 0.0, 0.5, 0.75, 0.5, 0.0, 0.25, 1.0, 0.0, 1.0, 0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, 0.25, -0.75, 0.75, -1.0, 0.25, 0.5, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, -0.75, 0.0, -1.0, 1.0, -0.75, -0.75, 0.25, -0.5, -0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -0.5, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query100.destroy()
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    texture101.destroy();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.setStencilReference(1);
    const array6 = new Float32Array([-0.25, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.25, -0.25, -1.0, -0.25, 0.25, 0.75, -1.0, -0.5, 0.25, -0.25, 1.0, 0.5, -0.5, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, -0.75, -1.0, -0.5, 1.0, 0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 1.0, 0.5, -1.0, 1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.5, -1.0, 1.0, 0.0, 0.5, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.5, 1.0, -0.75, -0.5, 0.25, -0.75, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, 1.0, 1.0, -0.75, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, ]);
    const command_buffer102 = command_encoder102.finish();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.submit([command_buffer102, ]);
    query101.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder1000.popDebugGroup()
    command_encoder101.popDebugGroup()
    
    const array7 = new Float32Array([-0.75, 0.0, 0.5, 0.5, 0.25, 0.25, -0.5, 0.75, -0.5, 0.25, -1.0, 0.25, 0.5, 1.0, -0.75, 0.25, 0.25, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, -1.0, -1.0, 1.0, -0.25, 0.25, 0.5, 0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.25, -0.75, 0.75, -0.75, -0.75, 0.75, 1.0, 0.25, 0.0, 0.5, 0.25, 1.0, -0.25, 0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.25, -1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.5, -0.5, 1.0, -0.25, -1.0, -0.25, 0.0, 1.0, 0.75, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.5, ]);
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer102, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer102, 0);
    render_pass_encoder1010.executeBundles([])
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.5, 1.0, 0.75, 1.0, 0.0, 0.25, 1.0, 1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 0.75, 0.25, -0.5, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, -0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, -1.0, -0.75, 1.0, -0.75, 0.0, 1.0, 0.75, -1.0, 0.5, 0.75, 0.5, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, 0.75, -0.75, 1.0, -0.5, 0.25, -0.25, -0.5, 1.0, 0.75, 0.0, 0.0, 0.5, 0.5, ]);
    const array9 = new Float32Array([0.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.75, 0.5, -0.5, -0.75, 0.75, -0.25, -0.5, -0.5, 0.25, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.5, 0.75, 0.25, -0.75, 1.0, 0.75, 1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.25, 0.0, -1.0, -0.25, 0.25, -0.5, -1.0, -0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -0.75, -0.75, -0.75, -0.75, 0.5, -0.75, 1.0, 0.75, 0.0, -0.25, 0.5, 0.75, 0.5, -0.75, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 0.5, -1.0, -0.75, 0.5, 0.5, -0.25, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 0.25, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, -1.0, -0.75, -0.75, ]);
    
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    compute_pass_encoder1000.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    texture102.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    render_pass_encoder1010.setStencilReference(1);
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer103.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array10 = new Float32Array([0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, 1.0, -0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, 0.5, -1.0, 1.0, -0.75, 1.0, 0.5, -0.75, -1.0, -0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -1.0, -0.5, -0.5, -1.0, -0.75, 1.0, -0.5, 0.25, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.25, -0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 0.25, -0.25, -1.0, 1.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, -0.25, 0.5, -0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -0.5, 0.75, -0.75, 0.0, 1.0, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    
    buffer104.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    query000.destroy()
    texture300.destroy();
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device00.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    command_encoder103.clearBuffer(buffer102);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    query300.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer105, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer105, 0, array10, 0, array10.length);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder103.popDebugGroup()
    
    query101.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture301.destroy();
    
    const array11 = new Float32Array([1.0, 0.5, -1.0, -0.5, 1.0, 0.75, -0.25, 0.0, -0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.75, 0.25, -0.25, -0.75, 0.0, -0.25, 1.0, 0.75, 0.5, -0.75, 0.75, 0.25, 0.0, 0.0, 0.5, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, -1.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.25, 0.75, -1.0, 0.5, 0.25, -0.5, 0.5, 0.5, 1.0, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, -0.25, 1.0, -1.0, 1.0, 0.75, 1.0, 0.75, -1.0, -0.5, 1.0, 0.0, 1.0, -0.75, 0.0, -1.0, -1.0, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, -0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.5, 0.5, -1.0, -1.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.25, ]);
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder103.copyBufferToBuffer(
        buffer101,
        0,
        buffer105,
        0,
        400
    );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const command_buffer100 = command_encoder100.finish();
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer105,
        0,
        400
    );
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder103.clearBuffer(buffer102);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    device10.queue.writeBuffer(buffer105, 0, array11, 0, array11.length);
    render_pass_encoder1000.beginOcclusionQuery(0)
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder103.clearBuffer(buffer102);
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setStencilReference(1);
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder400.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    query101.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const array12 = new Float32Array([0.0, 1.0, 0.0, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.75, -0.25, -0.5, -0.5, -1.0, -0.75, -0.25, 0.5, 0.75, 0.5, -0.5, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.0, 0.0, -0.75, -0.5, 0.5, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, -0.5, 0.25, 0.75, -0.25, 0.0, 1.0, 0.25, 0.75, 1.0, 1.0, 0.5, 1.0, 0.0, 1.0, -0.5, 0.75, -0.5, -0.75, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, -0.75, 0.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 0.25, -1.0, -0.25, 0.25, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 0.75, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, ]);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device10.queue.writeBuffer(buffer105, 0, array11, 0, array11.length);
    render_bundle_encoder102.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    command_encoder103.clearBuffer(buffer105);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer105, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer105, 0, array10, 0, array10.length);
    render_pass_encoder1011.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder1010.setPipeline(render_pipeline100);
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1030.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer105, 0, array11, 0, array11.length);
    
    query301.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    render_pass_encoder1040.setStencilReference(1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder102.setPipeline(render_pipeline101);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    
    
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer300, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query101.destroy()
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    render_pass_encoder1041.popDebugGroup();
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer108.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.popDebugGroup();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    buffer400.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_pass_encoder1010.setVertexBuffer(0, buffer107);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setStencilReference(1);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.setPipeline(render_pipeline101);
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    device50.pushErrorScope("internal");
    
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout105]
    });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_pass_encoder1000.endOcclusionQuery()
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
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder1041.insertDebugMarker("marker");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1041.setPipeline(render_pipeline100);
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    query100.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    command_encoder104.pushDebugGroup("mygroupmarker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout106]
    });
    buffer106.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1010.draw(3);
    compute_pass_encoder3010.popDebugGroup()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
    render_pass_encoder1000.popDebugGroup();
    command_encoder400.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1010.popDebugGroup();
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
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

    render_pass_encoder1041.setBindGroup(0, bind_group105);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder1030.end();
    render_pass_encoder1010.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder1011.setVertexBuffer(0, buffer1016);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group107);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.draw(3);
    command_encoder103.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1041.setVertexBuffer(0, buffer1021);
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.end();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1011.end();
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.end();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    device40.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    command_encoder104.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.end();
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    device30.queue.submit([]);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    device40.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1022, 0);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.end();
    device10.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device40.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.end();
    device50.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.end();
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1040.end();
    device50.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1041.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    compute_pass_encoder3010.popDebugGroup()
}