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
    const array0 = new Float32Array([-1.0, 0.0, 1.0, 1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 0.0, 1.0, -0.75, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, -1.0, 0.25, -1.0, -1.0, -1.0, 0.5, 0.5, -1.0, -0.25, 1.0, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.5, 1.0, 1.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.25, -0.75, -0.75, 0.5, -0.25, 0.25, -1.0, -0.25, 0.25, 0.0, -0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 0.0, 0.25, -1.0, -1.0, -0.25, -1.0, 1.0, -0.75, 0.75, 0.5, 0.0, 0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -1.0, -0.25, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, 0.75, 0.75, 1.0, ]);
    
    const array1 = new Float32Array([-1.0, 0.75, -0.25, 0.75, -0.75, 0.0, -0.25, -0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.0, -1.0, 0.0, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.25, 1.0, -0.5, 0.0, -0.75, -0.5, -0.75, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 0.25, 0.75, -1.0, 0.5, -0.5, -0.5, 1.0, -1.0, -0.75, 0.5, 1.0, 1.0, ]);
    const array2 = new Float32Array([0.25, 0.75, -0.25, 0.5, 0.75, 1.0, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.25, -0.75, 0.75, -0.5, -1.0, 0.25, 1.0, 0.75, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, -0.5, -0.75, -0.5, 0.0, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.25, 0.75, -0.75, -0.75, -0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -0.75, 1.0, -0.5, -0.25, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, -1.0, 0.5, -1.0, 0.5, -0.5, 0.75, -1.0, 0.25, -0.25, -0.5, -0.25, -0.75, 1.0, 1.0, 0.25, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.25, 1.0, -0.25, -0.25, -0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, 0.5, 0.25, 0.0, -0.75, -0.5, -0.5, 0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -1.0, 0.5, 0.25, 0.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.5, 0.0, 0.75, -0.25, -0.5, -0.25, 0.5, 0.0, 1.0, -1.0, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.5, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 0.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.25, 0.5, -0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device50.pushErrorScope("internal");
    
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array4 = new Float32Array([0.0, -0.25, -1.0, 0.75, 0.75, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, -0.25, -0.75, 0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 0.75, 0.5, 0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, -0.25, -0.5, 0.25, 0.0, -1.0, -0.5, -0.25, 0.0, -0.25, -1.0, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, -0.75, -0.75, -1.0, -0.5, -1.0, 0.0, 0.75, -0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.75, -0.75, 0.75, 0.0, 1.0, -1.0, -1.0, 0.75, 0.5, 1.0, -1.0, -0.5, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device50.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    texture400.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const array5 = new Float32Array([1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.75, -0.5, -0.25, 1.0, 0.25, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 1.0, 0.5, -0.25, 0.25, -1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 1.0, 0.25, 1.0, -0.5, -0.25, 0.25, 0.75, -0.5, 0.75, 1.0, -1.0, -0.25, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, -0.5, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 0.25, 0.75, 1.0, -1.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.25, -1.0, -0.5, 0.5, 1.0, -0.75, 0.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 0.75, 0.5, -0.75, 0.75, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer401.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_buffer401 = command_encoder401.finish();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const command_buffer400 = command_encoder400.finish();
    device40.pushErrorScope("internal");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array6 = new Float32Array([-1.0, 0.75, 0.25, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.5, -1.0, 0.75, -0.25, -0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, 0.25, 0.0, -0.25, -0.5, 1.0, 0.0, 0.25, 0.75, -1.0, -0.5, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.5, 0.75, -1.0, -1.0, -0.25, -0.25, 1.0, -0.75, -1.0, -0.25, -0.75, -0.5, -0.5, -0.25, -1.0, 0.5, 0.0, -0.25, 0.5, 0.75, 0.75, 0.25, 0.5, 1.0, 1.0, -0.75, -0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, -0.25, -0.75, 0.5, -1.0, -0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 1.0, 0.5, ]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder403.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    command_encoder403.clearBuffer(buffer404);
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    device30.pushErrorScope("internal");
    command_encoder402.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    
    buffer402.destroy()
    command_encoder403.popDebugGroup()
    command_encoder402.copyBufferToBuffer(
        buffer403,
        0,
        buffer404,
        0,
        400
    );
    command_encoder403.clearBuffer(buffer404);
    query400.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer401, ]);
    const array7 = new Float32Array([-0.75, -0.5, 0.25, 0.0, 0.25, -1.0, -0.75, 1.0, 0.0, 0.0, -1.0, -0.25, -1.0, -0.75, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, -0.75, 0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.75, 1.0, 0.25, -0.5, -1.0, -1.0, -0.75, -0.75, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, -0.25, -0.5, -0.75, -0.25, -1.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 1.0, 0.75, 0.0, -1.0, 0.0, 0.75, 0.0, 0.25, -1.0, -0.25, -0.25, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, 0.0, 0.5, -0.75, 0.0, -0.75, -0.5, -1.0, -0.25, 0.25, 0.25, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 1.0, 1.0, -0.5, -0.5, -0.75, 0.75, -1.0, 0.25, -0.25, 1.0, 0.0, 0.0, ]);
    command_encoder404.clearBuffer(buffer404);
    const command_buffer404 = command_encoder404.finish();
    buffer403.destroy()
    
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    command_encoder403.clearBuffer(buffer404);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const command_buffer403 = command_encoder403.finish();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    query401.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder405.pushDebugGroup("mygroupmarker")
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
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
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    command_encoder405.clearBuffer(buffer404);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query400.destroy()
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    
    device40.pushErrorScope("internal");
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    command_encoder406.pushDebugGroup("mygroupmarker")
    
    command_encoder405.clearBuffer(buffer404);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    texture403.destroy();
    
    const command_buffer407 = command_encoder407.finish();
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    texture402.destroy();
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    command_encoder405.clearBuffer(buffer404);
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    command_encoder408.copyBufferToBuffer(
        buffer405,
        0,
        buffer404,
        0,
        400
    );
    command_encoder408.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    command_encoder406.clearBuffer(buffer404);
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    device40.queue.submit([command_buffer403, command_buffer407, ]);
    query401.destroy()
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    compute_pass_encoder4050.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    command_encoder408.clearBuffer(buffer404);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    
    command_encoder406.clearBuffer(buffer404);
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    query402.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    query402.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder408.popDebugGroup()
    query700.destroy()
    device20.destroy();
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    query403.destroy()
    const command_encoder409 = device40.createCommandEncoder({ label: "command_encoder409" });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const sampler408 = device40.createSampler( { label: "sampler408" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    buffer407.destroy()
    
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    buffer406.destroy()
    compute_pass_encoder7010.insertDebugMarker("marker")
    texture401.destroy();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    command_encoder703.pushDebugGroup("mygroupmarker")
    buffer700.destroy()
    const command_encoder4010 = device40.createCommandEncoder({ label: "command_encoder4010" });
    command_encoder409.clearBuffer(buffer404);
    
    command_encoder4010.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder406.copyBufferToBuffer(
        buffer405,
        0,
        buffer404,
        0,
        400
    );
    const sampler409 = device40.createSampler( { label: "sampler409" } );
    buffer405.destroy()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    query400.destroy()
    query404.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    query401.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder4050.insertDebugMarker("marker")
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    command_encoder406.popDebugGroup()
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device70.pushErrorScope("internal");
    query403.destroy()
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    compute_pass_encoder4020.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    const compute_pass_encoder40100 = command_encoder4010.beginComputePass({ label: "compute_pass_encoder40100" });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device40.pushErrorScope("internal");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query403.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer701.destroy()
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    command_encoder703.popDebugGroup()
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    command_encoder703.clearBuffer(buffer702);
    
    const array8 = new Float32Array([0.0, -0.25, 0.75, -0.5, -1.0, -0.5, -0.5, 0.0, 1.0, -0.75, 1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, 0.25, 0.75, 1.0, -0.75, 0.75, 0.0, -1.0, 0.5, 0.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.5, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.0, 0.5, -1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, -0.75, 0.75, 0.0, 0.5, -1.0, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, 1.0, 0.25, 1.0, 0.0, 0.25, -0.75, -0.5, -0.75, -0.5, -0.75, -1.0, 1.0, -0.5, -0.75, -0.5, -0.25, -0.75, 0.25, -0.5, -0.75, 0.25, 0.5, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    
    const compute_pass_encoder4080 = command_encoder408.beginComputePass({ label: "compute_pass_encoder4080" });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4043 = texture404.createView({ label: "texture_view4043" });
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7020.insertDebugMarker("marker")
    query401.destroy()
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query400.destroy()
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    texture701.destroy();
    
    const command_buffer704 = command_encoder704.finish();
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    query701.destroy()
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    const command_buffer409 = command_encoder409.finish();
    const command_buffer703 = command_encoder703.finish();
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7020.popDebugGroup()
    
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder40100.insertDebugMarker("marker")
    
    
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    compute_pass_encoder7020.insertDebugMarker("marker")
    query702.destroy()
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    compute_pass_encoder7000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    buffer600.destroy()
    compute_pass_encoder4050.insertDebugMarker("marker")
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    texture405.destroy();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder7020.insertDebugMarker("marker")
    query403.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    texture702.destroy();
    query703.destroy()
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer702, 0, array5, 0, array5.length);
    compute_pass_encoder7010.insertDebugMarker("marker")
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder4050.popDebugGroup()
    buffer409.destroy()
    query407.destroy()
    query703.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    query405.destroy()
    device70.queue.submit([command_buffer704, ]);
    
    
    
    query703.destroy()
    texture700.destroy();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const sampler4010 = device40.createSampler( { label: "sampler4010" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
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
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder40100.pushDebugGroup("group_marker")
    query402.destroy()
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query404.destroy()
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    compute_pass_encoder40100.popDebugGroup()
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    query407.destroy()
    const render_pipeline4014 = device40.createRenderPipeline({
        label: "render_pipeline4014",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder4011 = device40.createCommandEncoder({ label: "command_encoder4011" });
    compute_pass_encoder4060.insertDebugMarker("marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    const texture_view4044 = texture404.createView({ label: "texture_view4044" });
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device70.queue.writeBuffer(buffer702, 0, array0, 0, array0.length);
    buffer404.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query402.destroy()
    
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder4060.insertDebugMarker("marker")
    compute_pass_encoder4060.insertDebugMarker("marker")
    query407.destroy()
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7010.insertDebugMarker("marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const query409 = device40.createQuerySet({
        label: "query409",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const command_buffer601 = command_encoder601.finish();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder4080.insertDebugMarker("marker")
    buffer408.destroy()
    const render_pipeline4016 = device40.createRenderPipeline({
        label: "render_pipeline4016",
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
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    
    query404.destroy()
    query400.destroy()
    
    render_bundle_encoder401.popDebugGroup();
    query405.destroy()
    
    device40.queue.submit([command_buffer409, ]);
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    buffer602.destroy()
    const sampler4011 = device40.createSampler( { label: "sampler4011" } );
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    
    compute_pass_encoder7020.insertDebugMarker("marker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder4050.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, ]);
    const command_buffer4011 = command_encoder4011.finish();
}