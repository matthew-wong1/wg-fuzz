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
    
    const array0 = new Float32Array([0.5, 1.0, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, -0.75, 0.75, -0.5, -0.75, 0.0, 1.0, -0.75, 0.75, -0.75, -0.25, 0.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.25, 0.0, 0.25, -0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, 0.25, 1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([0.0, 0.25, -0.5, -0.75, 0.25, 0.0, -1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 0.0, 0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 1.0, 0.75, -0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -1.0, -0.25, 0.75, 0.5, -0.75, -0.5, -0.75, 0.25, 0.5, -0.5, -1.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 0.0, 1.0, -0.75, -1.0, 0.5, 0.25, -0.25, 0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, 1.0, 0.0, -0.75, -0.5, -0.5, -0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 0.75, 0.0, -0.75, 0.75, 0.25, -0.25, 0.75, -0.5, 0.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const array2 = new Float32Array([-0.75, 0.0, -1.0, 0.5, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 0.25, 0.25, 0.0, 0.5, 0.0, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 0.0, 0.0, 0.25, -1.0, -1.0, -0.5, 0.75, -0.25, 0.75, 0.5, -0.25, 0.5, 0.5, -0.5, 0.5, 0.25, 0.0, 0.0, -1.0, 0.5, 0.5, -0.75, 0.75, 0.0, -0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 1.0, 0.75, 0.5, 0.25, -0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 1.0, 1.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, -1.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    query002.destroy()
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.5, 1.0, -1.0, -1.0, -1.0, 0.25, -0.5, -0.75, 0.5, -0.5, -0.25, 0.25, 0.75, 1.0, -0.5, 0.25, -0.75, 0.75, 0.5, 0.0, 0.25, 0.75, -0.5, 0.25, -0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, 0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 0.5, -1.0, 0.25, -0.5, -0.5, -1.0, 1.0, -0.75, -0.75, -1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, -0.5, -0.5, 0.75, 1.0, 1.0, 0.0, 0.0, -0.5, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.5, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.5, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device10.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device20.destroy();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query400.destroy()
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query400.destroy()
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    const array4 = new Float32Array([0.75, -0.5, -0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.5, -0.75, -0.25, 0.5, -1.0, -0.25, 1.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -0.5, -0.25, -1.0, 0.75, 0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, 0.75, -1.0, 0.25, -0.5, -1.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.75, -0.75, 0.0, 0.5, 0.25, 0.75, 0.0, -1.0, 0.5, 0.75, -0.25, 0.0, 0.0, 0.75, 0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, -0.5, 0.75, -0.5, 1.0, -0.5, 0.75, 1.0, 0.75, 1.0, 1.0, 0.5, 0.0, -1.0, 0.0, -0.25, 1.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.0, 0.25, -0.75, 1.0, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, -0.75, -1.0, ]);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const array5 = new Float32Array([-1.0, -0.75, 0.0, 0.25, -1.0, -0.25, -0.75, -0.5, 0.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.25, 0.75, 0.75, -0.75, -0.5, 0.5, -0.5, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, 1.0, -0.75, 0.0, 0.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -0.25, -0.5, -0.75, -0.5, 0.75, 1.0, 0.5, 0.0, 0.25, 0.0, -1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, -0.75, 0.5, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.25, -1.0, -0.25, -1.0, 1.0, -0.5, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.5, 1.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 0.5, ]);
    const array6 = new Float32Array([0.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, 0.25, 0.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -0.5, 0.25, 0.75, -0.75, 0.5, -1.0, 0.25, 0.5, -0.75, -0.5, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, 1.0, 0.75, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.25, -0.25, 0.0, -0.75, 0.75, 0.0, -1.0, -1.0, 0.5, 0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.5, -1.0, 0.0, -1.0, 0.0, -0.25, -0.25, ]);
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const sampler603 = device60.createSampler( { label: "sampler603" } );
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
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout606 = device60.createBindGroupLayout({ 
        label: "bind_group_layout606",
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
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device60.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    query801.destroy()
    device70.destroy();
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    query801.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    render_bundle_encoder802.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    query802.destroy()
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder802.insertDebugMarker("marker");
    const array7 = new Float32Array([0.5, 0.0, 0.75, -0.25, 0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.75, -0.75, 1.0, -0.75, -0.25, 0.25, 0.5, -0.75, 1.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, -0.5, -1.0, 0.25, 0.25, 0.0, 0.75, 0.0, -0.25, -0.75, 0.0, -0.5, 0.75, 1.0, 0.0, -0.5, -0.25, -0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, -0.5, -0.75, 1.0, -0.5, 0.75, 0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 0.0, -0.5, 1.0, -0.75, 0.25, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 0.5, ]);
    query800.destroy()
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -0.75, -0.75, 0.25, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 1.0, 1.0, 0.0, -1.0, 0.0, -0.5, -0.75, -0.75, -0.5, 0.5, 0.0, 0.0, 0.75, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, -0.5, 0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.75, -1.0, -1.0, 0.75, 1.0, -1.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.0, 0.25, 0.75, 1.0, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 1.0, -1.0, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -0.25, 1.0, 1.0, -0.75, -0.5, 0.25, -0.25, -1.0, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    query802.destroy()
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    query801.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query801.destroy()
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    query803.destroy()
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    device90.destroy();
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    query802.destroy()
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device80.destroy();
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1002]
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device100.destroy();
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const array9 = new Float32Array([-0.5, -0.5, -1.0, -0.25, 1.0, -0.5, 1.0, 0.75, -0.25, -0.25, -0.5, 0.0, -0.75, 0.0, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, 1.0, 0.5, -0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 0.75, 1.0, -0.5, -0.75, 0.0, -0.75, 0.25, 0.0, -1.0, 0.5, -0.75, -0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.0, 0.5, -1.0, 1.0, 0.75, 0.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, -0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, 0.0, -0.25, 0.0, 0.5, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 0.75, 1.0, -0.5, 0.0, 0.25, 0.0, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device120.destroy();
    device140.destroy();
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
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
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device110.destroy();
    device130.destroy();
    const array10 = new Float32Array([0.5, -1.0, 1.0, 0.0, 0.75, -0.25, 0.75, 0.5, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.25, -0.75, -0.75, 0.75, 0.5, -0.75, 0.5, -0.75, -0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.25, -0.25, 0.25, -0.25, -0.5, -0.5, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -1.0, 0.25, 0.5, 0.25, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, -1.0, 0.75, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.25, 0.5, -0.5, 0.25, 1.0, 0.25, 0.0, 0.0, -1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 0.25, 0.25, -1.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.25, 0.5, 0.75, 0.75, 0.75, -0.75, 0.5, ]);
    
    const array11 = new Float32Array([0.0, 0.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.75, -0.25, 0.5, -1.0, 0.25, 0.25, -0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 0.5, 1.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, -1.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, 1.0, 0.25, -0.75, 0.25, 0.25, 0.25, 0.5, 0.75, 0.25, -0.5, 1.0, 0.0, -0.75, 0.25, -0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.0, 0.5, -0.25, ]);
    const array12 = new Float32Array([1.0, 0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.5, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -0.75, -1.0, -1.0, -0.75, 0.25, 1.0, 0.5, -1.0, -1.0, 0.75, -0.75, -1.0, -0.25, 0.5, 0.25, -0.75, -0.5, 0.75, -1.0, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 1.0, -0.25, 0.5, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.0, -0.75, -0.75, -0.25, 0.75, 0.75, -1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.25, 0.0, 0.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, -0.5, 1.0, -0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.75, -0.5, 0.25, -0.75, -1.0, ]);
    
    
    const array13 = new Float32Array([-1.0, -0.5, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -0.75, -0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 1.0, 1.0, 0.5, 0.25, 0.5, -0.5, -0.75, 0.5, 0.75, 0.75, -1.0, 1.0, 1.0, 0.25, -1.0, -0.5, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, 1.0, -0.25, -0.75, -0.5, 1.0, 0.5, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.75, 0.25, -0.25, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -0.5, 0.5, 0.75, 0.75, -0.5, 0.25, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.5, ]);
    const array14 = new Float32Array([0.25, -0.25, -1.0, 0.75, 0.75, -0.5, 0.25, 0.0, 0.0, -0.75, 0.25, -0.5, 1.0, 1.0, -0.25, 0.25, 0.0, 0.25, -0.5, -1.0, 0.25, -0.25, 0.75, -0.5, 1.0, -0.75, 0.0, 0.0, 1.0, -1.0, 1.0, -1.0, -0.5, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 0.5, -1.0, 0.25, 0.5, -0.75, 1.0, -0.75, 1.0, -0.25, 0.5, -0.5, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 1.0, 1.0, -0.5, -0.5, 0.75, -0.75, 0.75, 0.0, 0.25, -0.5, -0.5, -0.75, ]);
    const array15 = new Float32Array([0.0, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.0, -0.75, -1.0, -1.0, 0.25, -0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 0.25, -1.0, -1.0, 0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.25, 1.0, 1.0, -1.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.25, 0.0, 1.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.25, 1.0, -0.75, -1.0, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, -0.25, 0.75, 0.5, ]);
    
    
    const array16 = new Float32Array([0.75, 0.25, -0.75, 1.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 1.0, 0.5, 0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.5, 1.0, 0.0, 0.5, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.25, -1.0, -0.25, 0.5, -0.5, 0.25, -0.5, 0.75, -1.0, -0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -1.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.75, -0.5, 0.0, -0.75, -0.5, -1.0, 0.25, 0.75, 0.5, 0.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.25, 1.0, ]);
    const array17 = new Float32Array([0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, -0.25, 0.75, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.75, 0.25, -0.75, 1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.75, 0.5, -0.75, -0.75, -0.75, 1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 0.0, -0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, -1.0, 1.0, -0.5, -0.5, 0.5, 0.75, -0.5, 1.0, 0.75, 0.25, 1.0, 0.25, 0.25, 1.0, 0.75, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, -0.25, 0.25, 0.25, 0.25, 0.0, 0.5, 0.75, 0.5, -1.0, 0.25, 0.0, -0.5, -0.5, -1.0, -0.75, 0.25, 1.0, -0.25, 1.0, -1.0, ]);
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array18 = new Float32Array([-0.5, -0.5, 0.25, -1.0, -0.75, 0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, 1.0, -1.0, 1.0, 0.75, 0.25, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, -0.5, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, -0.75, -1.0, 1.0, 1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.25, -1.0, 0.0, -0.75, 0.0, -0.25, 1.0, 0.0, -1.0, 0.75, 0.75, -0.25, 0.75, 0.0, 1.0, 0.75, 1.0, 0.25, 0.5, 0.5, 0.5, 0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 0.25, -0.5, -0.25, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, -0.5, 0.25, -0.25, 0.0, -1.0, 0.75, -1.0, 0.0, 0.5, -0.5, 0.0, -0.5, 0.0, 0.0, 0.0, ]);
    
    const array19 = new Float32Array([0.0, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.75, 0.75, 0.25, -0.5, -0.25, -0.5, 0.25, -1.0, -0.5, 0.75, 1.0, -1.0, -1.0, -1.0, 0.0, -1.0, 1.0, 0.25, 0.25, 0.75, 1.0, -1.0, -1.0, 1.0, 0.25, -0.5, -0.25, 0.5, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, 0.0, -0.5, 1.0, -1.0, -0.75, 0.25, -0.5, 0.75, 0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.0, -1.0, -1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 0.5, -0.75, 0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.5, -1.0, ]);
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const array20 = new Float32Array([0.25, -1.0, -1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.75, 1.0, 1.0, 0.25, 0.0, 0.75, 0.5, -0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -1.0, 0.25, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.5, 1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 0.75, 0.5, -1.0, 1.0, 0.75, -1.0, -1.0, -1.0, 0.75, -0.5, -0.5, -1.0, 0.25, 0.25, 1.0, 0.25, 0.25, -1.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.0, -0.75, -0.5, 0.5, 0.25, ]);
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    device150.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    const texture1603 = device160.createTexture({
        label: "texture1603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    device160.queue.writeTexture({ texture: texture1601 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    
    const texture_view16020 = texture1602.createView({ label: "texture_view16020" });
    
    device160.queue.writeTexture({ texture: texture1603 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device160.queue.writeTexture({ texture: texture1603 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device160.queue.writeTexture({ texture: texture1601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1601 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1603 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device160.queue.writeTexture({ texture: texture1601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.destroy();
    const texture1701 = device170.createTexture({
        label: "texture1701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const array21 = new Float32Array([-0.25, 0.5, 0.0, 0.5, 0.0, -0.75, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, 0.75, -1.0, 0.25, -0.5, -0.75, -0.75, 1.0, 0.0, -1.0, -1.0, 0.75, 0.75, 0.5, 1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 0.25, -0.25, -0.25, -1.0, 0.0, -0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, 0.5, 1.0, -0.5, 0.5, 0.0, -0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -1.0, -0.5, 0.25, 0.25, -0.75, 0.5, 0.75, 0.0, 0.5, -1.0, -0.25, -1.0, 1.0, -0.25, 1.0, 0.25, -1.0, -1.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.75, 0.25, ]);
    const texture_view17000 = texture1700.createView({ label: "texture_view17000" });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder1701 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1701",
        colorFormats: ["bgra8unorm"]
    });
    query1700.destroy()
    device170.destroy();
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    const render_pipeline1900 = device190.createRenderPipeline({
        label: "render_pipeline1900",
        vertex: {
            module: shader_module1900,
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
            module: shader_module1900,
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
    device190.destroy();
    const array22 = new Float32Array([-1.0, 0.0, -0.75, 0.75, -0.75, 1.0, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.75, 0.25, 0.5, 0.75, -0.5, -0.5, 0.5, 0.5, 0.0, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, -0.5, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.75, -0.25, -0.5, 1.0, -0.5, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.5, 1.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, 1.0, 1.0, -0.25, -1.0, 1.0, 0.5, 0.5, 0.25, 0.75, 0.25, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, -0.25, 0.5, 0.0, 1.0, 0.75, -0.5, 0.0, ]);
    const array23 = new Float32Array([0.5, 1.0, 0.25, -0.75, 0.0, 0.0, 0.5, -0.25, 0.5, 0.75, 0.75, -0.75, 0.25, 0.75, -0.25, 0.5, -0.5, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, -1.0, -0.25, -0.25, -0.5, -0.5, -0.5, 0.25, -0.5, 0.25, 0.0, 1.0, 0.75, -1.0, -0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 0.0, -0.25, 0.75, -0.75, -0.75, 0.75, 0.75, 0.75, 1.0, 0.5, -1.0, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, 0.25, -1.0, -1.0, 0.5, -0.5, 0.5, -0.5, -1.0, 0.5, 1.0, -0.5, 1.0, -0.5, 0.75, ]);
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const array24 = new Float32Array([0.25, 0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.25, -1.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, 1.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.5, -0.75, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, -0.5, -0.5, 0.25, 0.5, 0.5, 0.75, 0.25, 0.0, -0.5, 0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.25, 0.0, 0.5, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, -0.75, 0.0, 1.0, 1.0, 0.0, -1.0, -1.0, 0.75, 0.0, 0.75, 1.0, 0.0, ]);
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    const texture2000 = device200.createTexture({
        label: "texture2000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture2001 = device200.createTexture({
        label: "texture2001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device200.destroy();
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1800]
    });
    
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    device180.destroy();
    
    const array25 = new Float32Array([0.5, 0.25, 0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 0.0, 0.0, 0.75, -1.0, -1.0, -0.25, 0.75, 0.25, 0.25, -0.25, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.25, 1.0, 0.25, 0.5, 0.0, 1.0, -0.75, 1.0, 1.0, 1.0, 1.0, 0.75, 0.25, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, -1.0, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, 0.5, 0.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, 1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, 0.75, 0.0, 0.25, -1.0, ]);
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    const array26 = new Float32Array([-1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.5, 0.75, -0.75, -0.25, -0.75, 0.5, 0.0, -1.0, 0.0, -0.25, -0.75, 0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, -0.5, -0.25, 0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, 0.0, 0.0, 0.5, -1.0, -0.25, -0.75, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, ]);
    var shader_module2200_code = "";
    try {
        shader_module2200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2200 = await device220.createShaderModule({ label: "shader_module2200", code: shader_module2200_code })
    const bind_group_layout2200 = device220.createBindGroupLayout({ 
        label: "bind_group_layout2200",
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
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module2201_code = "";
    try {
        shader_module2201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2201 = await device220.createShaderModule({ label: "shader_module2201", code: shader_module2201_code })
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    
    const query2200 = device220.createQuerySet({
        label: "query2200",
        type: "occlusion",
        count: 32,
    });
    device220.destroy();
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query2100.destroy()
    query2100.destroy()
    
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const sampler2400 = device240.createSampler( { label: "sampler2400" } );
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module2101_code = "";
    try {
        shader_module2101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2101 = await device210.createShaderModule({ label: "shader_module2101", code: shader_module2101_code })
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    const render_bundle_encoder2101 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2101",
        colorFormats: ["bgra8unorm"]
    });
    const texture2500 = device250.createTexture({
        label: "texture2500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    device210.destroy();
    const bind_group_layout2500 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2500",
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
    const texture2400 = device240.createTexture({
        label: "texture2400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module2400_code = "";
    try {
        shader_module2400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2400 = await device240.createShaderModule({ label: "shader_module2400", code: shader_module2400_code })
    const texture_view25000 = texture2500.createView({ label: "texture_view25000" });
    const texture_view24000 = texture2400.createView({ label: "texture_view24000" });
    
    const pipeline_layout2500 = device250.createPipelineLayout({ 
        label: "pipeline_layout2500",
        bindGroupLayouts: [bind_group_layout2500]
    });
    
    const array27 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 1.0, 0.75, 0.75, 0.25, -1.0, -0.75, -1.0, 0.0, 0.0, -0.5, -0.25, -0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 1.0, -0.75, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, -0.5, -1.0, -1.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, 1.0, 0.75, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, 0.5, -0.75, 0.75, 0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.5, 0.75, -1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.75, 0.5, -1.0, 0.0, -0.25, 0.0, -1.0, 1.0, 0.25, 0.0, 0.75, -0.75, 0.0, 0.75, 0.5, 1.0, -0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, 0.0, -0.75, 0.5, -0.5, -0.5, -0.75, ]);
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler2401 = device240.createSampler( { label: "sampler2401" } );
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    const render_bundle_encoder2300 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2300",
        colorFormats: ["bgra8unorm"]
    });
    
    device230.destroy();
    var shader_module2401_code = "";
    try {
        shader_module2401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2401 = await device240.createShaderModule({ label: "shader_module2401", code: shader_module2401_code })
    const query2500 = device250.createQuerySet({
        label: "query2500",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture2401 = device240.createTexture({
        label: "texture2401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
}