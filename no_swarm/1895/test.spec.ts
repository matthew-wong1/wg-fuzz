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
    
    const array0 = new Float32Array([-0.25, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.5, -0.75, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 0.5, 0.75, -1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, -1.0, -0.5, -0.25, 0.5, 0.0, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 1.0, -0.75, 0.5, -0.75, -0.75, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, -0.25, -0.75, 0.5, -0.5, 0.75, 1.0, 0.5, 0.25, 1.0, 0.25, 0.25, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, 0.25, -0.75, -1.0, -0.5, 0.5, -0.5, 0.25, 0.75, ]);
    
    
    const array1 = new Float32Array([0.5, -0.5, 0.25, -0.75, 0.5, -1.0, 1.0, -0.5, 1.0, -0.25, -0.75, -1.0, 0.0, 0.25, 0.75, -1.0, 0.5, 0.0, -1.0, -0.75, 0.0, 1.0, -1.0, 0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, 0.75, -0.75, -0.25, -0.5, -0.75, 0.5, 0.5, -0.5, 1.0, 1.0, 0.0, 0.25, -0.75, 0.5, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, 0.5, 0.25, -0.25, -1.0, 1.0, -0.75, 0.0, -0.75, -0.75, 0.25, 0.5, -0.25, 0.75, 0.25, 0.5, 0.0, -1.0, -0.5, 0.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.5, -0.75, -0.5, -0.25, -0.75, -1.0, -0.5, -0.75, 0.5, -0.5, -1.0, 1.0, -0.75, 0.75, 0.75, -0.25, -1.0, 0.0, -0.75, 0.25, 0.0, ]);
    const array2 = new Float32Array([1.0, 0.25, -0.5, 0.0, 0.25, 0.5, -0.75, 0.0, -1.0, -0.75, 0.25, -1.0, -0.25, 0.25, -1.0, 0.75, -0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -0.25, -0.25, 0.25, 0.5, 0.0, 0.75, 0.0, 0.75, 0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, -0.5, 0.5, 0.5, 0.25, 0.25, 0.75, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, 1.0, 1.0, 1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.75, 0.5, -0.75, ]);
    
    const array3 = new Float32Array([0.75, 0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 1.0, -0.25, -0.75, -0.5, -0.75, -0.75, -0.75, 0.0, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, -0.5, -0.75, 0.5, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, -0.25, -1.0, -0.5, 0.0, 0.25, 1.0, 1.0, 0.75, 0.75, 0.75, -1.0, 1.0, 0.0, -0.5, -0.5, -1.0, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.0, -0.75, 1.0, -0.5, -1.0, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.0, 1.0, 1.0, -0.5, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, ]);
    
    
    const array4 = new Float32Array([-1.0, -0.5, -0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 1.0, 1.0, 0.5, 0.0, -0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, 0.75, 1.0, 0.75, 0.75, -0.75, 0.5, -0.5, 0.75, -0.5, 0.0, -0.75, 0.75, -1.0, 0.5, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, -0.25, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 0.5, 1.0, 0.0, -1.0, 0.0, 0.25, 0.0, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, 0.0, 1.0, -0.75, 1.0, 0.0, 0.5, -0.5, -0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.5, ]);
    const array5 = new Float32Array([0.0, 1.0, -0.75, 0.75, 0.0, -0.25, -0.5, -0.5, -1.0, 0.5, -0.5, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, 0.75, -0.75, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.75, -0.25, 0.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, -0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 0.0, 0.75, 1.0, -0.5, 0.5, -1.0, -0.25, -0.25, -0.75, 0.5, 0.5, 0.0, 1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array6 = new Float32Array([1.0, 1.0, -0.5, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, -0.25, -0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.75, 1.0, -0.75, 0.5, 0.75, 0.5, 0.75, 0.0, 0.0, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 1.0, -0.25, 0.0, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, -1.0, -0.5, 0.0, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, 1.0, 0.5, -1.0, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.5, -0.5, -0.5, -1.0, ]);
    
    
    
    const array7 = new Float32Array([-0.5, 1.0, 1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.5, 0.25, -1.0, 0.5, 0.75, 0.0, -0.75, -0.75, 0.25, -1.0, 0.75, -0.75, -0.25, 0.75, -1.0, 0.75, -0.5, 0.75, 0.0, -1.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, 0.0, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, -1.0, -1.0, 0.0, 1.0, 0.75, 0.25, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.75, -0.5, -1.0, 0.0, 0.0, 0.5, -0.75, 0.0, -0.75, -0.5, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 1.0, 0.25, -0.75, -0.5, 0.5, 0.5, 1.0, -0.75, 0.5, 1.0, 0.25, -0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, -0.25, ]);
    
    const array8 = new Float32Array([0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.0, -0.75, -0.75, 0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.75, 0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.25, 0.0, 0.5, -0.75, 0.5, -0.75, 0.75, -1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.0, 0.25, 0.25, -1.0, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.5, 0.25, 0.75, 1.0, -0.25, 0.5, 0.25, 0.75, -0.5, -0.5, 0.25, -0.5, -1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 1.0, 0.5, -0.75, 1.0, -1.0, 0.25, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, -0.5, -1.0, 0.25, -0.75, 0.25, 0.5, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array9 = new Float32Array([0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, 0.75, 1.0, 0.75, -0.75, 0.5, 0.5, -1.0, 0.5, 0.0, -1.0, -1.0, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 0.5, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, -0.5, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.0, 1.0, 0.25, -0.75, -1.0, 0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.25, 1.0, 0.5, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array10 = new Float32Array([0.25, -0.75, 1.0, -0.25, 0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, 1.0, 0.0, 0.5, -1.0, -0.25, 0.75, -0.25, 1.0, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 0.25, 0.5, -0.25, 0.5, 0.25, 1.0, -0.75, 0.25, 0.0, 0.25, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, -0.5, 0.5, -0.5, 1.0, 1.0, -1.0, 0.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.0, 0.25, -1.0, -0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, 1.0, -1.0, 0.5, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    texture000.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device20.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    
    
    device10.pushErrorScope("internal");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const array11 = new Float32Array([-1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.0, -0.75, -0.5, 0.5, -1.0, -0.75, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.75, -0.5, -0.75, 0.25, 0.0, -1.0, -1.0, -0.75, 0.5, 1.0, 1.0, 1.0, -0.75, 0.75, -0.5, -0.75, -1.0, -0.25, -0.25, -0.75, 0.5, 0.75, 0.25, 0.75, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.5, -0.25, -0.5, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.75, 0.75, 0.5, -0.75, 0.25, -1.0, 0.25, 1.0, 1.0, 1.0, 0.5, 1.0, 0.75, 0.25, -0.5, 0.75, 0.0, -1.0, 0.5, 1.0, -0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, 1.0, 0.0, -0.25, -0.75, -0.75, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array12 = new Float32Array([0.5, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, -1.0, -0.75, -0.25, -1.0, -1.0, 0.5, -1.0, -0.25, 0.75, 0.25, -1.0, 0.75, -1.0, -0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 0.0, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, -0.75, -0.5, -1.0, -0.25, 0.75, -0.5, 0.0, -0.75, 0.25, 0.5, 0.75, -1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 1.0, 0.5, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, -0.75, 1.0, 1.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.25, -1.0, -0.5, -0.5, -0.5, -0.75, 0.5, 0.0, 0.75, 0.25, 0.0, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, 0.5, 0.75, 0.0, 1.0, -0.5, -1.0, -0.75, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 0.75, 0.0, -0.5, ]);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    command_encoder102.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    device30.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    device00.pushErrorScope("out-of-memory");
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_bundle_encoder000.popDebugGroup();
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array13 = new Float32Array([1.0, 0.0, 0.5, -0.5, 0.25, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 1.0, 1.0, 1.0, -1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, 1.0, 1.0, 0.75, 0.25, -1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 0.5, 0.5, -0.25, 0.75, 0.25, -0.5, -1.0, -0.75, -0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, 0.0, 1.0, 0.75, -1.0, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 1.0, -1.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.75, -1.0, -0.5, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    texture200.destroy();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    query100.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    render_bundle_encoder101.popDebugGroup();
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    buffer002.destroy()
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer101.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.destroy();
    
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    device00.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer104, 0, array13, 0, array13.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    command_encoder104.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
    buffer102.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer104.destroy()
    command_encoder100.popDebugGroup()
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    
    query101.destroy()
    
    
    query100.destroy()
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
    compute_pass_encoder1020.popDebugGroup()
    buffer100.destroy()
    query101.destroy()
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder104.copyBufferToBuffer(
        buffer103,
        0,
        buffer105,
        0,
        400
    );
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder104.copyBufferToBuffer(
        buffer105,
        0,
        buffer103,
        0,
        400
    );
    
    command_encoder105.copyBufferToBuffer(
        buffer104,
        0,
        buffer104,
        0,
        400
    );
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    command_encoder105.popDebugGroup()
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1010.popDebugGroup()
    command_encoder104.insertDebugMarker("mymarker");
    buffer105.destroy()
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    command_encoder106.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    const command_buffer102 = command_encoder102.finish();
    
    command_encoder106.popDebugGroup()
    query102.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder105.clearBuffer(buffer104);
    
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder104.popDebugGroup()
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    device10.queue.writeBuffer(buffer107, 0, array9, 0, array9.length);
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer108.destroy()
    compute_pass_encoder1020.popDebugGroup()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder106.copyBufferToBuffer(
        buffer105,
        0,
        buffer104,
        0,
        400
    );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder106.pushDebugGroup("mygroupmarker")
    command_encoder104.copyBufferToBuffer(
        buffer103,
        0,
        buffer106,
        0,
        400
    );
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    command_encoder104.insertDebugMarker("mymarker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    buffer107.destroy()
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
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer106 = command_encoder106.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.destroy();
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer103, 0, array11, 0, array11.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    buffer100.destroy()
    
    render_bundle_encoder102.setVertexBuffer(0, buffer105);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.popDebugGroup()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array12, 0, array12.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    buffer109.destroy()
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
    texture400.destroy();
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array12, 0, array12.length);
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer103.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    device40.destroy();
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer1011, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer106);
    compute_pass_encoder1050.popDebugGroup()
    command_encoder107.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.drawIndirect(buffer109, 0);
    device10.queue.writeBuffer(buffer106, 0, array12, 0, array12.length);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query102.destroy()
    buffer005.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    buffer106.destroy()
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query101.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    buffer1011.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    device10.queue.writeBuffer(buffer1010, 0, array6, 0, array6.length);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
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
    command_encoder107.clearBuffer(buffer100);
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline105);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1040.setPipeline(render_pipeline103);
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1000.setPipeline(compute_pipeline106);
    render_bundle_encoder101.setIndexBuffer(buffer1011, "uint16");
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    query101.destroy()
    command_encoder103.clearBuffer(buffer105);
    compute_pass_encoder1050.setPipeline(compute_pipeline102);
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

    compute_pass_encoder1040.setBindGroup(0, bind_group102);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    compute_pass_encoder1070.setPipeline(compute_pipeline106);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline105.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1022, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder1040.setVertexBuffer(0, buffer1014);
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1030.popDebugGroup()
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group109);
    compute_pass_encoder1050.end();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1010);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer106, ]);
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1070.setBindGroup(0, bind_group1011);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1035, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1070.dispatchWorkgroups(100);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    command_encoder101.popDebugGroup()
    render_pass_encoder1040.end();
    command_encoder103.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1013);
    compute_pass_encoder1000.end();
    compute_pass_encoder1070.end();
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1042, 0);
    compute_pass_encoder1010.end();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer107, ]);
    compute_pass_encoder1030.end();
    render_pass_encoder1040.end();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    compute_pass_encoder1030.end();
    compute_pass_encoder1070.dispatchWorkgroups(100);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    command_encoder104.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    compute_pass_encoder1050.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1045, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1070.setBindGroup(0, bind_group1016);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1048, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1017);
    compute_pass_encoder1020.end();
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device10.queue.submit([command_buffer106, ]);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1070.end();
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1020);
    device10.queue.submit([]);
    compute_pass_encoder1070.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1057, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1058, 0);
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1021);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    device00.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1070.setBindGroup(0, bind_group1023);
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1024);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1067, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    command_encoder201.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1025);
}