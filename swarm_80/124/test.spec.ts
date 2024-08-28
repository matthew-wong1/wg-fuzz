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
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([0.25, 1.0, -0.25, 0.75, 0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 0.0, -1.0, 0.75, 0.5, 0.0, 0.0, 1.0, -0.25, -0.75, -0.75, 0.25, -0.75, 1.0, 0.75, -0.75, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.5, -0.25, -0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -0.75, -1.0, -1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 0.25, 0.75, -0.5, 0.5, -0.25, -0.5, -1.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 0.25, -1.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, 1.0, 0.0, 0.25, -0.25, -1.0, 0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 0.75, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    device00.queue.submit([command_buffer000, ]);
    device00.pushErrorScope("internal");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.75, 0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.0, -0.5, 1.0, 0.5, 0.25, -0.25, 0.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 1.0, 0.75, -0.5, 0.5, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, -0.5, -1.0, 0.75, 1.0, 0.0, -1.0, 0.5, 0.75, -0.5, 0.5, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.5, -0.25, 0.0, 1.0, -0.5, -0.5, -1.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -1.0, 0.0, 1.0, 0.5, 0.75, -1.0, -0.75, -0.75, 0.25, -1.0, -0.75, ]);
    texture000.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const array2 = new Float32Array([-0.5, 0.75, -0.5, -0.5, 1.0, -0.25, 1.0, -0.25, 1.0, 1.0, 0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, -0.75, 0.75, 0.5, -0.5, 0.0, -0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 1.0, -0.25, -0.25, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, -0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.25, 0.5, -0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, -1.0, -0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, 0.0, 0.75, 0.25, 0.25, 0.0, -0.25, 0.75, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, 1.0, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array3 = new Float32Array([0.5, 0.0, 0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.75, 1.0, -0.25, 0.25, 0.75, -0.25, 0.75, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 1.0, -0.5, 0.25, -0.25, -0.25, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 0.0, -0.5, 1.0, -1.0, -1.0, 1.0, 0.5, 0.25, 0.5, -0.5, 0.75, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -0.5, -0.5, -1.0, -0.5, 0.75, -0.75, 1.0, -0.25, -1.0, 0.25, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, 0.75, 0.25, -0.5, 0.75, -0.75, 0.25, -0.5, -0.25, 0.25, 1.0, -0.25, -1.0, 0.5, -0.25, 0.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.75, 0.0, 0.75, -0.75, ]);
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder003.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    device20.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array4 = new Float32Array([0.25, 0.25, -1.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.0, -0.25, 1.0, 0.0, -0.5, 0.75, 1.0, -0.5, -0.25, -0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.5, -0.75, 0.75, -0.75, 0.5, 0.5, 0.25, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 1.0, 0.5, 0.0, -0.25, 0.0, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.25, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, 0.5, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 0.5, -0.75, -0.75, 0.5, -0.25, 0.0, -0.75, 1.0, -1.0, -0.5, ]);
    
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder0010.popDebugGroup()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.popDebugGroup()
    buffer200.destroy()
    
    texture101.destroy();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const array5 = new Float32Array([0.75, 0.5, 0.75, 0.75, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, -0.25, 0.75, 0.0, -0.5, 0.75, 0.75, 1.0, -0.5, -0.5, 0.0, -1.0, 0.75, -0.5, 1.0, 0.25, 0.5, 1.0, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 0.0, -1.0, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, 0.75, -0.75, -0.25, 1.0, 1.0, 0.25, 1.0, -0.5, -0.25, -0.5, 0.25, -0.75, -0.25, 0.0, -0.25, 0.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.75, 0.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, -1.0, 0.0, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 0.75, 0.25, -1.0, 0.75, 0.75, 1.0, -0.25, 1.0, -0.25, ]);
    device00.pushErrorScope("internal");
    device20.destroy();
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
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer000.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array6 = new Float32Array([0.5, -0.75, 0.25, 1.0, -1.0, 0.75, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, 0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 1.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.75, -0.25, 0.0, 0.25, 0.0, -0.25, 0.0, -1.0, 0.25, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, 0.25, 0.25, -0.25, 0.75, -0.5, 0.5, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, 0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.25, 0.75, -1.0, 1.0, 0.0, -1.0, -0.5, -0.25, 0.5, 0.5, 1.0, -0.75, 0.25, 0.0, -0.25, ]);
    device10.pushErrorScope("out-of-memory");
    command_encoder005.insertDebugMarker("mymarker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder006.insertDebugMarker("mymarker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    compute_pass_encoder0010.popDebugGroup()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    
    command_encoder005.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    buffer300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder0050.setStencilReference(1);
    
    texture003.destroy();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    texture002.destroy();
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer101.destroy()
    const array7 = new Float32Array([-0.25, 1.0, -0.5, -0.5, -0.5, -0.25, 1.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.75, 0.5, -1.0, 0.0, -0.5, -0.5, -0.75, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, -0.25, 0.5, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, 1.0, 0.25, 0.25, -0.5, -0.25, 0.5, -0.75, 0.5, 1.0, 0.0, 1.0, 1.0, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, -0.25, -0.5, 0.5, 1.0, -0.5, -0.25, 1.0, -0.75, -0.75, 0.0, -0.5, -0.25, 1.0, -0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 1.0, -0.5, -1.0, -0.25, -0.25, 1.0, 0.25, 0.75, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 1.0, -0.5, ]);
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    buffer100.destroy()
    
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    buffer003.destroy()
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder0050.popDebugGroup();
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture102.destroy();
    render_pass_encoder0050.pushDebugGroup("group_marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer002.destroy()
    device00.pushErrorScope("internal");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture103.destroy();
    
    render_pass_encoder0050.popDebugGroup();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0060.popDebugGroup()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer004.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture004.destroy();
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0050.setStencilReference(1);
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    buffer001.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    
    compute_pass_encoder0020.popDebugGroup()
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    texture005.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0080.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    device50.pushErrorScope("internal");
    compute_pass_encoder0040.popDebugGroup()
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder0080.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    texture500.destroy();
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    buffer005.destroy()
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device10.pushErrorScope("validation");
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    compute_pass_encoder0060.insertDebugMarker("marker")
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    texture105.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0080.popDebugGroup();
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    command_encoder0010.clearBuffer(buffer006);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder0080.pushDebugGroup("group_marker");
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    texture501.destroy();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0040.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1000.executeBundles([])
    
    const array8 = new Float32Array([-0.75, -0.25, -0.25, 0.0, 1.0, -1.0, -0.75, 0.75, 0.5, 0.0, -0.75, -0.25, -1.0, -0.5, -0.75, 0.25, 0.0, -0.25, 0.25, 0.75, -1.0, -0.25, 0.5, 0.5, -1.0, 0.5, -0.5, -0.75, -0.25, -1.0, -1.0, 0.75, -1.0, -1.0, -1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, 0.75, -0.25, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, -0.25, 0.0, 0.5, 1.0, 0.25, -0.75, -0.75, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, -0.25, 1.0, -0.75, 0.5, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.5, ]);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    buffer501.destroy()
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    
    
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder00100.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    command_encoder504.insertDebugMarker("mymarker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder00100.pushDebugGroup("group_marker");
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    render_pass_encoder1000.executeBundles([])
    device00.pushErrorScope("validation");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder00100.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    render_pass_encoder0080.popDebugGroup();
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.submit([command_buffer003, ]);
    
    compute_pass_encoder0090.popDebugGroup()
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    render_pass_encoder0080.setStencilReference(1);
    
    compute_pass_encoder0090.insertDebugMarker("marker")
    compute_pass_encoder5020.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_pass_encoder00100.popDebugGroup();
    buffer007.destroy()
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    render_pass_encoder00100.executeBundles([])
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder1000.popDebugGroup();
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder00100.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device60.pushErrorScope("internal");
    buffer500.destroy()
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device50.queue.submit([command_buffer504, ]);
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0060.popDebugGroup()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5030.setStencilReference(1);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    texture106.destroy();
    device00.queue.submit([command_buffer007, ]);
    const render_pipeline1024 = device10.createRenderPipeline({
        label: "render_pipeline1024",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder0080.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    texture600.destroy();
    
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder1000.executeBundles([])
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_pass_encoder00100.executeBundles([])
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder0080.setStencilReference(1);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder5030.pushDebugGroup("group_marker");
    render_pass_encoder0080.setStencilReference(1);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5030.pushDebugGroup("group_marker");
    
    const render_pipeline1025 = device10.createRenderPipeline({
        label: "render_pipeline1025",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    const render_pipeline1026 = device10.createRenderPipeline({
        label: "render_pipeline1026",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_pass_encoder0050.executeBundles([])
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.popDebugGroup();
}