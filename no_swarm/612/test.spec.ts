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
    const array0 = new Float32Array([0.5, 0.0, 1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, 0.0, -1.0, 0.25, -1.0, 0.5, -1.0, -0.5, 0.0, 0.75, 0.5, 0.0, -0.5, -1.0, 0.5, 0.25, 0.75, 0.0, -0.75, -0.75, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 0.5, 0.0, 0.5, -0.5, 0.25, -1.0, 0.75, 0.0, 1.0, 0.75, 0.5, 0.75, -1.0, 0.25, -0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 1.0, -0.25, -0.25, -0.75, -1.0, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.5, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, -0.75, 0.75, ]);
    
    
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 0.0, 0.75, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, -0.25, -1.0, 0.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.0, 1.0, 0.25, 0.5, 1.0, 0.5, 0.25, 1.0, 0.0, -1.0, 1.0, 0.25, -0.75, 0.0, 0.75, -0.5, -1.0, -1.0, -0.75, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, 0.75, 0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 0.25, -0.5, -0.5, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 0.0, 0.0, 0.0, 0.0, -1.0, 0.75, -0.25, -0.75, -0.5, -1.0, -0.5, -1.0, ]);
    const array2 = new Float32Array([-0.5, 0.0, -0.75, -0.5, 0.5, -0.5, -0.5, 1.0, -0.5, -0.75, -0.75, 0.75, -0.25, -1.0, 1.0, -0.5, -0.25, -0.5, -0.75, 0.0, -1.0, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.5, -0.5, -0.5, 1.0, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, -0.25, -0.5, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 0.25, 0.25, -0.5, -1.0, -0.75, -0.75, -0.25, -1.0, 0.5, 0.0, -1.0, 0.75, -0.5, 1.0, -0.5, 0.25, 0.5, 1.0, -0.75, 0.5, 0.75, -0.75, -0.25, -0.25, 0.0, 0.0, 0.5, 0.25, 0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array3 = new Float32Array([-0.5, -0.25, 0.5, -1.0, 0.25, 0.5, -1.0, 0.25, -0.25, 0.75, 0.5, -0.25, 0.5, 0.25, 0.0, -0.75, 0.5, 0.25, -1.0, -1.0, 0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -1.0, 0.75, 0.0, 1.0, -0.75, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -0.25, -0.5, 0.0, 0.25, 0.5, -0.25, -0.25, 0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.5, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, 0.25, 0.25, 0.75, -1.0, -0.5, -0.25, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, -0.5, 0.5, -0.75, -1.0, -0.25, -0.5, -0.25, -0.75, 0.75, -1.0, -0.75, 0.0, -0.5, -0.75, -1.0, -0.75, -0.75, -0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array4 = new Float32Array([-0.75, 0.0, 0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 0.0, 0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, -1.0, -0.25, 0.75, -0.5, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.0, -1.0, 0.5, 0.0, 0.5, 0.5, 0.25, 0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, 0.75, 1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, 0.5, 0.25, -0.75, 0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -0.5, -0.75, -1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 0.25, -0.25, 0.75, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, -0.75, -0.5, 0.0, -1.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, -0.5, 1.0, -0.25, -0.75, -0.25, 0.25, -0.75, 0.25, 1.0, 0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 0.75, -1.0, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.75, -0.5, 0.75, -0.25, 0.75, 1.0, 0.0, 0.5, -0.5, 0.0, -1.0, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array6 = new Float32Array([0.75, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.0, 1.0, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, 1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.0, 0.0, -1.0, -1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 0.25, 1.0, 0.25, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, 0.25, -0.75, -0.25, 0.25, -0.75, -0.5, -0.25, -0.25, 0.0, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, -1.0, 1.0, 1.0, 0.75, 0.25, 1.0, 0.5, 0.75, 0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, -0.25, 0.25, 1.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.5, ]);
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture500.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    query500.destroy()
    
    const array7 = new Float32Array([0.0, 0.5, -0.5, 0.5, -0.25, -1.0, -0.25, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, -1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.75, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, -0.25, 1.0, 0.75, -0.25, 0.5, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 0.5, 0.25, 0.75, 0.75, 0.5, -0.5, -0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, -0.25, 0.0, 1.0, 0.25, -0.75, 0.5, 0.25, 0.5, -0.75, -1.0, 0.75, 0.75, 0.25, -0.25, 1.0, 0.75, 1.0, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device20.pushErrorScope("validation");
    query500.destroy()
    
    
    query500.destroy()
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
    const command_buffer501 = command_encoder501.finish();
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer200.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    query500.destroy()
    const array8 = new Float32Array([-0.5, -1.0, -1.0, -0.75, -1.0, -1.0, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 1.0, 0.75, -0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, -0.5, -1.0, 1.0, -0.75, 0.25, 0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.75, -0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -0.25, 1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, 0.5, 0.75, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.75, 1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device50.pushErrorScope("validation");
    const array9 = new Float32Array([0.25, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -0.75, -0.25, 1.0, 0.0, -0.5, -1.0, 0.25, -1.0, 0.25, -0.5, 0.5, -0.5, 0.75, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -0.25, -0.5, -0.25, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, -0.5, -0.75, 0.0, -1.0, -1.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, 0.75, 0.0, 0.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, -0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.25, -0.75, ]);
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const array10 = new Float32Array([-0.5, -0.75, 0.0, 1.0, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, -0.75, -0.5, -0.75, 0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 0.5, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, -0.75, -1.0, -1.0, 0.0, -0.5, 0.0, -0.5, 0.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.75, -0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.75, 0.0, 0.25, 1.0, 0.0, -0.75, -0.25, 0.5, 0.75, -0.5, 1.0, -0.75, 0.25, 0.5, -0.5, 0.0, 1.0, -0.75, -1.0, -0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 1.0, -0.75, 0.0, 0.0, -0.25, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 0.25, ]);
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer201.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.25, 0.0, 1.0, 0.75, 1.0, 1.0, 1.0, 0.25, -0.25, 1.0, 1.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.25, 0.0, 0.25, 0.5, 0.25, -0.5, -0.25, -0.25, 1.0, 0.75, -1.0, 0.0, 0.25, 1.0, 0.75, 0.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.25, 0.5, -0.25, 0.75, -0.5, 0.25, -0.75, 0.75, -0.75, 1.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, -0.75, 0.5, 0.5, 0.25, -1.0, -1.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.75, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.25, 0.75, 0.75, -0.5, ]);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.submit([command_buffer500, ]);
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device50.pushErrorScope("validation");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer600 = command_encoder600.finish();
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
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const array12 = new Float32Array([-0.5, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.5, 0.0, 1.0, 0.5, 0.75, -0.25, 0.25, 1.0, -0.25, -0.75, 1.0, -1.0, -1.0, 0.0, -0.5, 0.5, 0.75, 0.0, 0.0, 0.5, -0.75, 1.0, 1.0, -0.25, -0.25, 0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 0.25, -1.0, 0.5, 0.75, -0.75, -1.0, -1.0, -0.25, -1.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.5, 0.0, -1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.0, 0.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, 1.0, ]);
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
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
    device10.queue.writeTexture({ texture: texture103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("validation");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture103.destroy();
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder900.insertDebugMarker("mymarker");
    
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer500.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout504]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    texture104.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder900.insertDebugMarker("mymarker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2010.setStencilReference(1);
    command_encoder204.insertDebugMarker("mymarker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.executeBundles([])
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture601.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    
    device80.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer900.destroy()
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    device90.pushErrorScope("out-of-memory");
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device70.pushErrorScope("internal");
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout503]
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2040.setStencilReference(1);
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const array13 = new Float32Array([0.0, 0.25, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -1.0, -0.5, -0.25, 0.25, 0.75, 0.25, 0.75, -1.0, -0.25, -0.25, -0.25, 0.5, 0.75, -0.75, 0.0, -1.0, -0.5, 0.75, -0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, 0.0, -1.0, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, -1.0, 1.0, -1.0, 0.5, 0.25, 0.5, 0.0, 1.0, 0.25, 0.0, -1.0, -1.0, -0.75, -0.5, 0.5, -0.25, -1.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.75, 0.75, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.0, -0.75, 1.0, 0.75, 0.0, 0.25, -1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -0.75, ]);
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    
    
    render_pass_encoder2010.executeBundles([])
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder601.insertDebugMarker("mymarker");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer501.destroy()
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.executeBundles([])
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    texture701.destroy();
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder9010.insertDebugMarker("marker")
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group500);
    const array14 = new Float32Array([-0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, -1.0, 0.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, -0.25, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.5, -1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 1.0, 0.75, -0.5, 0.0, -0.25, 0.25, -1.0, 0.75, -0.5, -0.25, -0.5, 0.5, -1.0, -0.75, -0.5, 1.0, -0.75, -0.75, 0.0, -0.5, 0.25, -0.5, -1.0, 0.25, -1.0, 0.25, -0.25, 1.0, 1.0, 0.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, -1.0, 0.75, 0.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.0, 0.5, 0.75, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, -0.75, -0.25, 0.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device60.pushErrorScope("validation");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.pushErrorScope("validation");
    buffer101.destroy()
    
    device20.pushErrorScope("validation");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    buffer100.destroy()
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    compute_pass_encoder9010.insertDebugMarker("marker")
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    device60.queue.submit([command_buffer600, ]);
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query101.destroy()
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group200);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder601.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder5020.dispatchWorkgroups(100);
    render_pass_encoder2010.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder5020.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder9000.popDebugGroup()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group202);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    compute_pass_encoder5020.end();
    const command_buffer502 = command_encoder502.finish();
}