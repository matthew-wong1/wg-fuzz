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
    
    
    
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.5, -0.25, 0.0, 0.75, 0.5, -0.25, 0.25, -0.75, -1.0, 1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, -1.0, -1.0, -0.5, -0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 0.75, 0.75, -0.25, 0.75, -0.5, -0.75, -0.75, 1.0, 0.25, -0.25, 0.25, -0.75, 0.0, 0.75, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.5, -0.25, -1.0, 0.25, -0.75, 0.5, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 1.0, -0.5, 1.0, 0.5, 1.0, 1.0, 0.0, ]);
    const array1 = new Float32Array([0.5, 0.5, 0.25, -0.25, 0.75, -0.5, 0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 0.75, 0.25, -0.75, 1.0, -0.25, -0.25, -0.5, -1.0, -0.25, 1.0, -0.75, 0.0, 0.75, 0.0, 0.5, -0.75, 0.0, -1.0, -0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 1.0, -0.25, 0.25, -0.75, 0.0, -0.5, 1.0, 0.25, -0.75, -0.25, 0.25, -1.0, -1.0, -1.0, 0.0, -0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, 0.25, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, -1.0, -0.75, -0.25, 1.0, -0.25, 0.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, -0.5, 0.25, -0.25, -0.25, -0.75, 0.0, 0.5, -0.75, 0.75, ]);
    const array2 = new Float32Array([1.0, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, 0.5, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, -1.0, 0.5, 0.25, 0.75, -0.25, -0.5, 0.0, 0.0, 1.0, -0.25, 0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -0.25, 0.0, 1.0, -1.0, 0.25, -0.75, 0.0, 0.25, -0.5, -0.5, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, 0.75, -0.5, -0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.75, 0.0, 0.75, 0.75, -0.75, 0.75, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, ]);
    const array3 = new Float32Array([0.5, 0.5, -0.5, 0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, -0.5, -0.25, -0.75, -0.75, -0.75, -1.0, 0.75, 0.75, -0.5, 0.0, -0.25, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, 1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.75, -0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.5, 1.0, 1.0, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, -1.0, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, 0.0, -1.0, 0.0, 1.0, -1.0, 0.0, 0.5, 0.75, 0.5, -0.25, 1.0, -0.5, -1.0, 1.0, -0.75, -1.0, -0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.75, 0.0, -0.25, 0.0, 0.75, 0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, -0.5, -0.5, -0.25, 0.5, 0.5, 0.75, 0.75, -0.75, -0.5, 0.75, 0.75, 0.25, -0.5, 0.25, -0.5, 1.0, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, 1.0, 0.0, 0.25, 0.25, -0.5, -0.25, -1.0, -1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -0.25, 0.75, -0.25, 0.0, -0.5, 0.75, -1.0, 0.75, -1.0, 0.25, 0.25, -1.0, 0.25, -0.25, -1.0, 0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 1.0, -1.0, -1.0, -0.5, -0.75, -0.25, -0.75, -0.25, -0.75, -0.75, -0.5, -0.25, 0.0, 0.75, -0.25, -0.75, ]);
    const array5 = new Float32Array([0.5, 0.25, 0.5, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -0.5, 0.0, 0.25, -0.5, -0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.25, -1.0, 0.75, -0.5, -1.0, 0.25, 0.75, 0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, -0.75, 1.0, -0.5, 0.25, -0.5, 0.75, -1.0, 0.5, 0.5, -0.75, -0.25, 0.25, -0.25, -0.25, 0.25, 0.25, -0.25, 0.5, 0.75, -0.25, -0.5, -0.5, -0.25, -0.25, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array6 = new Float32Array([0.5, -1.0, 0.5, -0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 1.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.5, 0.25, 1.0, 0.0, -1.0, 0.0, 1.0, 0.0, 0.25, 0.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.75, 1.0, 1.0, -1.0, 0.25, 0.75, 0.75, 1.0, -0.75, 0.25, 0.5, -1.0, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, 0.0, -0.75, -1.0, -0.25, -0.25, -1.0, 1.0, -1.0, -0.5, -0.25, -1.0, 1.0, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, 1.0, -0.25, 1.0, -0.25, -0.25, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.5, 1.0, -0.75, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, 0.75, -1.0, 0.25, 0.25, 1.0, -0.25, -0.25, ]);
    
    const array7 = new Float32Array([-1.0, -0.5, 0.5, 0.25, -0.75, -0.5, 0.0, -0.75, 1.0, 0.75, 0.25, -0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 0.75, 0.5, 1.0, 0.25, -0.75, -0.75, 1.0, 0.5, 1.0, -0.75, 0.0, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.75, -1.0, 0.25, -0.25, -0.5, 0.5, 0.5, 0.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, 0.5, -0.5, 0.25, 1.0, 0.25, 0.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -0.25, 0.25, 1.0, -0.25, 0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.5, -1.0, -0.75, -1.0, 0.75, 0.75, 1.0, -1.0, -0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.25, -0.5, ]);
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
    buffer100.destroy()
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
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    command_encoder100.insertDebugMarker("mymarker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array8 = new Float32Array([1.0, -0.25, -0.5, 1.0, 0.75, 0.25, 0.75, 0.25, 1.0, 0.5, -0.75, -0.25, -1.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.5, -1.0, 0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.75, -0.25, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, -1.0, -0.75, -0.25, 0.75, 0.25, 0.5, 0.25, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, 0.25, -0.5, -0.25, 0.0, 0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 0.5, -0.25, -0.75, 0.75, 0.25, 0.5, 0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 0.25, 0.0, -0.5, 0.25, 1.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder100.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    device20.pushErrorScope("out-of-memory");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    texture200.destroy();
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device30.destroy();
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([-0.75, 0.25, 0.5, 0.0, 0.25, 1.0, 0.75, -0.25, -0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.5, 1.0, -1.0, -1.0, -0.25, -0.5, 0.5, 0.25, 0.75, 0.75, 0.75, 0.25, 0.25, 0.25, 0.5, -0.5, 0.75, -1.0, -0.5, 0.5, 1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 0.0, 1.0, 0.75, -1.0, 1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, -1.0, 1.0, -0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, 0.75, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.5, -1.0, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, 0.5, 0.0, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.5, -0.25, -1.0, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer200.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    buffer202.destroy()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder201.clearBuffer(buffer201);
    const array10 = new Float32Array([0.25, 0.0, 0.5, -0.75, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, 0.0, 0.25, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, -0.75, 0.25, 1.0, -0.25, 1.0, 0.0, 0.25, 0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 0.75, -0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -0.5, -0.25, 0.0, -0.75, 0.25, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.0, -0.5, 0.25, -0.5, -0.5, 0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.0, -1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, -0.25, -0.5, 0.75, -0.25, 1.0, -0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, 0.5, -0.5, -0.75, -0.25, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, ]);
    compute_pass_encoder2000.popDebugGroup()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query100.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder2010.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query500.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    texture100.destroy();
    
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.endOcclusionQuery()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query501.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer203.destroy()
    query501.destroy()
    compute_pass_encoder2000.popDebugGroup()
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    compute_pass_encoder2000.setPipeline(compute_pipeline207);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture501.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query302.destroy()
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    query201.destroy()
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2010.popDebugGroup();
    
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    query200.destroy()
    
    compute_pass_encoder2020.setPipeline(compute_pipeline2010);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    texture500.destroy();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline2010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    
    render_bundle_encoder500.popDebugGroup();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    device20.queue.writeBuffer(buffer208, 0, array2, 0, array2.length);
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const array11 = new Float32Array([0.75, -0.25, 0.25, 0.0, -0.75, 1.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.75, -0.5, 0.75, 0.0, -0.5, -0.75, 0.75, -0.25, 0.25, 0.5, 0.5, 0.0, 0.5, -1.0, 0.0, 0.75, 0.0, 1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.25, -0.5, -0.75, -0.75, -0.25, 0.75, 1.0, -0.5, -0.25, 0.0, 0.75, 1.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, -0.25, 0.25, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.25, 0.25, -0.75, 0.5, -0.75, -0.5, 0.25, 0.75, 0.25, 0.75, -0.25, 0.0, -0.5, 0.0, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.75, -1.0, ]);
    buffer206.destroy()
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    command_encoder203.copyBufferToBuffer(
        buffer200,
        0,
        buffer208,
        0,
        400
    );
    buffer501.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    compute_pass_encoder2020.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.executeBundles([])
    
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder203.copyBufferToBuffer(
        buffer201,
        0,
        buffer205,
        0,
        400
    );
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    command_encoder204.copyBufferToBuffer(
        buffer201,
        0,
        buffer208,
        0,
        400
    );
    device20.queue.writeBuffer(buffer208, 0, array11, 0, array11.length);
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    compute_pass_encoder5010.popDebugGroup()
    
    command_encoder204.copyBufferToBuffer(
        buffer201,
        0,
        buffer208,
        0,
        400
    );
    buffer300.destroy()
    const command_buffer202 = command_encoder202.finish();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer205.destroy()
    render_pass_encoder5000.setPipeline(render_pipeline500);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module2012,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    command_encoder203.copyTextureToTexture(
        {
            texture: texture204
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    render_pass_encoder2010.setStencilReference(1);
    device20.queue.writeBuffer(buffer208, 0, array11, 0, array11.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.setPipeline(compute_pipeline202);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    device20.queue.writeBuffer(buffer208, 0, array10, 0, array10.length);
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    
    query501.destroy()
    query501.destroy()
    device20.queue.writeBuffer(buffer208, 0, array10, 0, array10.length);
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    texture500.destroy();
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    device40.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query203
    });
    render_bundle_encoder200.popDebugGroup();
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer204.destroy()
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer208, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    device60.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module2015,
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
            module: shader_module2015,
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
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer208
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder5001.popDebugGroup();
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.queue.writeTexture({ texture: texture205 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2041.setPipeline(render_pipeline203);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_pass_encoder2040.setPipeline(render_pipeline202);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    device50.queue.submit([]);
    render_pass_encoder5001.endOcclusionQuery()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    render_pass_encoder2030.setPipeline(render_pipeline202);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_pass_encoder5001.setPipeline(render_pipeline501);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2030.setVertexBuffer(0, buffer207);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer503, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2013, 0);
    compute_pass_encoder5000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2014, 0);
    const command_buffer200 = command_encoder200.finish();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    device50.queue.submit([]);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group205);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group206);
    render_pass_encoder2040.setVertexBuffer(0, buffer208);
    compute_pass_encoder2020.end();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group501);
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder5001.setVertexBuffer(0, buffer505);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder5001.draw(3);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2040.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.setVertexBuffer(0, buffer2020);
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    render_pass_encoder5001.drawIndirect(buffer505, 0);
    render_pass_encoder5000.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2040.end();
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer200);
    device50.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.setVertexBuffer(0, buffer2023);
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder2041.end();
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2011.end();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder5001.drawIndirect(buffer504, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5001.end();
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5001.setIndexBuffer(buffer504, "uint16");
}