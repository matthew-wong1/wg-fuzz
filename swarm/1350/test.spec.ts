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
    const array0 = new Float32Array([-0.5, -0.25, 0.0, 0.25, 0.0, 1.0, 0.0, -0.75, 1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.25, 0.25, 0.5, 0.75, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, 0.0, 1.0, 0.0, -0.25, 0.75, -0.5, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.5, 0.0, -0.25, 0.0, 0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.5, -1.0, -0.5, -1.0, 0.5, -0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, -1.0, 0.5, -0.5, -0.25, 1.0, 0.5, 0.5, -0.25, 0.75, 0.25, -1.0, -0.75, 0.75, 0.75, 0.75, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, ]);
    
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.25, -0.5, -0.75, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 1.0, 1.0, 1.0, 0.5, -0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.25, 1.0, -0.25, 0.5, -1.0, -0.25, -1.0, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.25, 1.0, 0.5, -0.75, 0.0, -1.0, -0.75, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, 0.25, -0.75, -1.0, 0.25, -0.25, 0.25, 0.5, 0.0, -1.0, -0.5, -1.0, -0.75, -1.0, -0.5, 0.75, -0.25, -0.5, -0.5, 0.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, 0.5, 0.75, -0.25, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -1.0, 1.0, -0.5, 0.25, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, ]);
    
    const array2 = new Float32Array([0.5, 0.0, 0.0, 0.0, 0.75, 0.75, -1.0, -0.5, -0.25, 0.0, 0.0, 0.0, -0.75, -0.25, -0.25, -1.0, 0.5, 0.5, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, 1.0, -0.25, 0.5, 0.5, 0.0, -1.0, -0.75, -0.25, 0.5, -0.75, -0.5, -1.0, -0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, -1.0, -0.25, 0.25, -0.5, 0.0, -0.75, -1.0, -0.75, -0.25, -0.75, 1.0, 0.0, -0.25, -0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 0.75, -0.25, 1.0, -0.5, 0.5, -0.5, -0.5, 1.0, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, 0.0, -0.25, 0.25, -0.25, -1.0, 0.5, -1.0, -1.0, 1.0, -0.75, 0.0, -0.75, 0.5, -0.75, ]);
    
    
    
    const array3 = new Float32Array([0.0, 0.25, 0.0, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.75, 1.0, 0.75, -0.5, 0.5, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.5, -0.5, -0.75, -0.5, -0.5, -0.25, -0.75, 0.75, 0.75, 0.75, 1.0, -0.75, -0.25, 0.25, 0.75, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, -0.5, -0.75, 0.5, -0.25, 0.75, -1.0, -0.25, -0.75, 0.5, 0.75, 0.25, -0.5, 1.0, -1.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -0.25, -0.25, -0.5, 1.0, 1.0, 0.75, -0.75, 0.75, -1.0, -0.25, 1.0, 1.0, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -0.5, ]);
    const array4 = new Float32Array([0.0, -0.25, -0.25, -1.0, 0.25, -0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 0.75, 0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, -1.0, -1.0, 0.0, 0.25, 0.75, 0.75, -0.75, -0.75, -1.0, -0.5, 0.75, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.0, 0.5, -1.0, 0.0, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.0, -0.75, 0.25, -0.75, 0.5, -0.75, -0.75, -0.5, -0.5, -1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.25, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 1.0, -1.0, 0.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.25, 0.25, -0.5, -0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 0.75, 1.0, -1.0, 1.0, -0.25, 0.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -0.5, 0.25, 1.0, -0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 0.5, 0.25, -0.5, -0.75, -1.0, -1.0, 0.75, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.75, 0.5, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, 0.75, 0.25, -0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.0, 0.0, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, 0.75, 1.0, 0.5, 1.0, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, -1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 0.25, 0.25, 0.75, -0.5, 0.25, 0.0, 0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 1.0, -1.0, -1.0, 0.0, -0.75, -0.75, -0.5, 0.5, -1.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, 0.0, 0.5, -1.0, -1.0, 0.5, -0.5, -0.75, -0.25, 1.0, -0.75, -0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, -0.25, -0.75, -1.0, 0.5, -1.0, -0.5, -0.75, ]);
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query201.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.destroy();
    const array7 = new Float32Array([-0.75, 0.75, 0.25, -0.25, 0.25, 1.0, -0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, -0.25, 1.0, -1.0, 0.5, 0.75, 0.0, -0.75, 1.0, 0.75, -0.5, -0.25, 0.75, 0.5, -0.25, -0.25, -0.25, 0.0, -0.25, -0.75, -0.25, -1.0, -0.5, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, 0.0, -0.75, -0.75, 0.25, -1.0, 1.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.75, -0.75, 0.5, 0.25, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.75, 1.0, 0.25, -1.0, -0.5, -0.75, 0.75, 0.5, 1.0, 1.0, -0.25, -0.75, -0.5, 1.0, -0.75, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const array8 = new Float32Array([1.0, -1.0, 0.0, 1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.5, 0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 1.0, 0.0, -1.0, 0.25, 0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -0.5, -1.0, -1.0, 0.25, -0.5, 0.5, 1.0, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 0.25, -1.0, 0.75, 0.5, -0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, 0.5, -0.75, 0.25, 0.25, 0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -1.0, 0.75, -1.0, -0.5, -0.5, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device00.pushErrorScope("out-of-memory");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    const array9 = new Float32Array([0.75, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, 0.25, 0.75, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 1.0, -1.0, -1.0, 0.5, -1.0, 0.25, 0.5, 0.0, -0.75, -0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 1.0, -0.75, 0.5, -0.75, -1.0, -1.0, 0.5, -0.75, 0.75, -1.0, 1.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.25, 1.0, 0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.75, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 0.75, 0.5, 0.25, -0.75, -0.25, 0.75, 1.0, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer300.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.popErrorScope().then((error) => {
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.destroy();
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
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
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    const array10 = new Float32Array([-0.75, -0.5, -0.5, 1.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 1.0, -0.75, 0.25, -0.5, 0.5, -1.0, 0.5, -0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.25, 0.5, -0.5, 1.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, 0.75, -0.75, -0.25, 0.0, -1.0, 0.0, -0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -1.0, 0.5, 0.0, -1.0, 0.5, -0.25, 1.0, -0.25, 1.0, 0.25, 0.25, -0.5, 0.0, 0.0, -1.0, -0.25, -0.5, 0.0, 0.0, 0.25, 0.75, 0.5, 0.0, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, -0.25, 0.5, -0.5, -0.25, 0.25, -0.75, 0.5, 1.0, 0.5, -0.75, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.5, ]);
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    buffer401.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    texture400.destroy();
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    texture101.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    render_bundle_encoder402.insertDebugMarker("marker");
    
    device40.queue.submit([]);
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device50.pushErrorScope("internal");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
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
    device70.destroy();
    query800.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device00.destroy();
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    query800.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder500.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer600.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query600.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture800.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    buffer502.destroy()
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
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    render_bundle_encoder501.popDebugGroup();
    buffer502.destroy()
    
    
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.setPipeline(render_pipeline501);
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    device80.queue.submit([]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer801, 0, array9, 0, array9.length);
    
    buffer601.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer602.destroy()
    device60.pushErrorScope("out-of-memory");
    device80.queue.writeBuffer(buffer801, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer403, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer801, 0, array5, 0, array5.length);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    render_bundle_encoder600.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer801, 0, array4, 0, array4.length);
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device80.queue.writeBuffer(buffer801, 0, array6, 0, array6.length);
    render_bundle_encoder800.popDebugGroup();
    device80.queue.writeBuffer(buffer801, 0, array4, 0, array4.length);
    query800.destroy()
    buffer801.destroy()
    device60.destroy();
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    query801.destroy()
    texture000.destroy();
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    query802.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer800.destroy()
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    buffer501.destroy()
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer500.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_bundle_encoder801.insertDebugMarker("marker");
    query802.destroy()
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    render_bundle_encoder801.insertDebugMarker("marker");
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query801.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    texture802.destroy();
    device80.queue.writeBuffer(buffer801, 0, array6, 0, array6.length);
    buffer801.destroy()
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const array11 = new Float32Array([0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 1.0, 0.0, -1.0, -1.0, -0.75, -0.25, 0.0, -0.25, 1.0, 0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.75, 1.0, -1.0, -1.0, -1.0, -0.75, 0.5, 0.25, -1.0, -1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.5, 0.0, 0.0, -1.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, 1.0, 0.75, 0.25, 0.5, 0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.25, ]);
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    render_bundle_encoder802.popDebugGroup();
    const array12 = new Float32Array([0.75, 0.0, -0.5, 0.5, -0.5, -1.0, -1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, -0.75, -0.25, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, 0.0, 0.0, 0.25, -0.75, -1.0, 1.0, 1.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, -0.75, -0.25, 0.0, 1.0, -0.75, 0.75, 0.5, 0.25, 0.0, 0.5, 1.0, 0.75, 0.0, 1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.25, ]);
    query800.destroy()
    render_bundle_encoder802.insertDebugMarker("marker");
    query201.destroy()
    render_bundle_encoder501.popDebugGroup();
    device20.destroy();
    render_bundle_encoder801.popDebugGroup();
    device80.queue.writeBuffer(buffer801, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device80.destroy();
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    device90.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const array13 = new Float32Array([0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.5, -0.75, -0.5, -0.25, -1.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.0, -0.5, -0.25, -0.75, 1.0, -1.0, -1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.75, -1.0, 0.75, 0.0, -0.75, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, -1.0, -0.75, 1.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.25, -0.25, -0.75, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.75, 0.25, 0.75, 1.0, -0.5, 0.0, -0.75, 0.25, 0.5, -0.5, ]);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array12, 0, array12.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    query1001.destroy()
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
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
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    device100.destroy();
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device110.pushErrorScope("validation");
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture1100.destroy();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder800.popDebugGroup();
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}