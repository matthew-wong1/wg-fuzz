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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const array0 = new Float32Array([-0.5, -1.0, 0.25, 0.5, 0.25, -0.75, -0.5, -1.0, 0.25, 0.75, 1.0, 0.25, 0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 0.75, 0.75, -0.75, 0.25, 0.75, 0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.75, 0.75, 1.0, 0.5, -0.75, -1.0, -0.5, -1.0, 0.5, 1.0, -0.5, -0.25, -0.5, -0.25, -0.75, 0.5, 0.5, 0.25, -0.25, -0.5, -0.75, -1.0, -0.25, 0.0, 0.75, 1.0, -0.5, -0.25, 0.5, -1.0, 1.0, -0.5, -1.0, -1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.0, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.5, 1.0, 0.25, ]);
    const array1 = new Float32Array([0.75, -0.25, -1.0, 0.0, 0.75, 0.25, 0.5, -0.75, -0.5, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, -0.75, 0.5, -0.25, -1.0, 0.5, 0.0, -0.25, 0.75, -0.5, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.75, 1.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.25, -0.25, -0.75, -1.0, -1.0, 0.0, 0.5, 0.5, 0.5, -0.5, -0.75, 1.0, 0.25, 0.5, -1.0, 1.0, -0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, -0.25, 0.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.5, 0.5, 1.0, 0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, -0.5, -1.0, ]);
    const array2 = new Float32Array([-0.25, 1.0, -0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 0.25, -0.25, 1.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.75, -0.25, -1.0, 0.25, -1.0, 0.75, -0.25, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, 0.0, 0.0, 1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.5, 0.75, 0.75, 0.5, 0.75, 0.5, 0.75, -1.0, -0.5, -1.0, 0.75, -1.0, 0.25, -0.25, 0.5, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.25, -1.0, 1.0, -0.25, 1.0, -1.0, 0.0, -0.5, -0.25, -1.0, 0.25, 0.5, 0.25, -1.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, -1.0, 0.25, 1.0, 0.5, ]);
    const array3 = new Float32Array([-0.25, 0.75, -0.5, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, -0.5, -0.75, -0.25, -0.5, 0.5, -0.75, 0.25, 0.25, -0.5, -0.25, 0.5, 0.75, -0.5, -1.0, -0.25, 0.5, 0.75, -0.25, -0.25, -0.75, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -0.25, -0.5, 0.5, -0.5, 0.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 1.0, -1.0, 0.25, 1.0, 0.5, 1.0, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, -0.25, -1.0, 0.0, -1.0, -0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -0.5, 1.0, -1.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([-0.25, -0.25, 0.75, -1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.5, 0.5, -1.0, 0.75, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, 1.0, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -1.0, -0.75, 0.0, 1.0, -0.5, -0.25, 1.0, -0.75, -0.5, 0.25, 0.0, 0.75, 1.0, -0.25, 1.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.25, -1.0, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, -0.25, -0.25, -0.5, 0.25, 0.75, 0.0, 1.0, 0.25, 0.0, 0.5, -0.25, 1.0, 1.0, -0.25, -1.0, -1.0, -0.25, 0.5, -0.25, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    
    device10.destroy();
    
    const array5 = new Float32Array([-0.5, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.5, 0.5, -1.0, 0.75, -0.75, 1.0, 0.25, 1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, -0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.25, -0.75, 0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.75, -1.0, 0.5, -0.25, 0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.75, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 0.5, -0.75, -0.5, -0.25, -1.0, 0.5, 0.75, 0.25, 0.5, 0.0, -0.25, 0.75, 0.0, -0.25, -0.5, 0.75, -0.75, -0.75, -1.0, ]);
    
    
    const array6 = new Float32Array([0.0, -0.75, -0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.75, -0.75, -1.0, 0.75, 1.0, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, 0.75, -0.75, -0.25, 0.5, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, 0.5, 0.5, 0.0, 1.0, 0.5, -1.0, -0.75, -1.0, 0.5, -0.5, -0.5, -0.75, -1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 1.0, -0.5, -0.25, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.0, 1.0, -1.0, -0.25, 1.0, 0.5, -1.0, -0.5, 0.75, -0.75, -1.0, 0.25, 0.5, -0.5, 0.0, 0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 0.75, -0.5, 0.5, -0.25, -0.25, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    query200.destroy()
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query201.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    query201.destroy()
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    query204.destroy()
    
    
    query204.destroy()
    query200.destroy()
    query204.destroy()
    
    device40.pushErrorScope("out-of-memory");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder2000.popDebugGroup()
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    query201.destroy()
    command_encoder400.popDebugGroup()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    
    query201.destroy()
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    
    
    
    
    
    
    device50.destroy();
    
    query205.destroy()
    
    
    
    
    query202.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2000.popDebugGroup()
    query201.destroy()
    
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query200.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query205.destroy()
    query205.destroy()
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    
    
    
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder201.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder4000.popDebugGroup()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    device40.pushErrorScope("internal");
    
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
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
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    const command_buffer201 = command_encoder201.finish();
    
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
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
    query205.destroy()
    
    query204.destroy()
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    const array7 = new Float32Array([-0.75, -1.0, -0.75, 0.0, -0.5, 1.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, -0.5, -0.5, 0.5, -0.25, 1.0, 0.5, 0.0, 0.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.5, 0.0, -1.0, 0.5, 0.75, 0.0, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.75, -0.5, 0.75, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 0.0, -0.25, -0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 1.0, 0.5, -0.75, -0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 0.5, 1.0, 0.75, 0.0, 0.5, ]);
    
    
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder202.clearBuffer(buffer204);
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    query203.destroy()
    
    query203.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
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
    
    query203.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    
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
    command_encoder202.popDebugGroup()
    compute_pass_encoder4010.insertDebugMarker("marker")
    query205.destroy()
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    query402.destroy()
    
    
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
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
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    
    query400.destroy()
    
    compute_pass_encoder4000.popDebugGroup()
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.clearBuffer(buffer204);
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder203.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query402.destroy()
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    
    
    query201.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    command_encoder203.popDebugGroup()
    
    query205.destroy()
    
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
    
    
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    command_encoder202.insertDebugMarker("mymarker");
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
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    command_encoder203.clearBuffer(buffer204);
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    query400.destroy()
    query203.destroy()
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    
    
    
    
    
    device20.pushErrorScope("out-of-memory");
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    query206.destroy()
    
    query205.destroy()
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    command_encoder203.popDebugGroup()
    
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    command_encoder402.clearBuffer(buffer401);
    
    const array8 = new Float32Array([1.0, 1.0, -0.75, -0.75, -1.0, -0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 0.75, -0.75, 0.0, 1.0, -0.5, 0.0, 1.0, -0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -0.75, 0.5, 1.0, -0.75, 1.0, 1.0, 0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 0.0, 0.25, 0.0, 0.5, -0.25, -1.0, -0.5, 0.25, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, -0.25, 0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 1.0, 0.75, 1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, -0.5, -0.75, -0.25, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, ]);
    command_encoder203.insertDebugMarker("mymarker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    
    
    query201.destroy()
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    
    
    query206.destroy()
    query203.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
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
    query200.destroy()
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    query400.destroy()
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    
    
    const array9 = new Float32Array([-1.0, 1.0, 0.0, 0.5, -0.25, 0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, 0.5, -0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -1.0, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, -0.75, 1.0, 0.75, 0.5, 1.0, 0.5, -0.25, 0.5, 0.25, -0.75, -0.5, 0.5, -0.75, 0.75, -1.0, -0.75, -1.0, -1.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.5, 0.75, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, 1.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.0, -1.0, 0.25, 0.75, -0.25, 0.75, 0.75, ]);
    compute_pass_encoder4000.insertDebugMarker("marker")
    query200.destroy()
    const array10 = new Float32Array([0.75, -0.25, -1.0, -0.75, -0.5, -0.5, -0.75, -0.5, 0.75, 1.0, 0.5, 0.75, 0.75, 0.25, -0.5, -1.0, -0.25, 0.5, 0.0, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, 0.5, 1.0, -0.75, -0.5, -0.25, -0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.5, -0.25, 0.0, -0.25, -0.25, 0.0, 1.0, 1.0, 0.5, 0.0, -0.5, 0.25, 0.75, 0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.75, -1.0, 1.0, -1.0, 1.0, 0.0, 0.0, -0.5, -0.75, 1.0, -0.75, 0.25, 1.0, 0.0, -1.0, -0.5, 1.0, -0.25, -0.5, -1.0, 1.0, 0.0, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, ]);
    
    
    compute_pass_encoder4000.popDebugGroup()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    const array11 = new Float32Array([0.5, -1.0, 0.75, 0.25, 0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, -0.25, -0.25, -0.25, 0.0, -1.0, -1.0, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.0, -1.0, 0.75, 0.75, 1.0, -1.0, 0.75, 0.0, -0.75, -1.0, -0.75, 0.25, 1.0, 0.75, 0.75, -0.5, 0.5, -1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, -1.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.5, 1.0, 0.25, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.5, -0.75, 1.0, -0.25, 0.75, 1.0, 1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.25, 1.0, 1.0, -1.0, -1.0, -0.25, -1.0, ]);
    
    query206.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
    const array12 = new Float32Array([-0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 0.75, 1.0, -1.0, -0.75, 0.0, -1.0, -0.5, -0.25, -0.25, -0.75, 1.0, -0.5, -0.75, 1.0, -1.0, 0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.0, -0.5, 0.0, 0.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.25, -1.0, 0.25, 1.0, -0.25, 0.5, 0.75, -0.75, -0.75, -0.75, 0.0, 0.5, 1.0, 1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, -1.0, -0.25, 0.0, 0.25, -0.5, -0.75, 0.5, -0.75, 0.0, -1.0, -0.75, 0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 0.5, 0.5, 0.75, -0.5, -0.5, 0.75, -0.5, -0.25, 0.75, 1.0, ]);
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
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
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    query401.destroy()
    
    query401.destroy()
    
    
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
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
    command_encoder204.clearBuffer(buffer204);
    command_encoder204.popDebugGroup()
    
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    query203.destroy()
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
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
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    
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
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
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
    query201.destroy()
    
    const render_pipeline4016 = device40.createRenderPipeline({
        label: "render_pipeline4016",
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    
    query401.destroy()
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder204.insertDebugMarker("mymarker");
    query201.destroy()
    device20.pushErrorScope("internal");
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
    compute_pass_encoder2030.insertDebugMarker("marker")
    const render_pipeline4017 = device40.createRenderPipeline({
        label: "render_pipeline4017",
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
    const render_pipeline4018 = device40.createRenderPipeline({
        label: "render_pipeline4018",
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
    command_encoder204.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder4020.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer204, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}