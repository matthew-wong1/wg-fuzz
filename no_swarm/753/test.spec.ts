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
    
    
    
    const array0 = new Float32Array([-0.25, 0.0, -0.25, 0.25, 0.75, -0.25, -0.5, -0.75, 0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.5, 0.0, -1.0, -0.25, 0.5, 1.0, 0.5, -1.0, 0.25, 0.75, -0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, -0.5, -0.75, -0.5, 0.25, 0.25, -0.75, -0.5, -1.0, -1.0, -0.75, 0.75, 0.5, 0.75, -0.75, -0.25, 0.5, 0.25, -0.25, -0.5, 0.75, 0.25, 0.25, -1.0, 0.25, -1.0, 0.5, 0.75, -0.25, -0.75, 1.0, 0.5, 0.0, -0.5, 0.75, -0.75, 1.0, -0.75, -0.75, -1.0, -0.75, -1.0, 0.0, -1.0, 0.75, -0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.0, 1.0, 0.0, 0.25, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.pushErrorScope("out-of-memory");
    const array1 = new Float32Array([1.0, 0.25, 0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, -0.75, 0.75, 1.0, -0.25, 0.75, 0.5, 0.25, 0.0, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 0.25, -0.5, 0.0, 0.75, -0.25, -0.75, 0.25, 0.25, 0.25, -1.0, 1.0, -0.25, -1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, -0.5, 1.0, 0.75, -0.75, 0.0, -0.25, 0.75, 0.75, 0.5, -0.5, -0.5, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, -0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, -0.5, -0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 0.0, 1.0, -0.75, 0.0, -0.25, -0.25, -0.5, 0.5, 0.25, -0.5, 1.0, -1.0, -0.5, 0.75, -1.0, -1.0, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer000 = command_encoder000.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer001 = command_encoder001.finish();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder100.popDebugGroup();
    
    texture000.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer001, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.25, -0.5, 1.0, 1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -0.25, -0.5, -0.75, -0.75, 0.75, -0.25, -0.75, -0.5, -1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.5, 0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.75, -0.5, 0.5, 0.5, -0.75, -0.75, 0.75, -0.25, -1.0, -0.5, 1.0, -0.75, 1.0, 1.0, -0.5, -0.5, 0.0, 0.5, -0.75, -0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 0.25, 1.0, -0.5, 0.5, 0.75, 0.5, 1.0, 0.0, -1.0, -0.75, -1.0, 0.5, 0.75, -1.0, -0.25, 1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 1.0, 1.0, -0.25, 0.5, ]);
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.submit([command_buffer000, ]);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    buffer001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
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
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.0, 0.0, 0.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, 0.75, 0.5, -0.25, -0.25, 0.5, -1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.5, -1.0, -0.25, 0.25, 0.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 0.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.25, -0.25, 0.25, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, -0.5, 0.5, 0.75, 0.75, -0.75, -0.25, 0.75, 0.5, 0.0, 0.75, -0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.25, -0.75, 0.5, -1.0, -0.5, -1.0, -0.75, -0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 0.75, ]);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder300.insertDebugMarker("mymarker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.destroy();
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer301 = command_encoder301.finish();
    const command_buffer302 = command_encoder302.finish();
    command_encoder300.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([0.5, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 0.75, -0.5, 0.0, -0.75, -0.25, -1.0, 0.25, 0.0, -1.0, 0.75, 1.0, 1.0, 0.0, 1.0, 0.25, 0.75, 0.0, -0.75, -0.5, -0.75, 1.0, -0.25, -0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -0.25, -0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 0.0, -1.0, -1.0, 0.75, 1.0, 0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.75, 1.0, 0.25, 0.25, -0.25, 0.0, -0.5, -0.75, 0.75, -0.5, -0.25, 0.0, 0.25, ]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture300.destroy();
    
    
    buffer301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.popDebugGroup();
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer302.destroy()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device30.pushErrorScope("validation");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer300.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3030.end();
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    
    
    buffer306.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    render_pass_encoder3040.setPipeline(render_pipeline300);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder3030.executeBundles([])
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device30.pushErrorScope("out-of-memory");
    
    
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer308.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.executeBundles([])
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: query301
    });
    
    
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3040.beginOcclusionQuery(0)
    
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    query300.destroy()
    
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3060.setPipeline(render_pipeline300);
    buffer304.destroy()
    
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    render_pass_encoder3050.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder3060.insertDebugMarker("marker");
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3060.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder3050.setPipeline(render_pipeline302);
    
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    buffer303.destroy()
    const array5 = new Float32Array([0.75, 1.0, -0.5, -0.25, -0.5, 0.75, 0.0, 1.0, -1.0, 1.0, -1.0, 1.0, 0.0, -0.5, -0.75, -0.25, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.75, 0.25, 0.5, -0.25, -0.25, 1.0, 0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, 1.0, 0.5, 0.5, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, -0.75, 0.5, -0.25, 0.75, 0.75, -0.75, 0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.0, -1.0, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, 0.25, ]);
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3050.setStencilReference(1);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture302.destroy();
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_pass_encoder3050.insertDebugMarker("marker");
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group303);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3000.popDebugGroup()
    
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    
    
    render_pass_encoder3060.pushDebugGroup("group_marker");
    render_pass_encoder3060.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3015.destroy()
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3070.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    texture600.destroy();
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer3010.destroy()
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3060.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    
    render_pass_encoder3060.popDebugGroup();
    const array6 = new Float32Array([-0.25, -1.0, 0.5, -0.5, -1.0, 0.5, 0.75, 1.0, -1.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.25, 0.75, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, 0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 0.5, 0.75, 0.75, 0.0, 0.5, -0.75, -0.25, -0.25, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, -0.5, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, 0.5, 0.5, 1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 1.0, -0.5, -1.0, -1.0, ]);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder3050.setStencilReference(1);
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group305);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3070.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer305.destroy()
    
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query300.destroy()
    render_pass_encoder3050.insertDebugMarker("marker");
    render_pass_encoder3070.insertDebugMarker("marker");
    query300.destroy()
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3070.executeBundles([])
    
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3040.setStencilReference(1);
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer3013.destroy()
    buffer309.destroy()
    
    render_pass_encoder3070.pushDebugGroup("group_marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setPipeline(render_pipeline302);
    render_pass_encoder3060.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3050.popDebugGroup();
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    buffer3011.destroy()
    render_pass_encoder3060.pushDebugGroup("group_marker");
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.insertDebugMarker("marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    texture301.destroy();
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout305,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3060.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer3012.destroy()
    
    render_pass_encoder3060.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder601.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder3060.setStencilReference(1);
    texture601.destroy();
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
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    buffer3017.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer3018.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer3019.destroy()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.insertDebugMarker("marker");
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    
    const array7 = new Float32Array([-1.0, -0.25, -0.5, -0.75, 0.75, 0.75, -1.0, 0.0, 0.0, -0.25, 0.25, -0.75, 0.75, -0.75, 0.5, 0.5, -0.75, -0.5, -0.75, 1.0, -0.25, -1.0, 0.0, 1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -0.5, -0.75, -0.25, -0.75, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.25, -1.0, -1.0, -0.5, -0.25, 1.0, -0.25, 0.0, 0.75, -0.75, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, 1.0, -0.25, 0.5, 1.0, 1.0, -0.75, -0.25, 1.0, 0.25, 0.5, -0.75, 0.5, -0.5, 0.25, ]);
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout306,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3070.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3040.endOcclusionQuery()
    render_pass_encoder3060.popDebugGroup();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group307);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3070.setBindGroup(0, bind_group308);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3000.end();
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
}