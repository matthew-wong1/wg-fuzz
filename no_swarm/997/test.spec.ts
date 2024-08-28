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
    
    const array0 = new Float32Array([-0.5, 0.0, -0.5, 0.75, -0.75, 0.25, 0.75, -0.25, 0.5, 0.75, 0.75, 0.25, -0.5, -0.75, -0.75, -1.0, 1.0, 0.25, 0.0, 0.75, 0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 0.75, 0.25, -1.0, -1.0, -0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.5, -1.0, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.0, 0.5, -0.5, 0.75, -0.25, -0.75, 0.0, 0.25, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -1.0, 0.75, 0.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 1.0, 0.0, -0.25, 1.0, 0.5, -0.25, -0.5, 0.25, -0.25, -0.5, 0.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.5, 1.0, 0.0, 0.0, -0.75, ]);
    const array1 = new Float32Array([0.25, -0.75, 0.75, 0.75, 0.0, -0.75, 1.0, -0.75, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.75, 1.0, 1.0, -0.5, 0.75, 1.0, -0.5, -0.25, -1.0, 0.25, -0.5, -0.5, 1.0, -1.0, 0.75, -0.5, -1.0, 0.0, -0.25, -1.0, -0.75, 0.75, 1.0, 0.0, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, -0.5, 0.5, -1.0, 0.0, -0.25, 0.75, 0.5, -0.25, -0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, 0.5, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, ]);
    
    
    const array2 = new Float32Array([0.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.0, -1.0, -1.0, 1.0, -0.5, -0.5, 0.0, -0.75, -0.25, 1.0, -1.0, 0.5, 0.25, -0.25, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.0, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, -1.0, 0.0, 0.5, 0.75, -1.0, 0.0, -0.5, 0.5, 0.75, 0.25, 0.5, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.5, 0.5, -1.0, 0.5, 0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 1.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.5, -0.25, 0.0, 1.0, -0.5, 0.0, 0.5, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5, 0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    
    
    
    device00.destroy();
    
    
    
    const array3 = new Float32Array([0.5, -0.25, -0.25, -0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 0.0, -1.0, -0.5, -0.25, -0.5, 0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 0.0, -0.5, -0.25, -1.0, 0.5, -0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, -0.75, -0.25, -1.0, -0.5, 0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.25, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, -0.5, -0.25, -0.75, -1.0, 1.0, -0.25, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, -0.5, 0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 0.75, -0.25, -0.5, 0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.75, -0.25, 0.5, 0.0, -0.5, 0.25, -1.0, 0.0, -1.0, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.5, -0.75, ]);
    
    
    
    
    const array4 = new Float32Array([-0.25, -0.75, 0.25, -1.0, 0.25, 0.5, 0.5, -1.0, 1.0, -0.5, -0.75, 0.75, -0.25, -1.0, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.5, 1.0, -0.5, -0.75, -0.25, -0.25, -0.75, -0.75, 0.0, -0.25, -0.75, 0.5, -0.5, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.0, -0.75, 0.5, 0.25, -0.25, 0.25, 1.0, 0.0, -0.75, 0.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, -0.5, -0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 1.0, 0.75, -0.25, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 1.0, 0.75, 0.0, -0.5, -0.75, 0.75, -0.25, -0.25, 1.0, 0.0, -1.0, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, 0.25, ]);
    
    const array5 = new Float32Array([0.0, 0.0, -0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.0, 1.0, 0.0, 0.5, 0.25, 0.25, -0.5, -0.5, 1.0, 0.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, 0.5, 0.0, 0.25, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, 0.0, -0.5, 0.0, 0.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.5, 0.5, 0.5, 0.0, -0.25, -0.25, 0.75, 0.75, -0.25, 0.5, 0.25, -0.75, 1.0, -1.0, 0.75, 1.0, -1.0, -0.5, 0.5, -0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.5, -0.75, 0.25, -0.5, -0.75, 1.0, -0.75, -1.0, -1.0, 0.0, -0.5, -1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const array6 = new Float32Array([-0.25, 0.75, -0.5, 0.0, -1.0, 0.0, 0.75, 0.5, -0.75, -0.75, 0.75, -1.0, 1.0, 0.0, 0.75, -0.5, -0.5, 1.0, 1.0, 1.0, 0.75, -0.75, -0.75, -0.25, -1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, 0.0, 0.5, -1.0, -0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.5, 1.0, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 1.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.5, -0.5, 0.75, -1.0, -0.5, -0.75, 0.0, -1.0, 0.25, -0.25, -0.25, -0.5, 1.0, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, ]);
    device30.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    buffer300.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    device20.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array7 = new Float32Array([-0.25, -0.75, 1.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.5, 1.0, -0.25, -0.25, 1.0, -0.25, -1.0, 0.75, 0.0, 0.75, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, 0.25, 0.0, 0.25, -0.75, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.25, -0.25, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, -0.75, 0.5, -0.25, -1.0, 0.0, 0.0, 0.0, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -0.5, -0.25, -0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    texture300.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query300.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    texture301.destroy();
    texture302.destroy();
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
    
    
    
    device20.pushErrorScope("internal");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query200.destroy()
    
    buffer201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    query200.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder2000.popDebugGroup()
    const array8 = new Float32Array([0.25, -0.75, -0.25, -0.5, -1.0, -0.25, 0.5, 1.0, 0.5, -0.5, 1.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, -0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 0.25, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, 0.0, 0.5, 0.25, -1.0, -0.5, -0.25, 0.5, -1.0, 1.0, -0.5, -1.0, 0.75, 0.25, 0.25, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 0.75, 0.5, -0.75, 0.5, -0.5, -0.25, 0.0, 0.25, 0.25, 0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 0.5, 0.75, 0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.0, 1.0, -0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.0, -1.0, 1.0, 1.0, 1.0, ]);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture303.destroy();
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    query200.destroy()
    device30.destroy();
    render_bundle_encoder201.popDebugGroup();
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
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    device10.destroy();
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    query200.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer204.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("internal");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array9 = new Float32Array([1.0, 0.25, 1.0, -0.25, 0.0, 0.0, -0.5, -1.0, 0.75, 0.0, -1.0, 0.5, 1.0, 0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.0, 0.25, -1.0, 0.25, 0.75, 1.0, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, -0.25, -0.25, 0.0, 0.75, -1.0, -1.0, 0.25, 0.25, -1.0, 0.25, 0.5, -0.5, 0.5, 0.25, 1.0, 0.5, 0.0, -0.75, -0.5, 0.75, -0.5, 0.75, 0.0, -0.5, -0.5, 1.0, 1.0, -0.5, -0.25, -1.0, 0.25, -1.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, -1.0, -0.75, 0.0, 0.0, 0.75, 0.25, ]);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setPipeline(render_pipeline202);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2010.executeBundles([])
    
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.popDebugGroup();
    buffer203.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline203);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const array10 = new Float32Array([-0.5, -1.0, -0.5, 0.75, -0.75, -1.0, -0.25, 0.75, 1.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.75, -0.25, 0.25, 1.0, -0.75, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, -0.25, -0.5, 0.75, -0.25, 0.0, -0.75, -0.5, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 0.5, -0.75, -0.25, 0.75, 0.5, 0.5, -0.25, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.75, 0.0, 1.0, 0.25, 0.75, 1.0, -0.25, 0.25, -0.25, ]);
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture204.destroy();
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder2020.setStencilReference(1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout2018,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
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
        layout: render_pipeline203.getBindGroupLayout(0),
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
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2030.popDebugGroup();
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2030.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    texture205.destroy();
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array11 = new Float32Array([0.5, -0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, 1.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.25, 0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.75, 1.0, -0.25, -0.75, 0.0, 0.75, 0.25, -0.25, 0.5, -0.5, -0.75, 0.5, -1.0, 0.75, -0.75, -0.75, 0.25, -0.75, -0.75, 1.0, -0.5, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.25, -1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 1.0, 0.5, 1.0, 0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, -1.0, -0.75, -0.5, 1.0, 0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.5, -0.25, -0.75, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, -0.5, -0.25, 0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 1.0, -0.25, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    
    buffer2011.destroy()
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    buffer206.destroy()
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout2022,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    buffer207.destroy()
    
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    const bind_group_layout209 = device20.createBindGroupLayout({ 
        label: "bind_group_layout209",
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
    const pipeline_layout2024 = device20.createPipelineLayout({ 
        label: "pipeline_layout2024",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture203 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    
    render_pass_encoder2030.setStencilReference(1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setPipeline(render_pipeline206);
    
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query201
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_pass_encoder2050.setPipeline(render_pipeline206);
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
        layout: render_pipeline206.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group204);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout2025 = device20.createPipelineLayout({ 
        label: "pipeline_layout2025",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout2026 = device20.createPipelineLayout({ 
        label: "pipeline_layout2026",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout2027 = device20.createPipelineLayout({ 
        label: "pipeline_layout2027",
        bindGroupLayouts: [bind_group_layout204]
    });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    buffer2010.destroy()
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setStencilReference(1);
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2050.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    render_pass_encoder2060.executeBundles([])
    render_pass_encoder2060.setPipeline(render_pipeline208);
    
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout2028 = device20.createPipelineLayout({ 
        label: "pipeline_layout2028",
        bindGroupLayouts: [bind_group_layout200]
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
        layout: render_pipeline208.getBindGroupLayout(0),
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

    render_pass_encoder2060.setBindGroup(0, bind_group206);
    const pipeline_layout2029 = device20.createPipelineLayout({ 
        label: "pipeline_layout2029",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.beginOcclusionQuery(0)
    
    
    buffer2013.destroy()
    
    render_pass_encoder2040.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    
    render_pass_encoder2050.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout2030 = device20.createPipelineLayout({ 
        label: "pipeline_layout2030",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
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

    render_pass_encoder2030.setBindGroup(0, bind_group207);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2050.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group209);
    const command_buffer200 = command_encoder200.finish();
}