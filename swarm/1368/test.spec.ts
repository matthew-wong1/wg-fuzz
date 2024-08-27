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
    
    const array0 = new Float32Array([-0.75, -0.25, -1.0, 0.5, -0.75, 0.5, 0.75, 0.5, 0.5, -0.5, 0.25, 0.0, 1.0, 0.25, -0.5, 0.0, -1.0, -1.0, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, -1.0, 1.0, 0.75, 0.75, 0.25, -0.5, -1.0, 0.0, -0.75, -0.25, 0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 1.0, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -1.0, -0.25, 0.25, -1.0, -1.0, -0.25, 0.75, -1.0, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 1.0, 1.0, 0.25, 0.0, 0.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.25, -0.75, 0.25, -1.0, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, -0.25, 0.25, 0.5, -0.5, 1.0, -0.75, 1.0, -0.25, ]);
    const array1 = new Float32Array([1.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.5, 0.0, -0.25, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 0.0, -1.0, -1.0, -0.25, 0.5, 0.75, 0.0, -0.75, -1.0, -0.75, -1.0, 0.0, 0.0, 0.25, -0.75, -0.25, 1.0, 0.5, -1.0, -0.25, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, 0.25, -1.0, -0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.25, 0.0, -1.0, 0.25, -0.75, 0.25, 0.0, 0.25, 1.0, 1.0, -1.0, 0.5, -1.0, 1.0, -0.25, 0.75, 0.5, -1.0, -0.75, 0.75, -0.25, -1.0, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.5, ]);
    const array2 = new Float32Array([0.25, 0.0, -1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.75, -0.75, 0.0, 0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 1.0, 1.0, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.25, -0.5, 0.0, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 0.5, 0.0, 1.0, -0.5, 0.75, -1.0, 0.5, 1.0, 0.75, 0.25, -0.25, 0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 1.0, 0.0, 0.25, 1.0, -0.5, 0.0, -1.0, -0.75, -1.0, 0.25, -0.25, 0.0, 0.0, ]);
    const array3 = new Float32Array([-0.75, -1.0, 0.75, 1.0, -1.0, -0.25, 1.0, 0.0, -0.75, -0.25, 1.0, -0.75, -0.75, -1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.0, -0.5, -1.0, -0.75, 0.5, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.0, -1.0, 1.0, 0.0, -0.5, 0.75, 0.5, 0.75, 0.25, 0.0, -0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -1.0, 0.25, -0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.5, 0.75, 0.25, 0.75, 1.0, 0.0, 0.25, 0.75, -0.5, 0.5, -0.25, 0.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 0.0, -0.75, 0.25, ]);
    const array4 = new Float32Array([-1.0, -0.25, -0.5, 0.0, 0.0, 0.75, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.0, 0.5, 0.75, -0.5, 1.0, 0.5, 0.0, -0.75, 1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -0.25, 1.0, -0.5, 0.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 0.5, -0.75, -0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, -0.75, -0.75, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 0.5, -0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 0.0, -1.0, 1.0, -0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 0.5, 1.0, -0.75, 0.0, 0.5, 0.0, ]);
    
    
    
    const array5 = new Float32Array([0.0, 0.25, 0.25, 0.25, -0.75, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 0.5, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.0, -0.75, 0.0, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, 0.0, -1.0, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, -0.5, -1.0, 1.0, -0.5, -0.5, -0.25, 0.25, -1.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.75, 0.75, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -1.0, 1.0, 0.75, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 0.75, 0.25, -1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.75, 0.75, -0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, -0.25, 0.5, ]);
    
    
    const array6 = new Float32Array([0.75, 0.25, -0.5, -0.5, -0.5, 0.25, 0.75, -0.5, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, 0.25, 0.0, 0.0, 0.75, 0.0, 0.75, -0.5, 0.75, -0.25, -1.0, -1.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.5, -0.25, 0.0, -0.25, 0.5, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, -0.25, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, -0.75, 0.25, -1.0, 0.75, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.5, -0.25, 0.0, -0.75, -1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, -0.25, 0.5, -0.75, 0.5, -0.75, -0.75, 0.75, -1.0, 1.0, -0.75, -0.5, -0.5, 0.25, 0.0, 0.75, ]);
    
    
    
    
    
    
    
    const array7 = new Float32Array([-0.75, 0.5, -1.0, 0.25, -0.5, 0.25, -0.75, -0.25, 1.0, 1.0, -0.5, -0.5, 0.0, 0.0, -0.5, -1.0, 0.25, 0.0, -0.5, 0.0, 0.0, -1.0, 0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 0.25, 0.25, 0.25, 0.75, 0.5, -0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 1.0, -0.25, 0.5, -0.5, -0.75, 1.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -1.0, 0.5, 0.0, -0.5, -0.5, -0.25, -1.0, -0.5, 0.25, 0.0, -1.0, -0.5, -0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.5, -1.0, 0.0, 0.75, 1.0, 0.25, 0.5, -1.0, -0.25, -1.0, 0.0, -0.25, -0.75, 1.0, 1.0, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array8 = new Float32Array([0.25, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, 1.0, 0.25, 0.5, 0.25, 0.75, 1.0, 0.0, -0.25, 0.25, 0.25, 0.5, 0.75, 0.5, -0.5, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, -1.0, -0.75, -0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 0.25, -0.75, 0.5, -1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, 0.75, -0.25, -0.25, -0.75, -0.5, 1.0, -1.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 0.5, 0.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.25, -1.0, 0.25, 0.75, -1.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.25, 0.5, 0.75, -1.0, 0.25, ]);
    device00.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("validation");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    device10.pushErrorScope("internal");
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.queue.submit([]);
    query100.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device10.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    command_encoder001.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    const array9 = new Float32Array([-0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 0.25, -0.75, -0.5, 0.0, 0.25, 0.0, -0.25, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, -0.75, -1.0, 0.5, -1.0, 0.25, 1.0, 0.5, 0.0, -0.75, 0.25, -1.0, 0.25, 0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, -1.0, -0.75, 0.5, 0.0, -1.0, 1.0, 0.75, -1.0, 0.0, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.75, -1.0, -1.0, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, 0.75, -1.0, 0.25, 0.0, -1.0, -0.25, 0.5, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.25, 0.75, 0.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.25, ]);
    
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0000.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.executeBundles([])
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0010.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_pass_encoder0010.beginOcclusionQuery(1)
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0000.beginOcclusionQuery(2)
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_pass_encoder0000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    render_pass_encoder0001.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder0000.executeBundles([])
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_pass_encoder0001.executeBundles([])
    
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.endOcclusionQuery()
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    query100.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    query002.destroy()
    device10.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.executeBundles([])
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer003,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder0021.executeBundles([])
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    query002.destroy()
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
    
    texture000.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0001.setStencilReference(1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0001.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.beginOcclusionQuery(3)
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    device50.pushErrorScope("validation");
    render_pass_encoder0021.setPipeline(render_pipeline000);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.executeBundles([])
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    query400.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.executeBundles([])
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.executeBundles([])
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder0021.beginOcclusionQuery(0)
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0001.beginOcclusionQuery(1)
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer003,
        0,
        400
    );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0000.beginOcclusionQuery(4)
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.endOcclusionQuery()
    
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    
    render_pass_encoder0030.setStencilReference(1);
    query500.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    texture400.destroy();
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0031.executeBundles([])
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_pass_encoder0022.insertDebugMarker("marker");
    query003.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0022.setPipeline(render_pipeline001);
    render_pass_encoder0010.endOcclusionQuery()
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group002);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0022.setBindGroup(0, bind_group003);
    render_pass_encoder0001.setPipeline(render_pipeline001);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setVertexBuffer(0, buffer008);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0011.setPipeline(render_pipeline000);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    command_encoder103.popDebugGroup()
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0030.setPipeline(render_pipeline001);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group006);
    render_pass_encoder0000.setVertexBuffer(0, buffer0017);
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.draw(3);
    device30.queue.submit([]);
    render_pass_encoder0011.setVertexBuffer(0, buffer006);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group008);
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.setVertexBuffer(0, buffer004);
    render_pass_encoder0031.setPipeline(render_pipeline000);
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group009);
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer0016);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    compute_pass_encoder1011.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer006);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0022.setVertexBuffer(0, buffer0026);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0010, 0);
    render_pass_encoder0022.endOcclusionQuery()
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0022.drawIndirect(buffer0013, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0031.setVertexBuffer(0, buffer0017);
    device50.queue.submit([]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0031.end();
    render_pass_encoder0011.end();
    device30.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.drawIndirect(buffer001, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0010, 0);
    compute_pass_encoder1010.popDebugGroup()
    device40.queue.submit([]);
}