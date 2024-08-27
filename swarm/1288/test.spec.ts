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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 0.25, -0.5, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 1.0, 0.75, -0.75, -0.5, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -0.5, 0.5, -1.0, 0.25, -0.5, 0.5, 0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.75, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.5, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, 0.0, -0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.5, -0.75, 0.25, 1.0, -0.25, 0.25, -0.75, -0.75, -0.25, -0.75, -0.75, -0.75, 0.25, 0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 0.25, -0.75, ]);
    
    const array1 = new Float32Array([0.0, 0.25, -0.25, -0.25, 0.75, 1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.25, -0.75, -1.0, -1.0, 0.0, -0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.0, -0.75, 0.5, -0.5, -1.0, -0.75, 0.0, 0.25, 0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 0.5, -0.25, 0.75, 1.0, 0.0, 1.0, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.5, 0.25, -0.5, -0.25, -0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, -1.0, 0.25, -0.75, 1.0, -0.5, -0.5, -1.0, -0.75, 0.75, -1.0, 0.0, ]);
    
    
    
    const array2 = new Float32Array([0.5, -0.5, 1.0, -0.25, -0.75, 0.0, 0.75, 1.0, -1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.25, 0.75, 0.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 1.0, -0.5, -0.25, -0.5, -0.25, -0.25, 0.75, 1.0, -0.75, -0.75, 0.0, -0.5, -1.0, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.75, -0.5, -0.25, 0.25, -0.25, -0.75, 0.75, 0.0, 0.75, -0.75, 0.25, 1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.75, -0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 0.5, -0.75, 0.25, -0.75, 0.25, -0.5, 0.0, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, 1.0, 0.5, -0.25, 1.0, -1.0, -1.0, 0.75, 0.25, 0.0, -0.5, 0.0, -0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 0.0, ]);
    const array3 = new Float32Array([-0.5, -0.25, 1.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.0, 0.0, 0.5, 0.25, 0.5, 0.0, 0.75, 0.25, 0.75, -0.25, 0.25, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.5, -0.5, -1.0, 0.5, -1.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, -0.25, 0.5, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.25, 0.75, -0.5, -0.75, -1.0, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, -0.25, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, 0.25, 0.25, 0.0, -0.25, 1.0, 0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, 0.5, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.destroy();
    
    const array4 = new Float32Array([0.0, 1.0, -1.0, -1.0, -0.25, -0.5, 0.5, -0.75, 1.0, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.5, -0.75, 0.75, 0.25, -0.25, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.25, 1.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, -0.75, 0.0, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -0.5, 0.75, 1.0, 1.0, 0.5, -0.25, -0.25, 1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 0.0, -0.25, 1.0, 0.5, 0.5, 0.25, -0.5, -0.25, -0.5, -0.5, 0.25, 0.25, 0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array5 = new Float32Array([-0.75, 0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 0.0, -0.75, -0.75, -0.5, 0.0, 0.25, 0.0, 1.0, -0.25, -1.0, -1.0, -0.5, 0.75, 1.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, 0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.75, -0.75, -0.5, 0.75, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, -0.75, -0.5, -1.0, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -0.75, -1.0, 0.25, -0.25, -0.5, -0.75, 1.0, 1.0, -0.5, 0.75, 0.5, -0.75, 0.5, -0.25, -0.25, 0.75, -0.75, -0.5, 0.0, -0.75, 0.5, -0.5, 0.0, -0.25, 0.75, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array6 = new Float32Array([1.0, 0.5, -0.25, 1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.25, 0.75, 0.75, 0.5, -0.25, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 1.0, 1.0, 0.5, 0.5, 1.0, 0.0, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, 1.0, 0.5, -1.0, 1.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, -1.0, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, 0.75, 0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 0.0, 1.0, 0.5, -0.75, 0.75, 0.75, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, 1.0, 1.0, -0.5, 0.0, 0.75, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.5, 0.75, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer001 = command_encoder001.finish();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device00.queue.submit([]);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    buffer200.destroy()
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer002 = command_encoder002.finish();
    device20.queue.submit([]);
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setPipeline(render_pipeline001);
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder202.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2000.setStencilReference(1);
    
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
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
    command_encoder201.copyTextureToTexture(
        {
            texture: texture202
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
    render_pass_encoder2010.executeBundles([])
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder2010.setStencilReference(1);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder203.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder003.pushDebugGroup("mygroupmarker")
    device20.queue.submit([command_buffer202, ]);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder0000.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder2010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
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
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    
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
    render_pass_encoder0000.setStencilReference(1);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
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
    
    device00.queue.submit([command_buffer001, ]);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_pass_encoder0001.setPipeline(render_pipeline003);
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    
    command_encoder200.copyTextureToTexture(
        {
            texture: texture201
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer000.destroy()
    buffer004.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder2000.insertDebugMarker("marker");
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    render_bundle_encoder001.setVertexBuffer(0, buffer005);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    buffer007.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
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
    
    render_pass_encoder0030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    buffer002.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    render_pass_encoder2010.draw(3);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder2030.setPipeline(render_pipeline202);
    render_pass_encoder2000.setStencilReference(1);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.setPipeline(render_pipeline202);
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.draw(3);
    
    
    render_pass_encoder2030.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0040.setPipeline(render_pipeline004);
    buffer006.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder0041.setPipeline(render_pipeline000);
    
    render_bundle_encoder001.finish();
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    buffer002.destroy()
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group201);
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const array7 = new Float32Array([0.0, -0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.75, 0.5, -0.5, -0.5, -0.25, 0.0, -0.25, -0.75, -0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -1.0, 0.75, -1.0, -0.75, 1.0, 0.0, 0.0, 0.0, -0.5, -1.0, -0.75, -0.5, 1.0, 0.0, 0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.0, 0.75, 0.5, 1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.5, -1.0, -1.0, -0.25, 0.5, -0.5, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, -0.25, 0.0, 1.0, 0.75, -0.5, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, -0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, ]);
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    
    render_pass_encoder0041.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setStencilReference(1);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
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
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer209, 0, array7, 0, array7.length);
    buffer003.destroy()
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    command_encoder200.copyBufferToBuffer(
        buffer204,
        0,
        buffer204,
        0,
        400
    );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0040.setVertexBuffer(0, buffer0010);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device20.queue.writeBuffer(buffer205, 0, array7, 0, array7.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setVertexBuffer(0, buffer205);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder2001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder2001.setVertexBuffer(0, buffer205);
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    render_bundle_encoder202.setVertexBuffer(0, buffer204);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
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
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder203.setBindGroup(0, bind_group204);
    buffer205.destroy()
    render_bundle_encoder202.drawIndirect(buffer204, 0);
    render_bundle_encoder000.drawIndirect(buffer007, 0);
    device20.queue.writeBuffer(buffer2011, 0, array3, 0, array3.length);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer001,
        0,
        400
    );
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    {
        await buffer2013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2013.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.setVertexBuffer(0, buffer205);
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group206);
    
    render_pass_encoder0040.end();
    buffer0012.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer209, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    command_encoder201.copyBufferToBuffer(
        buffer2013,
        0,
        buffer2018,
        0,
        400
    );
    
    device20.queue.writeBuffer(buffer2010, 0, array0, 0, array0.length);
    render_pass_encoder2000.setVertexBuffer(0, buffer2013);
    
    render_pass_encoder0041.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    buffer209.destroy()
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    render_bundle_encoder203.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2014, 0, array6, 0, array6.length);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder203.draw(3);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    buffer204.destroy()
    
    render_pass_encoder0001.insertDebugMarker("marker");
    buffer0014.destroy()
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group207);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer206.destroy()
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    command_encoder201.copyBufferToBuffer(
        buffer2015,
        0,
        buffer206,
        0,
        400
    );
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    buffer005.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.end();
    render_pass_encoder2001.setStencilReference(1);
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
    device20.queue.writeBuffer(buffer2015, 0, array7, 0, array7.length);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0041.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setPipeline(render_pipeline009);
    
    command_encoder200.popDebugGroup()
    
    buffer001.destroy()
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder2011.setStencilReference(1);
    
    render_bundle_encoder201.setVertexBuffer(0, buffer209);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group007);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder2011.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer203.destroy()
    
    render_pass_encoder0041.setVertexBuffer(0, buffer0013);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0000.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.end();
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.setVertexBuffer(0, buffer0010);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.end();
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder2010.end();
    command_encoder203.popDebugGroup()
    render_pass_encoder2030.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder0031.popDebugGroup();
    command_encoder004.popDebugGroup()
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group208);
    render_pass_encoder2001.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2011.setVertexBuffer(0, buffer200);
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder2011.draw(3);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer006, 0);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group008);
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.setVertexBuffer(0, buffer0022);
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    command_encoder000.popDebugGroup()
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0031.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder0040.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0030.end();
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0001.end();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2011.drawIndirect(buffer2017, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2011.draw(3);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0001.end();
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder0030.drawIndirect(buffer0020, 0);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
}