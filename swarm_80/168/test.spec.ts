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
    const array0 = new Float32Array([-0.5, 1.0, -0.75, 0.5, 1.0, -0.75, 0.25, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, -1.0, -0.25, -0.75, 0.25, -0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.25, -1.0, 0.75, 0.5, -1.0, 0.0, 0.75, 0.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.25, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, 1.0, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -1.0, 1.0, -0.5, 0.25, 0.25, -0.25, 0.5, 0.75, 0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 0.0, -0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, ]);
    
    const array1 = new Float32Array([0.25, -0.25, -0.25, 0.75, 0.0, 0.25, 1.0, 1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.5, -1.0, -0.25, -0.5, -0.5, -0.75, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.0, -0.5, 0.75, -0.5, -0.5, 0.25, -0.75, -1.0, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, -1.0, 0.0, 1.0, -0.5, -0.5, 0.5, -0.5, 0.25, 0.25, -0.5, -0.25, 0.0, 0.75, 1.0, 1.0, 1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 1.0, 0.25, -0.5, 0.75, ]);
    
    
    
    const array2 = new Float32Array([0.25, 0.75, -0.75, 0.75, 0.25, -0.75, 0.75, -1.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.75, 0.25, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, 1.0, 0.5, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.0, -0.75, 0.0, -0.25, -0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, 0.25, -0.25, -0.75, -0.5, -0.5, -0.25, -0.25, -0.75, 1.0, 0.25, 1.0, 1.0, -0.5, 0.75, -0.25, 0.75, -0.5, 0.0, 0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.75, -1.0, 0.25, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 0.5, ]);
    const array3 = new Float32Array([-0.25, -0.25, -0.25, -0.5, -0.5, -1.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, -0.75, 0.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.5, -0.75, -0.5, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.25, -0.75, 0.5, 1.0, 0.75, -1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -0.25, -0.5, 0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.75, 1.0, 0.0, -0.75, 0.5, -1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 1.0, 1.0, 0.0, -0.75, 0.25, 0.75, -1.0, -0.25, 1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -0.75, -0.5, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, -1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, 0.5, -0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 1.0, 0.25, -0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, 0.75, 0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -1.0, 0.25, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([1.0, 0.75, -1.0, 0.0, -0.25, -0.25, -0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 0.0, 0.75, -0.5, 1.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, -0.5, 1.0, -0.75, 0.75, -0.5, -0.5, 0.5, 0.25, 0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.75, 0.75, 1.0, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, -0.5, 0.25, -0.5, 0.5, -1.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.5, 0.0, 1.0, 0.0, 0.75, 0.75, -0.25, -0.25, -0.75, -0.5, -0.75, 0.0, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 1.0, -0.25, -1.0, -0.5, ]);
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
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const array6 = new Float32Array([0.0, 0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 0.75, 1.0, -0.25, 0.25, -1.0, -0.5, 0.5, -0.25, 0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, 0.0, 0.25, -1.0, 0.25, 0.75, -0.25, 1.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, -1.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.5, 0.0, 0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, -0.25, 1.0, 0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -1.0, 0.0, 0.75, -0.5, -1.0, 1.0, 0.25, 1.0, ]);
    
    
    
    device20.pushErrorScope("validation");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer202.destroy()
    
    buffer201.destroy()
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    query202.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.pushErrorScope("validation");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    query201.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer200.destroy()
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_buffer201 = command_encoder201.finish();
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    query202.destroy()
    
    query201.destroy()
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer203.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query201.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    query201.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    query202.destroy()
    query203.destroy()
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    query202.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query500.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    const array7 = new Float32Array([0.25, -0.5, -0.75, 0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -0.75, -1.0, 1.0, 0.5, -0.25, -1.0, -0.25, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, 0.75, -0.25, -0.75, 1.0, 1.0, -1.0, -1.0, 0.0, -1.0, -1.0, -0.5, 0.0, 0.75, -0.5, -0.25, -0.25, -0.5, 0.5, 0.25, 1.0, 0.75, 0.5, 0.75, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, -0.5, -0.5, -0.75, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, -0.5, 0.75, 0.75, ]);
    
    const command_buffer500 = command_encoder500.finish();
    query202.destroy()
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
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query201.destroy()
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query500.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    query203.destroy()
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder2000.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query201.destroy()
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder2020.popDebugGroup()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    command_encoder502.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder502.popDebugGroup()
    
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    query300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    buffer300.destroy()
    const array8 = new Float32Array([0.25, -1.0, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, 0.75, 1.0, 0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 1.0, -0.75, -0.25, 0.5, -1.0, -0.5, 0.5, -1.0, -1.0, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -1.0, -0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, 0.75, -1.0, -0.25, 0.25, 0.75, -0.25, 1.0, -0.5, 1.0, -1.0, 0.0, 1.0, -0.25, -0.75, -1.0, -0.25, 1.0, -0.5, 0.25, -1.0, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -0.5, -0.5, 0.75, 0.25, 0.25, -0.5, 0.25, -0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 0.25, 0.75, -1.0, 0.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.75, -0.5, -0.5, 1.0, 1.0, 0.75, 0.0, 1.0, -1.0, 0.0, 1.0, 0.25, ]);
    
    
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    query501.destroy()
    query203.destroy()
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder502.popDebugGroup()
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const command_buffer600 = command_encoder600.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    query204.destroy()
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query200.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device70.pushErrorScope("internal");
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder203.clearBuffer(buffer204);
    
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2000.popDebugGroup()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device20.queue.submit([command_buffer201, ]);
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    buffer700.destroy()
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    buffer501.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device40.destroy();
    
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    
    
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query207.destroy()
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query201.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder5020.insertDebugMarker("marker")
    query204.destroy()
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    query207.destroy()
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
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
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    
    device60.queue.submit([command_buffer600, ]);
    
    query204.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    device20.pushErrorScope("internal");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    
    
    
    device60.destroy();
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline2023 = device20.createRenderPipeline({
        label: "render_pipeline2023",
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
    
    compute_pass_encoder5010.popDebugGroup()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline2024 = device20.createRenderPipeline({
        label: "render_pipeline2024",
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
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query700.destroy()
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    compute_pass_encoder2020.popDebugGroup()
    buffer204.destroy()
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_pipeline2025 = device20.createRenderPipeline({
        label: "render_pipeline2025",
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
    
    const render_pipeline2026 = device20.createRenderPipeline({
        label: "render_pipeline2026",
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
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query504.destroy()
    
    const command_buffer701 = command_encoder701.finish();
    device50.queue.submit([command_buffer500, ]);
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    query500.destroy()
    compute_pass_encoder5030.popDebugGroup()
    query203.destroy()
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    
    const render_pipeline2027 = device20.createRenderPipeline({
        label: "render_pipeline2027",
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
    render_bundle_encoder502.insertDebugMarker("marker");
    query501.destroy()
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder700.popDebugGroup()
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline2028 = device20.createRenderPipeline({
        label: "render_pipeline2028",
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
    const render_pipeline2029 = device20.createRenderPipeline({
        label: "render_pipeline2029",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    query502.destroy()
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    const render_pipeline2030 = device20.createRenderPipeline({
        label: "render_pipeline2030",
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
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    const render_pipeline2031 = device20.createRenderPipeline({
        label: "render_pipeline2031",
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
    
    command_encoder504.pushDebugGroup("mygroupmarker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    query203.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder7000.popDebugGroup()
    
    command_encoder504.clearBuffer(buffer502);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const render_pipeline2032 = device20.createRenderPipeline({
        label: "render_pipeline2032",
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
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    device70.queue.submit([command_buffer701, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder504.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    compute_pass_encoder2000.popDebugGroup()
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder5020.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}