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
    const array0 = new Float32Array([0.0, -1.0, 0.5, -0.5, 0.25, -0.5, 0.0, -0.25, 1.0, 0.0, -0.75, -0.5, 0.25, 0.25, -0.5, -0.5, 0.75, 0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.0, -0.5, 0.5, 0.5, -0.25, 0.5, -0.25, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.0, 0.75, 0.0, -0.5, 0.5, -1.0, -0.5, -0.75, -0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.5, 1.0, -0.5, -0.25, 0.75, 0.75, 0.25, -0.5, 0.0, 0.0, 0.25, -0.25, -0.75, 0.5, 0.25, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.5, 1.0, -0.5, -0.75, 1.0, 0.75, 0.0, -0.5, 0.0, 0.5, -0.5, -0.25, -0.25, -0.5, 0.0, 0.75, 0.75, 0.25, 0.25, -0.5, 0.5, -0.75, -0.5, -1.0, 0.75, -0.75, -1.0, -0.5, 0.25, 0.75, -0.5, 1.0, -1.0, 0.25, 0.25, 0.75, -1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 0.5, -0.5, -1.0, -1.0, -0.75, -0.5, 0.0, 0.25, -0.5, -0.5, 0.75, -0.5, 0.5, 0.0, 0.25, 0.0, 1.0, 0.75, 0.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 1.0, 0.5, -1.0, -0.25, -0.25, -1.0, -0.75, -0.75, 0.25, -0.25, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    device20.destroy();
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
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
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.75, 0.25, -0.75, -1.0, -0.5, 0.5, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.5, 0.5, -0.25, 1.0, -0.75, -1.0, -1.0, 0.0, -0.75, -0.5, 0.0, -0.25, 0.0, -1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.5, 1.0, -0.5, -0.5, 0.75, 0.5, -0.75, -0.75, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 1.0, -0.25, 0.5, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, 0.25, 1.0, -0.5, 0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 0.5, 0.25, 1.0, -1.0, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.25, -0.25, 1.0, -0.25, 0.25, 0.5, -0.75, -1.0, 0.0, -0.25, -0.5, -0.75, 0.0, 0.25, -0.75, ]);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    texture300.destroy();
    
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const array3 = new Float32Array([-1.0, 0.5, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, -0.25, -1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.25, 1.0, -1.0, 0.0, -1.0, 0.0, -0.5, 1.0, 0.25, -0.5, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.25, -0.5, 0.75, -0.25, 1.0, 1.0, -0.25, 0.25, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -0.5, 0.5, 0.0, -1.0, 0.75, -0.25, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.0, 1.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.5, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, -0.5, 1.0, -0.25, 1.0, 0.0, -0.25, 0.5, -0.75, ]);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
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
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    
    
    const array4 = new Float32Array([1.0, 1.0, 0.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.25, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.5, 0.75, -0.5, -0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.75, 0.0, -1.0, -1.0, -0.75, -1.0, -0.25, -0.75, 0.75, 1.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.0, -1.0, 1.0, 0.0, -0.75, 1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, 0.75, 0.5, 1.0, 0.25, -0.25, 0.25, 0.75, 0.0, 1.0, 1.0, -0.5, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.25, 0.25, 0.25, 0.25, -0.5, 0.0, 1.0, -1.0, 0.75, 0.0, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, ]);
    const array5 = new Float32Array([0.25, 0.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, -0.75, -0.5, -0.25, 1.0, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, -0.25, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, 0.0, -0.25, -0.75, -1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, -0.5, -0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.0, -1.0, 1.0, -0.5, 0.0, 0.5, -0.75, -0.75, 0.0, -1.0, 1.0, -0.75, 0.0, 0.25, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, ]);
    
    
    
    const array6 = new Float32Array([0.25, 0.25, 0.25, -0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, 1.0, -0.75, -0.25, 0.75, -0.25, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, 0.0, -0.75, -0.25, 0.75, -0.75, 0.0, 1.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.25, 0.5, 0.25, -0.25, -0.5, 0.25, -0.5, -1.0, 0.0, -0.75, -0.5, -0.25, 0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.75, 0.75, -0.75, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.5, -1.0, -1.0, 0.0, 0.25, 0.5, -0.25, 0.0, -0.5, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.75, -0.75, 0.5, -0.75, 0.5, 1.0, 0.75, 0.75, 0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([-0.75, 0.25, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, 0.0, -0.25, -0.5, -0.75, -0.75, 0.75, -0.5, 1.0, -0.25, -0.5, -0.75, 0.75, 0.25, 1.0, 0.25, 0.75, 0.25, 0.5, 0.0, -0.25, -0.5, 0.0, -0.75, -0.75, -0.25, -1.0, 0.25, 0.75, -0.25, 0.25, 0.0, 1.0, -1.0, 0.25, -1.0, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, 0.0, -1.0, -0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -0.5, -1.0, -0.25, 0.5, 0.25, 0.5, -0.25, 0.5, 0.75, 0.25, -0.75, -0.25, -0.25, 0.25, -0.25, 1.0, -1.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    texture600.destroy();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device70.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device60.destroy();
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.destroy();
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device80.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array8 = new Float32Array([-0.75, 0.25, 1.0, 0.75, 0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, -0.25, -0.25, 1.0, -0.5, -0.75, -1.0, -1.0, 0.5, -0.5, 1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -1.0, -0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 0.25, -0.75, -0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, -0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, -0.5, -0.25, -0.25, 1.0, 0.25, -0.75, 0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.25, -0.75, 0.0, -0.5, 0.75, -0.5, -0.5, 0.25, -0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.75, ]);
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    
    
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
    device120.queue.writeBuffer(buffer1200, 0, array0, 0, array0.length);
    device120.queue.writeBuffer(buffer1200, 0, array7, 0, array7.length);
    
    {
        await buffer1200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1200.unmap();
        console.log(new Float32Array(data));
    }
    device120.queue.writeBuffer(buffer1200, 0, array6, 0, array6.length);
    device130.destroy();
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1201]
    });
    device120.destroy();
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    
    
    
    const array9 = new Float32Array([-0.25, -1.0, 0.75, 0.5, 0.25, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.75, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 1.0, -0.25, 1.0, -0.5, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, -1.0, -1.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, 0.75, -1.0, -1.0, 0.5, -0.75, 0.75, 0.0, 0.5, 0.25, 0.0, 0.5, -0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -0.75, 0.25, -0.25, -0.5, -0.75, -0.25, -1.0, 0.75, 0.75, 1.0, -1.0, -0.25, 0.0, 0.25, ]);
    render_bundle_encoder1100.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
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
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    
    
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    buffer1100.destroy()
    
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    device90.destroy();
    
    
    
    render_bundle_encoder1100.setPipeline(render_pipeline1100);
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const pipeline_layout1102 = device110.createPipelineLayout({ 
        label: "pipeline_layout1102",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1100.destroy();
    
    render_bundle_encoder1101.setPipeline(render_pipeline1100);
    const compute_pipeline1100 = device110.createComputePipeline({
        label: "compute_pipeline1100",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1101,
            entryPoint: "main"
        }
    });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1101 = device110.createComputePipeline({
        label: "compute_pipeline1101",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1101,
            entryPoint: "main"
        }
    });
    
    
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1100 = device110.createBindGroup({
        label: "bind_group1100",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1103,
                },
            },
        ],
    });

    render_bundle_encoder1101.setBindGroup(0, bind_group1100);
    
    buffer1101.destroy()
    const buffer1104 = device110.createBuffer({
        label: "buffer1104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1105 = device110.createBuffer({
        label: "buffer1105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1101 = device110.createBindGroup({
        label: "bind_group1101",
        layout: render_pipeline1100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1105,
                },
            },
        ],
    });

    render_bundle_encoder1100.setBindGroup(0, bind_group1101);
    const buffer1106 = device110.createBuffer({
        label: "buffer1106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    render_bundle_encoder1100.insertDebugMarker("marker");
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder1101.insertDebugMarker("marker");
    const buffer1107 = device110.createBuffer({
        label: "buffer1107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    buffer1106.destroy()
    
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    buffer1102.destroy()
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1104,
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
            module: shader_module1104,
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
    
    buffer1105.destroy()
    texture1102.destroy();
    
    var shader_module1105_code = "";
    try {
        shader_module1105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1105 = await device110.createShaderModule({ label: "shader_module1105", code: shader_module1105_code })
    
    
    
    
    render_bundle_encoder1102.setPipeline(render_pipeline1100);
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1103,
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
            module: shader_module1103,
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
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    
    
    const pipeline_layout1103 = device110.createPipelineLayout({ 
        label: "pipeline_layout1103",
        bindGroupLayouts: [bind_group_layout1101]
    });
    const buffer1108 = device110.createBuffer({
        label: "buffer1108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const buffer1109 = device110.createBuffer({
        label: "buffer1109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline1102 = device110.createComputePipeline({
        label: "compute_pipeline1102",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1101,
            entryPoint: "main"
        }
    });
    device110.queue.writeBuffer(buffer1109, 0, array6, 0, array6.length);
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    const render_pipeline1104 = device110.createRenderPipeline({
        label: "render_pipeline1104",
        vertex: {
            module: shader_module1104,
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
            module: shader_module1104,
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
    
    
    device110.queue.writeBuffer(buffer1109, 0, array9, 0, array9.length);
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    
    render_bundle_encoder1101.insertDebugMarker("marker");
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    device110.queue.writeBuffer(buffer1109, 0, array0, 0, array0.length);
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1103 = device110.createComputePipeline({
        label: "compute_pipeline1103",
        layout: pipeline_layout1102,
        compute: {
            module: shader_module1101,
            entryPoint: "main"
        }
    });
    device110.queue.writeBuffer(buffer1109, 0, array5, 0, array5.length);
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/shader_module1701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    const render_pipeline1105 = device110.createRenderPipeline({
        label: "render_pipeline1105",
        vertex: {
            module: shader_module1103,
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
            module: shader_module1103,
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
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1104 = device110.createSampler( { label: "sampler1104" } );
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    var shader_module1106_code = "";
    try {
        shader_module1106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1106 = await device110.createShaderModule({ label: "shader_module1106", code: shader_module1106_code })
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const buffer11010 = device110.createBuffer({
        label: "buffer11010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1700.insertDebugMarker("marker");
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline1106 = device110.createRenderPipeline({
        label: "render_pipeline1106",
        vertex: {
            module: shader_module1102,
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
            module: shader_module1102,
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
    device110.queue.writeBuffer(buffer11010, 0, array8, 0, array8.length);
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline1104 = device110.createComputePipeline({
        label: "compute_pipeline1104",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1101,
            entryPoint: "main"
        }
    });
    const render_pipeline1107 = device110.createRenderPipeline({
        label: "render_pipeline1107",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    buffer1401.destroy()
    buffer1400.destroy()
    device110.queue.writeBuffer(buffer11010, 0, array2, 0, array2.length);
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
    device140.destroy();
    buffer1108.destroy()
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const texture_view11011 = texture1101.createView({ label: "texture_view11011" });
    const array10 = new Float32Array([-1.0, -0.5, -0.25, -1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.75, -1.0, -0.5, 1.0, -0.25, -0.25, 0.5, 0.5, -0.25, 0.75, 0.0, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.25, 0.0, 0.25, 0.25, -0.25, -0.25, 0.5, -0.75, -0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.5, 0.5, 1.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, 0.0, 1.0, 0.5, 0.75, 0.75, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 0.0, 1.0, 1.0, -0.5, -0.5, 0.5, -0.25, -0.25, 0.5, -0.75, -0.25, -0.75, 0.5, 0.25, 0.25, -0.25, -0.75, -0.75, -0.5, 1.0, -0.25, -0.25, ]);
    device110.queue.writeBuffer(buffer1109, 0, array8, 0, array8.length);
    device110.destroy();
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1700,
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
            module: shader_module1700,
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
    const render_pipeline1701 = device170.createRenderPipeline({
        label: "render_pipeline1701",
        vertex: {
            module: shader_module1700,
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
            module: shader_module1700,
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
    
    
    render_bundle_encoder1700.setPipeline(render_pipeline1700);
    var shader_module1702_code = "";
    try {
        shader_module1702_code = await fs.readFile(__dirname + '/shader_module1702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1702 = await device170.createShaderModule({ label: "shader_module1702", code: shader_module1702_code })
    
    
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1602,
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
            module: shader_module1602,
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
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1600]
    });
    
    
    
    const query1701 = device170.createQuerySet({
        label: "query1701",
        type: "occlusion",
        count: 32,
    });
    texture1600.destroy();
    render_bundle_encoder1600.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1600.insertDebugMarker("marker");
    const pipeline_layout1700 = device170.createPipelineLayout({ 
        label: "pipeline_layout1700",
        bindGroupLayouts: [bind_group_layout1700]
    });
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    var shader_module1603_code = "";
    try {
        shader_module1603_code = await fs.readFile(__dirname + '/shader_module1603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1603 = await device160.createShaderModule({ label: "shader_module1603", code: shader_module1603_code })
    device170.destroy();
    const texture_view16011 = texture1601.createView({ label: "texture_view16011" });
    
    
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1604_code = "";
    try {
        shader_module1604_code = await fs.readFile(__dirname + '/shader_module1604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1604 = await device160.createShaderModule({ label: "shader_module1604", code: shader_module1604_code })
    
    
    
    
    const pipeline_layout1601 = device160.createPipelineLayout({ 
        label: "pipeline_layout1601",
        bindGroupLayouts: [bind_group_layout1600]
    });
    const compute_pipeline1600 = device160.createComputePipeline({
        label: "compute_pipeline1600",
        layout: pipeline_layout1601,
        compute: {
            module: shader_module1603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1600.setPipeline(render_pipeline1600);
    
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    
    const pipeline_layout1602 = device160.createPipelineLayout({ 
        label: "pipeline_layout1602",
        bindGroupLayouts: [bind_group_layout1600]
    });
    device160.destroy();
    
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const array11 = new Float32Array([-1.0, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, -1.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 0.5, -0.75, 0.5, -0.5, -1.0, 0.5, -1.0, 0.75, 0.0, 0.25, -1.0, 0.0, -0.75, 0.75, -0.75, -0.25, -1.0, 0.0, -0.25, 0.25, -0.25, 0.0, -0.75, 1.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -0.25, -1.0, 0.5, -1.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 1.0, -1.0, 1.0, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -0.25, -0.25, -0.75, -0.25, ]);
    
    const array12 = new Float32Array([-0.75, 0.75, -0.75, 0.75, -0.25, -0.75, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, -0.5, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 0.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.5, 0.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 1.0, 0.5, -0.25, 1.0, 1.0, 1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 1.0, 0.0, -0.5, 1.0, -0.5, 0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, 0.25, 0.0, -0.25, 0.0, 0.5, ]);
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    device150.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}