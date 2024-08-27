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
    const array0 = new Float32Array([-1.0, 0.25, -0.5, 0.25, -0.25, -0.5, -0.5, 0.75, 0.25, -0.75, -0.75, 0.5, -0.75, -0.75, -0.25, 0.75, 0.25, 1.0, -0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.5, 0.5, 0.0, 0.5, 0.75, 1.0, 0.25, -0.25, 0.25, -0.75, 1.0, -0.75, -0.25, -1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, 0.75, 0.75, -0.75, 0.0, 0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.75, 0.5, 0.0, 0.0, -0.25, -0.5, 0.25, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, -0.75, 0.25, 0.75, -1.0, 0.0, -1.0, 0.75, 0.0, -1.0, -1.0, -0.25, 0.25, 0.5, -0.75, -1.0, ]);
    const array1 = new Float32Array([-0.5, 1.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 1.0, 0.0, 0.75, -1.0, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, 0.5, 0.25, -0.5, -0.25, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, -0.5, -1.0, -0.5, -1.0, -0.25, -0.25, 0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 1.0, 0.75, -0.25, 0.75, 1.0, -1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.5, 0.25, -0.5, -0.5, 0.75, -1.0, 1.0, -0.75, 0.25, 0.5, 0.75, 0.0, -0.25, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, 0.75, 1.0, 1.0, 0.25, -1.0, -1.0, 0.5, 0.0, 0.0, 0.5, -0.25, -0.5, 0.0, 1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -0.75, ]);
    
    const array2 = new Float32Array([-0.75, 0.0, 0.5, 0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 0.0, -0.5, -0.75, 0.25, -0.5, 0.75, 0.75, 0.5, -0.75, -0.5, -0.25, -0.5, -0.25, 0.0, -0.5, -0.5, -1.0, 0.75, 0.5, -0.25, 0.0, 0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.75, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, 1.0, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, 0.75, 0.25, 0.25, 0.0, 0.75, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, 0.0, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 0.75, 0.25, -0.25, 0.25, 0.75, 1.0, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, -0.75, -0.75, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([0.5, -1.0, -0.25, 0.25, -1.0, -0.25, 0.75, -1.0, -0.5, -1.0, 0.0, -0.5, -0.5, 0.25, -0.5, -1.0, 0.75, 0.0, -0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.5, 0.5, 0.0, 0.5, -1.0, 0.75, -0.75, 0.75, -0.25, -1.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 0.25, 0.75, 1.0, -0.75, 0.0, 0.75, 0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 0.25, -0.75, 0.75, 0.75, 0.5, -0.75, 0.5, -0.75, 0.5, 1.0, 0.5, 0.5, 1.0, 0.0, -1.0, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -0.25, -0.5, 1.0, -0.25, -0.75, 1.0, 0.0, 0.0, 0.0, 1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const array4 = new Float32Array([-0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.25, -1.0, 0.25, 1.0, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, -1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.75, -0.25, 0.75, -0.25, -1.0, 0.75, 0.75, 0.25, -1.0, 0.0, 0.75, 0.5, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, -0.25, 0.5, 1.0, 0.0, 0.25, 0.0, 1.0, 0.5, -0.25, 0.25, -0.75, -0.25, 0.75, -1.0, -0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.5, -0.25, -0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.75, 0.0, 0.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, -0.5, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.destroy();
    device00.destroy();
    
    device10.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array5 = new Float32Array([-1.0, -1.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, 0.25, 1.0, 0.75, -0.75, 0.0, 0.25, 1.0, -0.25, 0.75, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 1.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.25, -1.0, 0.75, 0.5, 0.5, -0.75, -1.0, 0.0, 0.75, 0.25, -0.75, 0.25, -0.5, -0.25, 0.5, 0.25, -0.75, -0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.5, 0.75, -0.5, 0.25, 0.75, -0.5, -0.75, -1.0, 0.25, -0.25, -1.0, 0.0, -0.5, 0.0, 0.0, -0.25, 0.25, 1.0, -0.75, -0.5, -1.0, 1.0, 0.75, 0.0, -0.5, 0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array6 = new Float32Array([-0.25, 0.75, 1.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, 0.5, 0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -0.75, 0.5, 1.0, 0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -0.5, 0.25, -0.25, -0.75, 0.5, -1.0, 0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 0.0, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, -0.25, -0.75, -0.5, 0.0, -1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, -0.5, -1.0, -1.0, 0.75, -0.25, 0.5, 0.0, 0.25, 0.75, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const array7 = new Float32Array([-0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -0.75, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, -0.75, -0.75, -0.25, 0.5, -1.0, 0.5, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, -0.5, 0.0, 0.75, 0.5, 0.5, 0.0, -0.25, 0.25, -1.0, -0.5, -1.0, -0.5, -0.5, -0.75, -1.0, -0.25, -1.0, 0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 0.25, 0.75, -1.0, -0.75, -0.5, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, -1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, -1.0, ]);
    device40.destroy();
    
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.pushErrorScope("internal");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("validation");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.0, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, -0.75, -0.5, -0.75, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, -0.25, 0.25, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.5, -0.25, 0.25, -0.5, 0.0, 0.0, 0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, -0.25, 0.5, -1.0, 0.25, -1.0, 0.0, -0.25, 0.75, 0.5, 0.25, 1.0, 0.0, -1.0, -0.25, 0.25, 1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.75, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer500 = command_encoder500.finish();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    texture501.destroy();
    
    query500.destroy()
    
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device60.pushErrorScope("internal");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
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
    const array9 = new Float32Array([-0.25, -0.5, -0.25, 0.5, 0.5, 1.0, -0.25, 0.0, 0.5, -0.75, -0.5, 1.0, 0.75, -0.75, 0.5, -0.25, 0.5, 1.0, 0.25, 0.5, -0.25, -1.0, 0.5, 1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.5, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, 0.5, -0.75, 0.75, -0.25, 0.25, 0.75, 0.5, 1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.75, -0.25, 0.5, 0.25, 0.25, -0.25, 0.25, 1.0, -1.0, -0.25, 1.0, -1.0, -0.25, 0.75, 1.0, -0.5, 0.25, 0.5, 0.25, -0.25, -0.5, 0.75, 0.5, -0.75, -0.5, -0.25, -0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, -1.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 0.5, 0.0, 1.0, -0.5, 0.5, ]);
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query500.destroy()
    texture500.destroy();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    buffer200.destroy()
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    buffer202.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    texture600.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.clearBuffer(buffer201);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    command_encoder201.clearBuffer(buffer201);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
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
    
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    buffer500.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.clearBuffer(buffer201);
    const command_buffer201 = command_encoder201.finish();
    
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.insertDebugMarker("mymarker");
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
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
    buffer205.destroy()
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    buffer206.destroy()
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    command_encoder601.copyTextureToBuffer(
        {
            texture: texture602
        },
        {
            buffer: buffer601
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query600
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer207.destroy()
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query600
    });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder501.insertDebugMarker("mymarker");
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer600.destroy()
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder6030.setStencilReference(1);
    
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer204.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder6020.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    query500.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const array10 = new Float32Array([-1.0, -0.75, 0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.75, 0.5, -0.75, -0.5, 0.5, 0.5, 1.0, -1.0, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, -0.75, 0.25, 1.0, 0.75, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 0.5, 0.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.75, -0.25, -0.75, -0.5, 0.0, 0.0, 0.75, -0.5, 0.5, 0.5, 0.5, -0.75, 0.75, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, 0.25, -0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.5, ]);
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    command_encoder501.insertDebugMarker("mymarker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    texture603.destroy();
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder6020.setStencilReference(1);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    render_bundle_encoder200.draw(3);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    buffer502.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device20.pushErrorScope("out-of-memory");
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder6030.pushDebugGroup("group_marker");
    
    
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6030.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    buffer503.destroy()
    buffer501.destroy()
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device50.pushErrorScope("internal");
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    
    
    render_pass_encoder6020.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6010.setStencilReference(1);
    
    const sampler508 = device50.createSampler( { label: "sampler508" } );
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder6030.popDebugGroup();
    render_bundle_encoder501.setPipeline(render_pipeline501);
    buffer208.destroy()
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array11 = new Float32Array([-0.75, 0.75, -1.0, 0.25, -0.75, -0.5, -0.75, -0.5, -1.0, -0.5, -0.5, 0.25, -0.75, -0.25, 0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 0.5, -0.75, 0.0, -0.25, 0.25, 0.5, -1.0, -0.75, 0.75, 0.25, -1.0, -0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, -0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -0.5, 1.0, 0.0, 1.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.25, -1.0, -0.25, -0.25, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 1.0, -0.75, -0.5, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 0.25, -0.5, 0.5, -0.5, 0.75, 1.0, 0.0, -1.0, -0.5, -1.0, -0.75, -0.5, 0.0, 1.0, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer601.destroy()
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_bundle_encoder800.insertDebugMarker("marker");
    device80.destroy();
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    buffer2010.destroy()
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    compute_pass_encoder6000.insertDebugMarker("marker")
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const texture_view6014 = texture601.createView({ label: "texture_view6014" });
    render_pass_encoder6030.executeBundles([])
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder6030.pushDebugGroup("group_marker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query501.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    buffer602.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder6020.executeBundles([])
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array12 = new Float32Array([0.25, -1.0, -0.75, -0.75, -0.75, -0.75, 0.0, 0.25, -0.75, 1.0, -0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -0.25, 0.5, -0.75, 0.5, -1.0, 0.5, 0.5, 0.0, 0.0, 0.25, -0.75, 0.0, 0.5, 1.0, -0.25, -0.25, 0.0, -0.25, 0.5, 0.0, 0.5, 0.0, -1.0, 1.0, 0.5, -0.5, -0.75, 0.75, 0.25, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, 0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 0.25, 1.0, 1.0, -0.75, 0.25, 0.75, -0.25, 0.5, 0.25, -0.5, -0.5, 0.5, -1.0, 1.0, -0.25, ]);
    
    buffer700.destroy()
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    texture601.destroy();
    render_pass_encoder6030.insertDebugMarker("marker");
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder6020.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_pass_encoder6030.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder6010.insertDebugMarker("marker");
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.setPipeline(compute_pipeline503);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer605, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer605, 0);
    render_pass_encoder6020.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6000.end();
    command_encoder600.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder5010.end();
    render_pass_encoder6030.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
}