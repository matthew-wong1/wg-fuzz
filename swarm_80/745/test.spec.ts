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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.pushErrorScope("internal");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, -0.5, 0.75, 0.0, -1.0, -1.0, -1.0, 0.75, -0.5, 0.0, 1.0, -0.25, -0.25, -0.25, -0.25, 0.75, 0.75, 1.0, -0.5, 0.75, -1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 0.75, -1.0, -0.25, -0.5, -0.25, 0.75, -1.0, 0.75, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.25, 0.5, 0.5, 0.75, 0.75, -1.0, 1.0, -0.5, 0.75, -0.75, -0.5, -0.75, 0.75, -0.75, 1.0, -0.5, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array1 = new Float32Array([-0.75, 0.5, 0.5, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, -1.0, 0.0, -0.75, -0.25, -0.5, -0.75, -0.25, 1.0, 0.25, 0.25, -0.25, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, 0.25, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, -1.0, 1.0, 0.75, -0.5, 1.0, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, -0.25, 0.75, -1.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, -0.25, -1.0, 0.75, -1.0, -0.25, 0.25, 1.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.5, 1.0, -0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, -0.75, -1.0, 0.5, 0.25, 0.0, -0.75, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0000.popDebugGroup()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    texture101.destroy();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture102.destroy();
    texture000.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder101.popDebugGroup()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    command_encoder105.pushDebugGroup("mygroupmarker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device30.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder105.insertDebugMarker("mymarker");
    query100.destroy()
    const array2 = new Float32Array([-0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.25, 0.25, 0.75, 0.5, -0.5, -0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 1.0, 0.5, 1.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 0.5, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.75, 1.0, -0.75, -0.75, -1.0, -0.75, -0.5, -0.5, 0.0, -1.0, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.25, 0.0, 0.75, -1.0, 0.5, -0.75, -1.0, -1.0, -0.75, -1.0, 0.75, 0.5, 0.25, 1.0, -0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.75, 1.0, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 0.0, -1.0, 0.75, 0.25, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder105.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture103.destroy();
    command_encoder105.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    query101.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    query200.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query101.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query000.destroy()
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder003.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("out-of-memory");
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
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
    query102.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1040.insertDebugMarker("marker")
    texture105.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder003.insertDebugMarker("mymarker");
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query101.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    query103.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query103.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    query103.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query001.destroy()
    query101.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    command_encoder201.insertDebugMarker("mymarker");
    texture200.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query000.destroy()
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
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query104.destroy()
    query201.destroy()
    device40.destroy();
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder1010.popDebugGroup()
    query105.destroy()
    device10.queue.writeTexture({ texture: texture107 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer200 = command_encoder200.finish();
    query201.destroy()
    
    compute_pass_encoder1040.popDebugGroup()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture107 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    query104.destroy()
    query101.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    command_encoder201.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("internal");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    compute_pass_encoder1060.insertDebugMarker("marker")
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query201.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    query105.destroy()
    
    query002.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    query201.destroy()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0030.popDebugGroup()
    query000.destroy()
    texture004.destroy();
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    compute_pass_encoder1050.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    query202.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    query201.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.0, 0.25, 0.75, -0.75, 0.5, -1.0, 0.5, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, -1.0, -0.75, -0.5, 0.5, 1.0, 0.0, 0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 0.5, 0.0, -0.75, -0.75, -0.75, -0.75, -0.75, -0.5, -0.5, -0.5, 0.0, 0.0, 0.75, -1.0, 1.0, 0.25, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.0, 0.75, 0.5, 1.0, -1.0, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.75, 0.25, 1.0, -0.5, 1.0, 0.0, 0.5, ]);
    texture001.destroy();
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeTexture({ texture: texture107 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device10.queue.writeTexture({ texture: texture107 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const array4 = new Float32Array([-0.75, -0.75, 0.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.25, 0.5, 0.0, 0.0, -0.25, 1.0, 0.0, 0.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 1.0, 0.75, -0.25, 0.25, 1.0, 0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.5, 1.0, -1.0, -0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, -0.75, 0.25, 0.25, -1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, 0.25, -0.5, -0.75, -0.5, 0.25, -0.25, 0.5, -0.75, 0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.25, 0.5, 0.75, 0.5, 0.5, 0.25, ]);
    query101.destroy()
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    compute_pass_encoder0020.popDebugGroup()
    query104.destroy()
    
    const command_buffer107 = command_encoder107.finish();
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    texture104.destroy();
    const array5 = new Float32Array([0.0, 1.0, -0.75, -0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 1.0, 0.0, -0.5, 1.0, 0.25, 0.5, -0.5, 1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 0.5, 0.0, 1.0, 0.0, -0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, 0.25, 0.5, 0.25, -0.25, 1.0, -1.0, -0.75, 0.25, -0.25, 0.75, 0.5, 0.75, -1.0, 0.75, 0.5, 0.0, -0.75, -0.75, 0.0, 0.75, -0.75, -0.25, -0.75, 0.0, 0.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.0, -0.75, 0.25, 0.75, -1.0, -1.0, 1.0, -0.5, -0.5, 0.25, 1.0, -1.0, -0.5, -0.5, 0.5, 0.25, 0.0, -0.5, -0.25, 0.0, 0.5, 0.0, -0.25, ]);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const array6 = new Float32Array([-0.75, -0.75, 0.75, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, 1.0, 0.75, 1.0, 0.0, -0.25, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.0, 0.5, 1.0, -0.25, -0.25, -0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.5, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 0.25, 0.5, -1.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, 0.0, 0.75, 1.0, 0.25, 1.0, 0.75, 0.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, -0.75, 0.75, -0.25, 0.25, -1.0, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, -1.0, 0.75, 0.75, ]);
    query103.destroy()
    texture107.destroy();
    
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    compute_pass_encoder1060.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
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
    query103.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query104.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer001, ]);
    query004.destroy()
    compute_pass_encoder1010.popDebugGroup()
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    texture003.destroy();
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const array7 = new Float32Array([0.0, 0.25, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.25, -0.75, -0.5, 0.5, -0.25, 1.0, 1.0, -0.5, 0.25, 0.5, 1.0, -0.25, -0.25, 0.0, 0.75, 0.25, 0.75, -0.75, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, -0.75, -0.25, -0.25, 1.0, -0.25, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.75, -1.0, 1.0, -1.0, 0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 1.0, 0.25, 1.0, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.5, 0.0, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, -0.75, -0.25, 0.5, 0.0, 0.0, -1.0, -0.5, 1.0, 0.0, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder1050.insertDebugMarker("marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder1040.insertDebugMarker("marker")
    query100.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    texture002.destroy();
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder1060.insertDebugMarker("marker")
    query104.destroy()
    texture005.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query205.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query101.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query203.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query000.destroy()
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder1060.insertDebugMarker("marker")
    
    
    texture006.destroy();
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    compute_pass_encoder1040.insertDebugMarker("marker")
    query100.destroy()
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.pushErrorScope("validation");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder1060.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    command_encoder005.popDebugGroup()
    compute_pass_encoder1080.insertDebugMarker("marker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    compute_pass_encoder0020.popDebugGroup()
    query102.destroy()
    query204.destroy()
    query203.destroy()
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    query004.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query200.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    device60.pushErrorScope("internal");
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
    
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    query001.destroy()
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    query001.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const sampler503 = device50.createSampler( { label: "sampler503" } );
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
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    query004.destroy()
    query102.destroy()
    command_encoder006.insertDebugMarker("mymarker");
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_buffer501 = command_encoder501.finish();
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    device50.queue.submit([command_buffer501, ]);
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    query002.destroy()
    query501.destroy()
    query500.destroy()
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder1060.insertDebugMarker("marker")
    query100.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query203.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    query001.destroy()
    compute_pass_encoder1020.popDebugGroup()
    
    texture503.destroy();
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture106.destroy();
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.pushDebugGroup("mygroupmarker")
    texture502.destroy();
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query203.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    query502.destroy()
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const command_buffer202 = command_encoder202.finish();
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
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
    query105.destroy()
    query104.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query102.destroy()
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const array8 = new Float32Array([0.5, 0.5, 0.0, 0.75, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, -0.25, 0.75, 0.0, -1.0, 0.0, -1.0, 0.0, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, 0.5, 1.0, 0.75, 0.75, 0.25, 0.5, -0.5, -0.25, 0.5, -0.75, -1.0, 0.5, 0.75, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, 1.0, 0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, 0.0, 0.75, 0.5, 0.75, -1.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.5, -1.0, -0.25, 0.75, 0.0, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.75, 0.0, -0.75, 0.75, 0.75, 1.0, 1.0, 0.5, -0.5, ]);
    query001.destroy()
    compute_pass_encoder0050.popDebugGroup()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer107, ]);
    command_encoder006.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder1050.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer006, ]);
}