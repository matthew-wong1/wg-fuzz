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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([-1.0, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, -0.75, 0.0, 0.75, 1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, 1.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.75, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.75, 1.0, -0.5, 0.25, -1.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 0.0, 0.5, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.25, 1.0, 0.5, 0.0, 0.25, 0.5, -0.5, -0.5, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device30.destroy();
    
    
    
    const array1 = new Float32Array([0.75, 0.25, 0.25, 0.0, -0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 0.5, -0.25, 0.0, 1.0, 1.0, -1.0, -0.25, -1.0, -0.25, 0.25, -1.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, 0.25, -0.25, 0.5, 0.25, 0.0, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 0.0, 0.5, -0.25, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.75, 0.0, 0.25, 0.75, -0.75, -0.5, -0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -0.75, -0.75, 0.0, 1.0, -0.75, -0.5, -0.25, 0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -1.0, 1.0, -0.75, 0.5, 1.0, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.25, 0.25, 0.0, 0.75, -0.25, 0.25, -0.75, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder100.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder400.popDebugGroup()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device50.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    compute_pass_encoder4000.popDebugGroup()
    
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
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const array2 = new Float32Array([-0.5, -0.25, -1.0, 0.25, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.0, -0.5, -0.25, 0.5, -0.75, -0.5, -0.25, 0.5, 0.25, -1.0, -1.0, -1.0, 0.0, 0.75, 1.0, -0.75, 0.75, 0.0, -0.5, 0.75, -0.75, 0.5, -1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -1.0, -0.25, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.25, 0.25, -0.5, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, -0.25, -0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.0, -0.75, 0.5, 0.75, -0.75, -0.75, -1.0, -0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.25, 0.75, -1.0, ]);
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
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    
    
    const array3 = new Float32Array([-1.0, -0.5, -0.75, -0.75, 0.25, 0.25, -0.25, -0.75, 1.0, -0.25, 0.0, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -1.0, 0.75, 0.75, -0.25, 0.0, -0.75, 0.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.25, 0.5, 1.0, 1.0, 1.0, 0.25, 0.75, 0.75, 0.75, -0.25, 0.25, -1.0, -0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 1.0, 0.25, -0.75, -0.25, 1.0, 1.0, -1.0, 1.0, 0.25, -0.75, 0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, 0.5, -1.0, 1.0, -0.25, 0.25, 1.0, 0.0, 1.0, 0.5, 0.0, 0.25, -0.5, 0.5, 0.25, 0.0, -0.5, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    device20.pushErrorScope("internal");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device10.pushErrorScope("validation");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_buffer200 = command_encoder200.finish();
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array4 = new Float32Array([1.0, 1.0, 1.0, -1.0, 0.75, -0.25, -0.75, -0.5, 1.0, 0.25, -1.0, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, 0.25, -0.25, -0.5, -0.75, -0.75, 0.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 0.75, -0.5, 0.5, 0.0, -0.25, 0.0, -0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, -0.25, -0.5, -0.75, 0.0, 1.0, -0.5, -0.25, 0.75, 0.0, 1.0, -0.25, 0.25, 0.5, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, -0.5, 0.25, -0.25, 0.25, -0.25, -0.5, -0.25, 0.75, -0.25, 1.0, -0.75, 0.25, ]);
    
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_buffer101 = command_encoder101.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device20.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const array5 = new Float32Array([0.0, -0.5, -1.0, 0.0, -1.0, 0.5, 0.5, -0.25, 1.0, 0.0, -1.0, -1.0, -0.5, -1.0, 1.0, 1.0, -0.75, -0.25, 0.5, 0.0, 0.5, -0.25, 1.0, 0.25, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, -0.25, 0.0, 0.5, -0.25, -0.5, 1.0, -1.0, 1.0, -0.5, -0.75, 0.75, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.25, 0.75, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 0.75, 0.5, 1.0, 0.5, 0.5, 0.75, -0.5, 0.0, -0.5, 0.25, 1.0, 0.0, -0.75, 0.0, -0.75, 0.0, 0.0, -0.5, 0.5, 0.0, 0.25, 1.0, -0.75, 0.75, 0.0, -0.75, 0.0, ]);
    
    const command_buffer103 = command_encoder103.finish();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device60.destroy();
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    compute_pass_encoder4000.popDebugGroup()
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device40.pushErrorScope("internal");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device70.pushErrorScope("internal");
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder104.insertDebugMarker("mymarker");
    
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_buffer202 = command_encoder202.finish();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device70.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.pushErrorScope("out-of-memory");
    
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    compute_pass_encoder2010.popDebugGroup()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    
    command_encoder000.popDebugGroup()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    
    const array6 = new Float32Array([-0.25, 0.0, 0.5, 0.5, 0.75, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, 0.75, 0.5, 0.25, -0.25, -0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -0.75, -1.0, 0.5, 1.0, 0.25, 1.0, 0.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.5, 0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, 1.0, 0.75, -1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 1.0, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, 0.25, 0.0, 0.75, -0.75, 1.0, ]);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const command_buffer000 = command_encoder000.finish();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    command_encoder204.pushDebugGroup("mygroupmarker")
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    const texture_view4023 = texture402.createView({ label: "texture_view4023" });
    
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    
    
    
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    
    
    
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder205.insertDebugMarker("mymarker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    compute_pass_encoder2010.popDebugGroup()
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const texture_view4006 = texture400.createView({ label: "texture_view4006" });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    
    
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer205 = command_encoder205.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}