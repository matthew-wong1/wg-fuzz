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
    
    const array0 = new Float32Array([0.75, 0.0, -0.25, -0.25, -0.5, 0.25, 0.5, 1.0, 0.75, 0.0, -0.5, -0.75, 0.0, 1.0, 0.5, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.75, -0.75, -0.5, 0.25, 0.25, -0.75, 1.0, 1.0, 0.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.25, 0.75, 0.5, -0.75, 1.0, 0.25, 0.25, -0.75, 0.75, -0.75, 0.25, -0.75, -1.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, 0.0, -0.5, -0.5, -0.5, -0.5, -0.75, -0.75, 0.25, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, -1.0, -0.25, -1.0, -0.75, -1.0, -0.5, ]);
    
    const array1 = new Float32Array([0.25, 0.25, 1.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, 0.25, -0.75, -0.5, -0.75, 0.0, -0.5, -0.5, 0.25, -0.25, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.5, 0.5, 1.0, -1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, 0.75, -0.75, 0.0, 0.75, -1.0, 0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 0.25, 1.0, -0.5, 1.0, 0.25, -0.75, 0.75, 0.0, -1.0, -0.75, -1.0, -0.75, 0.0, -0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 0.5, -0.25, -0.5, -1.0, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, -0.75, -1.0, 0.5, 0.0, 0.25, ]);
    
    
    const array2 = new Float32Array([-1.0, 0.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.0, 0.5, -0.5, -0.75, -1.0, 0.75, 0.0, 0.0, -0.5, 0.75, 1.0, -0.75, -0.75, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.25, 0.0, -0.25, 1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, -0.25, 0.5, -1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.5, -0.25, 0.0, 1.0, -1.0, 1.0, -1.0, 0.0, 1.0, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, -0.25, 0.5, -0.25, -0.25, -1.0, 0.25, 0.25, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("internal");
    
    buffer000.destroy()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder000.insertDebugMarker("mymarker");
    buffer001.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0020.popDebugGroup()
    
    
    const array3 = new Float32Array([1.0, -0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, -1.0, 0.25, -0.5, -0.75, -0.25, 1.0, 0.25, -0.5, -0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 0.5, 0.0, 0.25, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -1.0, -0.5, 0.75, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.25, 0.75, -1.0, 0.25, -1.0, -0.5, 0.0, 1.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.25, -0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, -0.75, -0.25, -0.25, 0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 0.5, 0.0, ]);
    texture000.destroy();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder004.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0020.popDebugGroup()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture002.destroy();
    const array4 = new Float32Array([0.25, -0.5, -0.75, 0.25, -0.75, 0.75, -0.75, 1.0, 1.0, 0.5, 1.0, 0.5, -0.5, 1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 0.0, -0.25, -1.0, 0.5, 0.75, 0.5, 0.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 1.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.5, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, 0.5, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.5, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, ]);
    device30.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture001.destroy();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array5 = new Float32Array([-0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -0.75, 0.0, -1.0, -0.5, 0.5, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 0.0, 0.25, 0.5, 0.5, 0.0, 0.25, 0.0, 0.5, 1.0, 1.0, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.25, -0.5, 0.0, -1.0, -0.25, 0.5, -0.25, 1.0, 0.75, 0.25, 0.5, -0.75, 1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, -0.5, 0.75, 1.0, 0.75, -0.5, 1.0, 1.0, -0.75, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -1.0, 1.0, -1.0, 0.75, 0.25, 0.0, 0.75, 0.0, -1.0, -0.75, 0.5, 1.0, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -0.25, ]);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const array6 = new Float32Array([-1.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.0, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.25, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 0.75, 1.0, 0.75, -1.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.75, 1.0, 1.0, 1.0, 0.25, 1.0, -1.0, 0.0, 0.75, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 1.0, 0.25, 0.75, -0.5, -1.0, 0.75, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, 0.75, 0.0, 0.5, 0.75, 0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.5, 0.0, ]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    device10.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device00.pushErrorScope("validation");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_buffer004 = command_encoder004.finish();
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer002.destroy()
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
    buffer004.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device50.destroy();
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    texture100.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_buffer100 = command_encoder100.finish();
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    
    const array7 = new Float32Array([-1.0, 0.25, 0.5, -0.25, -1.0, 0.25, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 0.25, 0.75, -0.75, -1.0, 0.25, -1.0, 0.75, -0.5, 0.5, 0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -0.5, -0.25, 0.25, -0.5, -1.0, -1.0, 1.0, -0.5, 0.0, 0.0, -0.25, -1.0, 0.5, -1.0, -1.0, -0.75, -0.75, 1.0, -0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 0.5, -0.25, -0.75, 0.25, -0.75, 0.75, -0.25, -0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -1.0, -0.5, -0.5, 0.5, 0.5, 0.75, -0.5, 0.75, 1.0, -0.25, 1.0, 0.75, 1.0, -0.75, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, 0.25, 0.0, 0.0, -0.25, 0.5, -0.25, 1.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.25, -1.0, -0.5, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device10.queue.submit([command_buffer100, ]);
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    
    texture102.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder300.insertDebugMarker("mymarker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.submit([command_buffer003, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer101.destroy()
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    buffer301.destroy()
    buffer303.destroy()
    
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder300.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer100.destroy()
    texture003.destroy();
    
    buffer300.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    buffer302.destroy()
    device10.destroy();
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder002.popDebugGroup();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.pushErrorScope("internal");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture004.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const array8 = new Float32Array([0.25, -0.25, -0.5, -1.0, 0.75, 1.0, 0.75, 0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.75, 0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 1.0, 0.25, -0.25, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, -0.25, -0.75, 0.75, 0.75, -0.75, -1.0, 0.75, 0.25, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, 0.75, 0.25, -0.75, -0.75, -0.75, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, -0.25, -0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, -0.75, 0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, 0.0, 0.0, 0.75, 1.0, -0.25, -0.75, -1.0, 1.0, 0.25, ]);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    buffer005.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
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
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer700.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    
    render_bundle_encoder600.popDebugGroup();
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    buffer003.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    buffer304.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    command_encoder701.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    buffer006.destroy()
    device00.pushErrorScope("internal");
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    command_encoder702.insertDebugMarker("mymarker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    texture602.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    texture600.destroy();
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    texture601.destroy();
    command_encoder703.insertDebugMarker("mymarker");
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    command_encoder702.insertDebugMarker("mymarker");
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    render_bundle_encoder002.popDebugGroup();
    buffer600.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline302);
    render_bundle_encoder600.popDebugGroup();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_bundle_encoder001.popDebugGroup();
    
    buffer308.destroy()
    
    device70.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    command_encoder006.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const command_buffer602 = command_encoder602.finish();
    
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer309.destroy()
    const command_buffer400 = command_encoder400.finish();
    buffer3010.destroy()
    
    
    texture300.destroy();
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder7010.popDebugGroup()
    
    render_bundle_encoder300.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    buffer307.destroy()
    
    
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    buffer306.destroy()
    render_bundle_encoder300.popDebugGroup();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    buffer305.destroy()
    buffer701.destroy()
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    device40.pushErrorScope("internal");
    const array9 = new Float32Array([-1.0, 0.5, 0.5, 0.0, 0.75, -0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.75, 0.25, -0.5, -0.75, 0.25, -0.25, 0.25, 0.5, -1.0, -0.75, -0.75, -0.75, 0.5, 0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.25, 0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.25, -0.75, -0.25, -0.25, -0.5, 0.25, 0.5, -1.0, -1.0, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, -0.25, -0.5, 0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -1.0, 0.0, 0.25, -0.75, -0.25, 1.0, 0.0, 0.0, -0.5, 0.0, -0.5, -0.75, -0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.popDebugGroup();
    
    compute_pass_encoder0020.popDebugGroup()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer704 = command_encoder704.finish();
    device70.queue.submit([command_buffer704, ]);
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device00.queue.submit([command_buffer004, ]);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder0010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer302, ]);
}