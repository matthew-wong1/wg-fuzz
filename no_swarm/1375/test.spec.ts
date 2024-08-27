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
    const array0 = new Float32Array([0.0, 0.75, 0.25, 0.5, -0.25, -0.75, -0.5, 0.25, 0.0, 0.75, -0.75, -0.5, -0.5, 0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.25, 0.5, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, 0.25, 0.75, 0.25, -0.25, 0.5, -0.5, 1.0, -0.25, 1.0, 0.0, 0.0, 0.25, -0.5, 1.0, -1.0, -0.25, -1.0, -0.25, -1.0, 0.25, -0.75, -0.25, 0.75, -1.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, -0.75, -0.75, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -0.5, -0.75, 1.0, 0.5, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, -0.75, 0.75, -0.25, -1.0, -1.0, -0.5, -0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    
    device00.pushErrorScope("out-of-memory");
    texture002.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    texture001.destroy();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query000.destroy()
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.destroy();
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device00.queue.submit([]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    texture000.destroy();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
    query001.destroy()
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    render_bundle_encoder003.insertDebugMarker("marker");
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.setPipeline(render_pipeline002);
    device00.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer300.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const array1 = new Float32Array([0.75, 0.75, 0.75, -0.25, 0.25, 0.75, 0.75, 0.25, 1.0, 0.0, 0.5, -0.75, 0.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, -1.0, -1.0, 1.0, 1.0, 0.5, 0.5, 0.5, -0.5, -0.25, 0.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.75, 0.25, 1.0, 0.75, -0.75, -1.0, -1.0, -0.5, 0.25, 0.0, -0.75, 0.75, 1.0, -0.5, 0.25, 1.0, 0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, 0.5, 0.0, 1.0, -0.75, 0.5, -0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, -0.5, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, 0.75, 0.0, -0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.25, 1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, 0.0, -0.75, ]);
    buffer301.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const array2 = new Float32Array([1.0, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, 0.75, 0.25, 0.5, 0.5, 0.5, -0.5, 1.0, 0.25, -1.0, 0.75, 0.0, -0.5, 0.25, -0.25, -0.25, 0.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.75, 0.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.5, -0.5, -0.25, 0.75, 0.75, 0.0, -0.75, -0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, 0.25, 1.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.75, 0.25, -0.5, -0.5, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device30.pushErrorScope("validation");
    device30.pushErrorScope("validation");
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    buffer600.destroy()
    render_bundle_encoder502.popDebugGroup();
    render_bundle_encoder003.setPipeline(render_pipeline000);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device50.pushErrorScope("validation");
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    texture003.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array3 = new Float32Array([0.75, -0.75, -0.25, -0.5, 1.0, -0.5, -0.5, -1.0, 0.5, -0.75, 0.25, -0.25, -0.25, 0.5, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, 1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.5, -0.75, -0.75, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.0, 0.25, 0.5, 0.5, -0.5, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.75, 0.75, 0.25, -0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, -0.5, 0.25, 0.75, 0.0, -0.5, -0.75, -0.75, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device40.pushErrorScope("internal");
    render_pass_encoder3000.executeBundles([])
    
    
    query501.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture500.destroy();
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    query401.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
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
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    
    const array4 = new Float32Array([0.75, 0.25, -0.75, -1.0, 0.0, 0.25, 1.0, 0.5, -0.25, -0.25, 1.0, -1.0, -0.75, 0.5, -1.0, -0.25, -0.75, -0.5, 0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 0.25, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, 0.25, 0.75, 0.75, -0.25, -0.5, -0.5, -0.25, 0.25, -0.75, 0.0, -0.25, -0.75, -0.5, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.25, -1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.0, -0.25, 0.75, -0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.75, 0.5, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.25, 0.5, -0.75, 1.0, -0.5, 0.5, 0.5, -0.5, -0.5, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, ]);
    
    query601.destroy()
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device40.queue.submit([]);
    query500.destroy()
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer501.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.resolveQuerySet(
        query602,
        0,
        32,
        buffer600,
        0
    )
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder301.popDebugGroup();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    query400.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3000.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    render_bundle_encoder400.popDebugGroup();
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    buffer500.destroy()
    query501.destroy()
    command_encoder400.clearBuffer(buffer400);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    command_encoder601.clearBuffer(buffer601);
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    query600.destroy()
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([-0.75, -0.75, -0.5, 1.0, -1.0, 0.5, -0.5, -0.25, 0.0, 0.5, 0.0, 0.25, -1.0, 0.5, -0.5, -0.5, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, 1.0, -0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.75, 1.0, 0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.25, 0.0, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 1.0, 0.25, 0.0, -0.75, 1.0, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, -0.5, 0.75, 0.75, -0.25, 1.0, -0.5, 1.0, 0.25, 1.0, 0.5, 0.5, 0.0, 0.0, 0.25, 0.5, 0.75, -0.5, -1.0, 0.5, -1.0, 0.75, -0.25, ]);
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder5010.setStencilReference(1);
    device30.pushErrorScope("validation");
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_bundle_encoder500.popDebugGroup();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array6 = new Float32Array([-0.25, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.25, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 0.25, 1.0, 1.0, 0.5, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, -0.75, 0.75, -1.0, -0.75, 0.0, 0.75, 1.0, -1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 1.0, 0.25, -0.75, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 1.0, -0.75, 0.0, 0.0, 0.5, -1.0, 0.5, 0.5, -1.0, -0.5, -0.75, 0.0, 0.5, -0.5, 1.0, 0.75, -0.5, 1.0, 1.0, 0.5, 0.25, 0.75, ]);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer601,
        0
    )
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_bundle_encoder502.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    
    command_encoder400.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder5010.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder400.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    command_encoder601.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
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
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device50.pushErrorScope("validation");
    render_pass_encoder5030.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    texture502.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4000.beginOcclusionQuery(0)
    render_pass_encoder5030.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const command_buffer503 = command_encoder503.finish();
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder4001.setPipeline(render_pipeline401);
    command_encoder505.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    render_pass_encoder5040.executeBundles([])
    command_encoder505.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.pushErrorScope("out-of-memory");
    texture400.destroy();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group400);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    render_pass_encoder5030.setStencilReference(1);
    render_pass_encoder5010.executeBundles([])
    
    
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder4000.endOcclusionQuery()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    command_encoder502.copyBufferToTexture(
        {
            buffer: buffer501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer000.destroy()
    render_bundle_encoder400.popDebugGroup();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    command_encoder300.copyBufferToBuffer(
        buffer304,
        0,
        buffer304,
        0,
        400
    );
    render_pass_encoder5050.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder4001.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_buffer502 = command_encoder502.finish();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder5060.beginOcclusionQuery(0)
    render_pass_encoder5060.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    render_pass_encoder4001.setVertexBuffer(0, buffer400);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    query600.destroy()
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    buffer402.destroy()
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    command_encoder400.clearBuffer(buffer400);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query500.destroy()
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    buffer304.destroy()
    render_pass_encoder4000.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    buffer302.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder3000.executeBundles([])
    device60.destroy();
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder5030.setStencilReference(1);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3000.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    render_pass_encoder5060.setStencilReference(1);
    render_pass_encoder5060.pushDebugGroup("group_marker");
    render_pass_encoder4001.setStencilReference(1);
    command_encoder301.clearBuffer(buffer306);
    render_pass_encoder5040.setStencilReference(1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5060.executeBundles([])
    
    render_pass_encoder5060.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer505 = command_encoder505.finish();
    
    render_pass_encoder4000.setStencilReference(1);
    
    render_pass_encoder5040.executeBundles([render_bundle_encoder500, ])
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder504.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const array7 = new Float32Array([0.75, 0.5, -0.75, -0.5, -0.5, 0.75, 0.5, -1.0, 0.25, 0.0, 0.0, -0.75, -1.0, 0.75, 1.0, 0.5, 1.0, -1.0, 1.0, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -1.0, -0.75, 0.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 0.0, 0.5, -0.75, 0.5, -0.25, 0.75, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.75, 0.0, 0.25, -0.5, -1.0, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, 1.0, 0.0, 0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.0, 1.0, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.0, -0.75, ]);
    render_pass_encoder5030.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    render_pass_encoder5060.executeBundles([])
    render_pass_encoder3000.setPipeline(render_pipeline301);
    device50.queue.submit([command_buffer503, command_buffer505, ]);
    render_pass_encoder5030.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer504 = command_encoder504.finish();
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder5060.endOcclusionQuery()
    render_pass_encoder4001.draw(3);
    render_pass_encoder4000.setPipeline(render_pipeline401);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder3000.setVertexBuffer(0, buffer300);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group401);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4001.end();
    command_encoder601.popDebugGroup()
    render_pass_encoder5060.popDebugGroup();
    const command_buffer506 = command_encoder506.finish();
    render_pass_encoder3000.popDebugGroup();
    device50.queue.submit([command_buffer502, command_buffer504, command_buffer506, ]);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder3000.end();
    device50.queue.submit([command_buffer506, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5040.popDebugGroup();
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4001.draw(3);
    render_pass_encoder5010.endOcclusionQuery()
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer401);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.draw(3);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3000.end();
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer506, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder4000.popDebugGroup();
    device50.queue.submit([]);
    command_encoder600.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder4000.end();
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([]);
    device50.queue.submit([command_buffer506, ]);
    render_pass_encoder4000.draw(3);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder4000.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device50.queue.submit([command_buffer503, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer505, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder4000.drawIndexed(3);
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder3000.popDebugGroup();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder5040.popDebugGroup();
    device50.queue.submit([command_buffer506, ]);
    render_pass_encoder5050.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.end();
    device50.queue.submit([command_buffer506, ]);
    device40.queue.submit([]);
    render_pass_encoder4000.end();
    const command_buffer601 = command_encoder601.finish();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4001.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder4000.end();
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    device40.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer500, command_buffer504, ]);
    render_pass_encoder4001.popDebugGroup();
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    device60.queue.submit([]);
    render_pass_encoder3000.drawIndirect(buffer307, 0);
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder5010.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5040.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer505, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4001.end();
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder5010.endOcclusionQuery()
}