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
    
    
    const array0 = new Float32Array([1.0, 0.75, -1.0, 1.0, 0.5, 0.5, -0.75, -0.25, 0.75, 0.0, -0.75, -0.5, 0.0, 0.5, -1.0, -0.25, -0.25, 0.5, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, 0.75, 0.25, 0.25, -0.75, 0.75, -0.75, -0.5, 1.0, 0.25, 0.25, -0.5, -0.5, -0.25, 0.0, 0.25, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 0.25, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, -0.5, -0.75, 1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 0.0, -0.25, 0.0, -0.25, 0.0, 1.0, -0.75, -0.5, 0.0, 0.25, -1.0, 0.75, -0.25, -0.5, -0.75, -0.75, 0.0, -0.25, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, 1.0, -1.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.0, 0.0, -1.0, 0.5, -0.75, 0.25, -1.0, -0.5, -0.25, -0.75, 0.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, 0.0, -1.0, -0.75, 0.5, 1.0, 0.5, -0.5, -0.75, 0.25, 0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.75, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.75, -0.25, 1.0, -0.5, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, -0.75, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -1.0, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, 0.25, 0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer000.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const array2 = new Float32Array([0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 0.75, -0.25, -1.0, 1.0, -0.75, 0.5, 0.0, -1.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.0, 0.75, 1.0, -0.5, 0.75, -0.75, 0.25, -0.75, -0.25, 1.0, 0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.5, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, 0.5, -0.5, -0.5, 1.0, 0.75, 1.0, -0.5, 0.5, 1.0, 0.5, -0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, 0.25, 0.25, 0.5, -0.75, 0.25, 0.5, -0.5, -0.5, 0.0, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, -0.5, -0.25, ]);
    
    device10.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter3 = await gpu.requestAdapter({
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
    device00.pushErrorScope("internal");
    
    const array3 = new Float32Array([0.25, 1.0, -0.5, -1.0, 1.0, -0.75, 1.0, 1.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.75, -0.75, 1.0, -0.25, 0.5, 0.25, 1.0, 1.0, 0.75, -0.25, -0.5, -0.5, 0.0, -0.75, 0.5, -0.25, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.5, 0.75, 0.75, 1.0, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 1.0, 0.75, -0.5, -1.0, 0.0, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.75, 0.5, -0.25, -0.75, -0.25, 0.25, 0.75, -0.5, 0.75, 0.25, 1.0, 0.0, -0.75, 0.25, -1.0, -1.0, -1.0, 1.0, 0.25, -0.75, 0.75, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    command_encoder200.clearBuffer(buffer200);
    
    
    device30.queue.submit([command_buffer300, ]);
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
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer200 = command_encoder200.finish();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder202.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder201.clearBuffer(buffer201);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query200.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    
    device60.destroy();
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer203,
        0,
        400
    );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    query300.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    buffer200.destroy()
    device30.destroy();
    buffer202.destroy()
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
    device30.pushErrorScope("internal");
    command_encoder201.popDebugGroup()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    command_encoder700.insertDebugMarker("mymarker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.submit([command_buffer400, ]);
    
    buffer201.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder202.clearBuffer(buffer203);
    device40.destroy();
    command_encoder202.clearBuffer(buffer203);
    buffer203.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_buffer700 = command_encoder700.finish();
    device70.destroy();
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query200.destroy()
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query200.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query202.destroy()
    query000.destroy()
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query201.destroy()
    
    command_encoder202.insertDebugMarker("mymarker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    
    query202.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    query201.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    buffer205.destroy()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    buffer204.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer204.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer500 = command_encoder500.finish();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    buffer204.destroy()
    query200.destroy()
    buffer204.destroy()
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    buffer500.destroy()
    query202.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_buffer201 = command_encoder201.finish();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device20.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device120.queue.submit([]);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    
    const array4 = new Float32Array([-0.25, 1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 0.25, -0.75, 1.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -0.75, -1.0, -0.5, -1.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.25, 0.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -0.25, -0.75, 0.5, -0.5, -0.5, 0.0, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 0.25, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 0.25, 0.25, 0.25, -0.5, 0.75, -0.5, -0.5, -0.25, 0.0, -1.0, 0.75, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    query1200.destroy()
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("internal");
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    
    const array5 = new Float32Array([0.25, 0.25, 0.75, 0.5, 0.5, 0.75, -0.5, -0.25, -0.25, -0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, -0.75, 0.75, 0.0, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, 0.75, 0.75, 0.5, -1.0, 1.0, 0.25, 0.0, 1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -0.5, -1.0, -1.0, -0.75, 0.25, 0.5, 0.75, 1.0, -0.25, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.25, -0.75, 0.5, 0.25, -1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.75, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.25, -0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 0.75, -0.75, 0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 1.0, ]);
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("internal");
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    device100.pushErrorScope("internal");
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device90.pushErrorScope("validation");
    query500.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device120.pushErrorScope("validation");
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    device50.queue.submit([command_buffer500, ]);
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    query1201.destroy()
    buffer700.destroy()
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    buffer1200.destroy()
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    query900.destroy()
    
    const command_buffer901 = command_encoder901.finish();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer206.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.clearBuffer(buffer500);
    buffer500.destroy()
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device50.pushErrorScope("out-of-memory");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer301 = command_encoder301.finish();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    {
        await buffer1001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1001.unmap();
        console.log(new Float32Array(data));
    }
    query1201.destroy()
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    
    
    query901.destroy()
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    command_encoder501.pushDebugGroup("mygroupmarker")
    compute_pass_encoder12000.insertDebugMarker("marker")
    
    command_encoder503.clearBuffer(buffer501);
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    device80.pushErrorScope("validation");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder502.insertDebugMarker("mymarker");
    device80.queue.writeBuffer(buffer801, 0, array5, 0, array5.length);
    
    device50.pushErrorScope("validation");
    buffer800.destroy()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device100.queue.writeBuffer(buffer1002, 0, array0, 0, array0.length);
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    command_encoder503.clearBuffer(buffer501);
    device100.queue.writeBuffer(buffer1002, 0, array0, 0, array0.length);
    compute_pass_encoder9000.insertDebugMarker("marker")
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    buffer801.destroy()
    device90.queue.submit([command_buffer901, ]);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device100.queue.writeBuffer(buffer1001, 0, array1, 0, array1.length);
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    command_encoder503.clearBuffer(buffer501);
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array6 = new Float32Array([-0.75, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 1.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 0.25, -1.0, 0.5, -0.25, 0.5, -1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.25, 0.5, 0.0, 0.0, 1.0, -0.75, -0.75, 0.75, 0.75, 1.0, 0.25, 0.75, 0.0, -0.5, 0.75, 0.25, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 0.25, 0.0, 0.75, 0.5, -0.5, -0.75, -1.0, -1.0, ]);
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    device110.pushErrorScope("internal");
    buffer1002.destroy()
    device80.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    
    const command_encoder1400 = device140.createCommandEncoder({ label: "command_encoder1400" });
    
    device100.destroy();
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    query1400.destroy()
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder9000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    compute_pass_encoder12000.pushDebugGroup("group_marker")
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_buffer502 = command_encoder502.finish();
    query1200.destroy()
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    query1202.destroy()
    
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const command_buffer1400 = command_encoder1400.finish();
    query1200.destroy()
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const array7 = new Float32Array([1.0, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.5, 1.0, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, 0.25, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 1.0, -1.0, -1.0, 1.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, 1.0, 0.0, -0.75, 0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.5, 1.0, 0.0, 0.5, -1.0, 1.0, -0.75, -0.5, 0.25, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, 0.25, 1.0, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, -0.25, 0.25, 0.0, ]);
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    
    device80.queue.writeBuffer(buffer801, 0, array0, 0, array0.length);
    compute_pass_encoder12000.insertDebugMarker("marker")
    
    query1102.destroy()
    device50.destroy();
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query1100.destroy()
    command_encoder203.clearBuffer(buffer204);
    device110.queue.writeBuffer(buffer1100, 0, array7, 0, array7.length);
    
    command_encoder503.clearBuffer(buffer503);
    compute_pass_encoder9000.insertDebugMarker("marker")
    const array8 = new Float32Array([1.0, 0.25, -0.25, 0.75, 1.0, -0.25, 0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.75, -1.0, 0.75, -0.5, 1.0, -1.0, 0.0, 0.75, 0.25, -1.0, -0.5, -1.0, 0.75, -0.25, -0.75, -0.5, -1.0, 1.0, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.25, -0.5, 1.0, -0.5, 0.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.0, 0.0, 1.0, 1.0, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.5, 0.75, -0.75, -0.5, 0.5, 0.5, 0.0, -1.0, -0.25, -0.25, -0.25, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.5, 1.0, ]);
    query903.destroy()
    
    
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    
    
    const query1204 = device120.createQuerySet({
        label: "query1204",
        type: "occlusion",
        count: 32,
    });
    const query1205 = device120.createQuerySet({
        label: "query1205",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    query1200.destroy()
    
    query902.destroy()
    compute_pass_encoder12000.insertDebugMarker("marker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.5, -1.0, 0.75, -0.75, 0.25, 0.25, 0.0, 0.5, -1.0, 0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 1.0, 0.25, -1.0, -1.0, 0.25, -0.75, -0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.25, 0.75, 0.25, -0.5, -0.5, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, 0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 1.0, 0.5, 0.75, -1.0, 0.5, -0.75, 0.5, 0.25, 0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, -1.0, 0.25, 0.5, -0.25, -0.5, -0.25, 0.25, 0.25, 0.5, 0.25, -1.0, 0.75, 0.75, -0.5, 1.0, 0.25, -0.75, -1.0, -1.0, -0.5, -0.75, -1.0, 1.0, 1.0, 0.5, 0.5, -0.25, -1.0, -0.5, -1.0, -0.25, 0.75, ]);
    device120.queue.writeBuffer(buffer1201, 0, array6, 0, array6.length);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    device120.queue.writeBuffer(buffer1201, 0, array3, 0, array3.length);
    device90.queue.submit([command_buffer901, ]);
    device90.queue.submit([]);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    device100.queue.writeBuffer(buffer1003, 0, array9, 0, array9.length);
    
    query1100.destroy()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder9000.insertDebugMarker("marker")
    buffer1100.destroy()
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    const query1206 = device120.createQuerySet({
        label: "query1206",
        type: "occlusion",
        count: 32,
    });
    device140.pushErrorScope("validation");
    
    
    device140.queue.submit([command_buffer1400, ]);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    buffer1201.destroy()
    
    query903.destroy()
    device120.pushErrorScope("internal");
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    query1100.destroy()
    device140.queue.writeBuffer(buffer1400, 0, array0, 0, array0.length);
    
    
    
    command_encoder1000.insertDebugMarker("mymarker");
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device140.queue.writeBuffer(buffer1400, 0, array6, 0, array6.length);
    query1100.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    device140.queue.submit([]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device140.queue.writeBuffer(buffer1400, 0, array4, 0, array4.length);
    const command_buffer800 = command_encoder800.finish();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device140.queue.submit([command_buffer1400, ]);
    device80.queue.submit([command_buffer800, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer902 = command_encoder902.finish();
    device90.queue.submit([command_buffer902, ]);
    const command_buffer1200 = command_encoder1200.finish();
    device120.queue.submit([command_buffer1200, ]);
    device80.queue.submit([command_buffer800, ]);
    device90.queue.submit([]);
    device80.queue.submit([]);
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}