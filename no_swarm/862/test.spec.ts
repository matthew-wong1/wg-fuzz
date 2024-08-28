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
    
    const array0 = new Float32Array([0.75, 0.75, -0.5, 0.75, -0.75, 0.75, -1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.25, 0.5, 0.5, -0.25, 0.0, -0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, -0.75, 0.5, 1.0, 0.25, 0.25, -0.75, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.5, 1.0, 0.5, -0.5, -0.75, 1.0, -0.75, -0.25, 0.0, 0.75, -0.5, 1.0, -0.25, -0.5, -0.25, -0.75, 0.25, 1.0, 0.0, -0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.75, -0.75, -1.0, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, 1.0, 0.5, 0.25, -0.5, -0.25, -0.75, 1.0, -0.25, 1.0, -0.75, -1.0, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, -1.0, 1.0, -0.75, 0.75, 0.0, -1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-0.5, 1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.25, -1.0, -0.25, -0.75, 0.75, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, 0.0, 0.75, -1.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 1.0, -0.5, 0.25, -0.25, -1.0, -0.25, 0.25, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.25, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, 1.0, 0.0, -0.75, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, 1.0, -0.5, 0.5, -1.0, -0.75, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.75, 0.0, -0.25, -0.75, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, 0.5, -0.25, 0.75, -0.25, -0.5, -1.0, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    texture400.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([0.75, 0.25, 1.0, -0.5, -0.75, 1.0, 0.25, -0.25, 1.0, -0.5, -1.0, -0.5, -0.75, 1.0, -1.0, 1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.25, -0.25, -1.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, -0.5, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.0, 0.75, -1.0, -0.75, -1.0, -0.75, 0.0, -0.75, -0.5, -1.0, 1.0, 0.5, -1.0, 1.0, 0.25, 0.25, 0.0, 0.5, 0.5, 1.0, 0.5, -0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, 0.0, 0.5, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, 0.0, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, -0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 1.0, 0.0, 0.25, -0.5, -0.25, 0.5, 0.5, -0.25, -0.75, ]);
    buffer200.destroy()
    query300.destroy()
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    query300.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    device40.destroy();
    texture301.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder200.popDebugGroup();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query200.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    
    device30.pushErrorScope("validation");
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer201.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
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
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer203.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    query300.destroy()
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
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
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    device30.pushErrorScope("internal");
    buffer301.destroy()
    const array3 = new Float32Array([-0.25, -0.5, -0.25, -1.0, 0.5, 0.25, -0.75, 0.0, -0.5, 0.75, 1.0, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, -0.25, -1.0, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, 0.75, -0.25, -1.0, 0.0, -1.0, -0.5, 1.0, 1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 1.0, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -1.0, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.75, -0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, -1.0, 0.0, -0.25, -0.75, -1.0, -0.5, 1.0, 0.0, 0.25, 0.25, -0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, 1.0, 1.0, 0.75, ]);
    compute_pass_encoder3000.popDebugGroup()
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
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
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    buffer300.destroy()
    
    
    compute_pass_encoder3000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder301.setVertexBuffer(0, buffer302);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    device30.pushErrorScope("validation");
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.setVertexBuffer(0, buffer302);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    texture302.destroy();
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query300.destroy()
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    buffer302.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    query300.destroy()
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    buffer304.destroy()
    query301.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer306.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3030.setPipeline(render_pipeline300);
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setPipeline(render_pipeline301);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array4 = new Float32Array([0.5, -0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, 0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 1.0, 0.75, -0.25, 0.25, 1.0, -0.5, 0.25, 0.75, -1.0, 0.25, 0.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.25, -0.75, 1.0, 0.25, -1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, -1.0, 1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.25, 0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.0, 0.5, -1.0, 1.0, 0.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, ]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    device50.pushErrorScope("internal");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3030.setStencilReference(1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const array5 = new Float32Array([0.5, 0.25, -0.75, -1.0, 0.75, -0.25, -0.75, 1.0, 0.25, 0.5, 0.0, 1.0, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 1.0, -0.75, -1.0, 0.75, 0.25, -1.0, -0.25, 0.75, 1.0, 0.0, -0.5, -0.5, -0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.75, -0.5, 0.75, -0.25, 0.5, 0.5, -0.5, -1.0, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, 0.5, 0.0, -0.5, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, 0.5, 0.25, -0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, -0.5, -0.75, 0.25, 0.25, 1.0, -1.0, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, -0.5, -0.5, -0.75, 0.25, -0.25, -0.75, -1.0, 0.75, -1.0, 0.5, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query500.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder302.draw(3);
    
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer305.destroy()
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query501.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    render_bundle_encoder301.popDebugGroup();
    buffer502.destroy()
    query500.destroy()
    
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    query500.destroy()
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.5, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.5, -1.0, 0.25, 0.5, 0.25, -0.75, 0.75, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -0.75, -0.75, -0.5, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, -0.25, -0.75, -0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 0.75, -1.0, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, 0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.25, -0.75, 0.5, -1.0, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, -1.0, 0.75, -0.75, ]);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder3050.setPipeline(render_pipeline3010);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer501.destroy()
    compute_pass_encoder3040.setPipeline(compute_pipeline303);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline3010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group302);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.draw(3);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    query300.destroy()
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.insertDebugMarker("marker");
    compute_pass_encoder3000.setPipeline(compute_pipeline305);
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    buffer308.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-0.25, 0.25, 0.25, -1.0, 0.5, 0.75, -0.25, 0.25, -1.0, -0.25, -0.75, 0.5, -1.0, -1.0, 0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.5, -0.5, -1.0, 0.0, 0.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 0.75, -0.25, 0.75, -0.5, -0.5, -0.5, -1.0, -0.25, -0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.75, -0.5, -0.75, 0.25, -0.75, 0.0, -1.0, 1.0, 0.5, -0.25, 0.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 0.5, -0.75, 1.0, -0.75, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, 0.25, -0.5, -0.5, ]);
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3050.pushDebugGroup("group_marker");
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_pass_encoder3030.setVertexBuffer(0, buffer305);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3015, 0);
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group305);
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_buffer500 = command_encoder500.finish();
    query500.destroy()
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group306);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3050.popDebugGroup();
    render_bundle_encoder302.popDebugGroup();
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device30.queue.writeBuffer(buffer3018, 0, array7, 0, array7.length);
    render_bundle_encoder301.popDebugGroup();
    buffer3013.destroy()
    buffer3014.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    buffer303.destroy()
    buffer3017.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    buffer3019.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    query302.destroy()
    buffer3010.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer3015, 0, array2, 0, array2.length);
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer3015, 0, array2, 0, array2.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3050.setStencilReference(1);
    device30.pushErrorScope("validation");
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.finish();
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    command_encoder501.resolveQuerySet(
        query502,
        0,
        32,
        buffer504,
        0
    )
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device30.queue.writeBuffer(buffer3018, 0, array2, 0, array2.length);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer700 = command_encoder700.finish();
    const array8 = new Float32Array([0.75, -0.75, -0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, -0.75, 0.5, -0.25, 0.0, 0.75, -0.5, -0.5, 1.0, -0.25, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -0.75, 0.0, 1.0, 1.0, -0.25, -0.5, 0.75, -1.0, -0.75, -1.0, 0.25, -0.75, 0.5, -0.5, -0.25, 0.25, 0.75, 0.5, 0.5, -0.75, -0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, -0.75, 1.0, 0.0, 0.25, -0.5, -1.0, -1.0, 0.5, ]);
    device30.queue.writeBuffer(buffer3018, 0, array3, 0, array3.length);
    compute_pass_encoder3040.insertDebugMarker("marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder3020.popDebugGroup();
    
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    query301.destroy()
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer3015, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer3018, 0, array0, 0, array0.length);
    buffer503.destroy()
    query501.destroy()
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    query502.destroy()
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setVertexBuffer(0, buffer302);
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder3050.popDebugGroup();
    compute_pass_encoder5020.setPipeline(compute_pipeline505);
    render_pass_encoder3020.setVertexBuffer(0, buffer302);
    render_pass_encoder3050.drawIndirect(buffer3021, 0);
    render_pass_encoder3020.drawIndirect(buffer3015, 0);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group501);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5010.setPipeline(render_pipeline500);
    device70.queue.submit([command_buffer700, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.end();
    compute_pass_encoder5020.dispatchWorkgroups(100);
    render_pass_encoder3020.end();
    compute_pass_encoder3040.end();
    command_encoder304.popDebugGroup()
    render_pass_encoder3050.end();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer304 = command_encoder304.finish();
    command_encoder302.popDebugGroup()
    const command_buffer305 = command_encoder305.finish();
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group307);
    compute_pass_encoder5020.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3024, 0);
    const command_buffer502 = command_encoder502.finish();
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    const command_buffer303 = command_encoder303.finish();
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer304, ]);
}