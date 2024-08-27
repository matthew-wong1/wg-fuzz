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
    
    const array0 = new Float32Array([-1.0, 0.0, -0.25, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, 0.25, -0.25, 1.0, -0.5, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.25, -1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 0.25, -0.75, -0.25, 0.0, -0.5, -0.25, -0.25, 0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 0.5, 1.0, 0.5, 0.75, 0.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.0, -0.5, -1.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.5, -0.75, 0.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, -0.5, 1.0, 1.0, -0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.25, ]);
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([1.0, -1.0, -0.5, 0.5, -0.25, 0.75, 0.25, -1.0, -1.0, 0.75, -0.75, 1.0, 0.75, -0.5, -0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -0.75, 0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 1.0, -0.5, 0.75, 0.5, 0.0, 0.5, -0.25, -1.0, 0.75, -0.25, 1.0, -0.25, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.75, -0.25, 0.5, -0.5, 0.5, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.0, 0.25, -0.25, 1.0, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, -0.5, 1.0, 0.25, 0.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 0.5, 0.75, ]);
    const array2 = new Float32Array([-1.0, 0.5, 0.0, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, 0.0, -0.75, 0.25, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.75, 0.75, -0.75, -0.25, -0.5, 1.0, 0.25, 0.25, -0.75, -0.5, 0.25, -0.5, -0.25, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, 1.0, 0.0, 0.25, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.25, 1.0, -1.0, 1.0, 0.25, 0.0, -0.5, 0.75, 0.0, 0.75, -0.5, 0.75, -0.5, -0.25, -0.5, 1.0, 0.0, -0.25, 0.25, 0.25, 0.0, -0.5, 0.0, -0.25, 0.75, -1.0, -0.25, 1.0, ]);
    
    const array3 = new Float32Array([0.0, -0.75, -1.0, 0.0, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.75, -1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, -0.5, 0.5, -0.75, 1.0, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, -0.25, 0.5, -0.25, 0.75, -0.25, -0.5, -0.5, -0.5, 0.0, -0.75, 0.0, 0.0, 0.75, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, 0.75, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, 0.25, 1.0, -0.75, -1.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.25, -0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.75, 0.25, 0.75, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, -0.75, 0.0, -0.5, 0.25, ]);
    const array4 = new Float32Array([0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, 0.25, 0.0, 0.25, 0.75, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -0.5, -0.25, 0.75, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.5, 0.0, 0.5, 0.25, 0.0, 0.75, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, -0.25, -1.0, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.25, -0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.0, 0.75, -0.75, 0.0, 0.25, 1.0, 0.75, -0.5, 0.0, -0.25, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, -0.5, 0.75, -0.75, -0.5, 0.5, -0.5, ]);
    const array5 = new Float32Array([0.25, 0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 0.0, -1.0, -1.0, -0.75, 1.0, -1.0, -0.25, 0.5, -0.75, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, 0.75, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.0, 0.0, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.75, 0.5, 0.0, -0.75, -0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.0, 0.0, 0.5, 0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.25, -0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 1.0, -0.5, -0.5, -0.25, 0.75, -0.5, 1.0, 0.75, 1.0, 0.0, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, 1.0, -1.0, 0.5, ]);
    const array6 = new Float32Array([0.0, -1.0, 0.75, 0.75, 0.0, -0.5, 0.5, 0.5, 0.5, 0.75, -0.25, 0.75, -1.0, 0.25, -0.75, 1.0, 0.0, -1.0, -0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, 0.75, -0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 0.0, 0.0, -0.25, -0.25, -1.0, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.5, 0.5, -0.25, 0.25, -1.0, -0.75, -0.5, 0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 0.25, -0.75, -0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, ]);
    const array7 = new Float32Array([0.25, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, 0.0, 0.75, -0.75, -0.25, 0.0, 0.0, 0.5, 0.75, 1.0, 1.0, 0.5, 1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.5, -0.25, -0.5, 0.75, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, -0.75, 0.25, -0.75, 0.5, -1.0, -1.0, -0.5, 0.75, -0.5, -1.0, -0.75, 0.75, -1.0, 0.25, 0.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.25, 1.0, 0.75, 0.0, -1.0, -0.5, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -0.75, -0.75, -0.75, 0.25, -0.75, 1.0, -1.0, 1.0, 0.25, -0.25, 1.0, ]);
    
    
    
    const array8 = new Float32Array([1.0, -0.25, 0.25, -1.0, 0.0, 0.25, 1.0, -0.75, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -0.75, 0.25, -0.75, -0.25, 0.0, -0.25, 0.5, 0.75, 0.5, 0.25, 0.75, 0.5, -1.0, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, 0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 0.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.5, -0.75, -0.5, 0.5, -0.25, 0.75, -0.25, -0.5, 0.25, 1.0, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, -0.75, 1.0, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    buffer000.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.submit([]);
    const array9 = new Float32Array([-0.5, 0.25, -0.75, 0.75, -0.5, 0.75, 0.5, -0.75, 0.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, -1.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.5, -0.75, 0.5, -0.75, 0.75, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, 0.0, 0.25, -0.75, 0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 1.0, 0.75, 0.5, 1.0, 0.25, 0.5, 0.75, -0.75, 0.25, 1.0, 0.0, -0.75, -1.0, 0.5, 0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, 0.75, -0.75, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture000.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    buffer001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture001.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    command_encoder000.popDebugGroup()
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device10.pushErrorScope("out-of-memory");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    buffer004.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    buffer005.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("internal");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([1.0, 0.25, 0.0, -0.75, -1.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.75, 1.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.0, 1.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 1.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.25, -0.25, -1.0, 0.0, -0.5, 1.0, -1.0, 0.25, 0.0, -1.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.75, 0.0, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.75, -0.25, 0.5, -0.25, -1.0, -0.25, -0.25, -1.0, 0.5, 1.0, -1.0, -0.75, 0.5, 1.0, -0.25, -0.5, 1.0, 0.75, -1.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, -0.25, 1.0, 0.25, 0.75, -1.0, -1.0, ]);
    const command_buffer100 = command_encoder100.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer003.destroy()
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
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    buffer007.destroy()
    query100.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    command_encoder002.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    texture100.destroy();
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture004 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
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
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer008
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture004 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array11 = new Float32Array([0.5, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, -0.25, -1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.0, -0.75, -1.0, 0.0, 0.0, 1.0, 0.25, 0.75, 0.5, -0.75, 0.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.75, -1.0, 0.25, 0.75, -0.25, -0.75, 0.5, 0.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.0, 0.75, -1.0, 0.25, 0.25, 0.25, -1.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, 1.0, -0.75, 0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.25, 0.5, -0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, 0.75, ]);
    buffer006.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
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
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    texture004.destroy();
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer002.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query001
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    device00.queue.writeBuffer(buffer009, 0, array11, 0, array11.length);
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder002.popDebugGroup();
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device20.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    compute_pass_encoder0000.end();
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer004.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.setPipeline(render_pipeline000);
    const array12 = new Float32Array([-0.5, 0.5, 0.0, -0.75, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 0.5, 0.75, 0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.0, 0.0, 0.25, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 1.0, 0.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 0.75, 1.0, 0.5, 0.75, -0.25, 0.25, 1.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, -0.75, 0.5, 0.25, -0.25, 0.0, 0.5, -0.25, -1.0, -0.25, 1.0, -0.5, -0.75, 0.0, 0.75, 0.75, -0.5, 0.25, 0.25, -0.25, -0.25, -0.75, ]);
    render_pass_encoder0000.setPipeline(render_pipeline002);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-0.5, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, -0.5, 1.0, -0.5, -0.5, -0.25, -0.5, -0.75, 0.75, -0.25, -0.5, -0.75, -0.25, -1.0, 0.25, 0.25, -0.25, 0.25, -1.0, -0.25, 0.0, 0.25, -0.5, -1.0, 0.25, 0.5, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.25, 0.75, 1.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, 0.75, 0.75, 0.75, -0.25, 0.75, 0.5, 0.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.0, 1.0, -0.75, 0.75, 0.0, -0.75, 1.0, 1.0, -0.25, -1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 0.75, 0.0, 0.75, 0.5, -1.0, 0.5, 0.75, 0.75, -0.25, -0.25, -0.25, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    texture002.destroy();
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.beginOcclusionQuery(0)
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture005 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0021.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer0010, 0, array8, 0, array8.length);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0013, 0);
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0014, 0);
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    query100.destroy()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline002);
    render_pass_encoder0021.insertDebugMarker("marker");
    
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
    
    compute_pass_encoder0030.setPipeline(compute_pipeline0031);
    render_pass_encoder0020.beginOcclusionQuery(1)
    
    buffer0010.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0014, 0, array3, 0, array3.length);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setPipeline(render_pipeline001);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder002.clearBuffer(buffer0013);
    
    device00.queue.writeTexture({ texture: texture005 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer0014
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer0014, 0, array8, 0, array8.length);
    command_encoder000.clearBuffer(buffer0011);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture005 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer009, 0, array13, 0, array13.length);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    texture004.destroy();
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setPipeline(render_pipeline003);
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0014, 0, array7, 0, array7.length);
    render_pass_encoder0021.beginOcclusionQuery(0)
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0014, 0, array3, 0, array3.length);
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder0001.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query000.destroy()
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array11, 0, array11.length);
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    buffer009.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0021.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0014, 0, array10, 0, array10.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0021.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    compute_pass_encoder0030.popDebugGroup()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group004);
    render_pass_encoder0010.setPipeline(render_pipeline003);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer0011);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    render_pass_encoder0020.setVertexBuffer(0, buffer0014);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer0021);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group007);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0020.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0001.setVertexBuffer(0, buffer0020);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    const command_buffer001 = command_encoder001.finish();
    const command_buffer102 = command_encoder102.finish();
    device00.queue.submit([command_buffer001, ]);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0031.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0001.end();
    device10.queue.submit([command_buffer100, ]);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group009);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline0031.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0021, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    command_encoder101.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0035, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0021.end();
    command_encoder002.popDebugGroup()
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer201, ]);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer003 = command_encoder003.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0000.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer000 = command_encoder000.finish();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0029, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0036, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    device00.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0021.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0031.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device10.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
}