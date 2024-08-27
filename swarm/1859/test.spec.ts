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
    const array0 = new Float32Array([-1.0, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 0.0, 0.75, 0.75, 0.0, -0.25, 1.0, 0.75, 0.75, 0.75, 0.5, -1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, -1.0, 0.25, -0.25, 0.75, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, -0.25, 0.5, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, -0.5, -1.0, 0.25, -0.25, -1.0, -0.75, 0.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, 0.0, -1.0, 0.5, -1.0, 0.75, 0.5, -1.0, 0.0, -1.0, -0.25, -1.0, 1.0, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.5, 1.0, -0.25, -0.5, -0.25, 0.25, 0.75, 0.25, -0.75, 0.75, -0.5, -1.0, 0.5, ]);
    
    
    
    const array1 = new Float32Array([0.0, -1.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 0.75, -0.25, -1.0, -1.0, -0.5, -0.25, 0.5, -0.75, 0.25, -1.0, -0.25, 0.75, -1.0, -0.75, 1.0, -1.0, 0.0, 1.0, 1.0, -0.75, -0.25, 0.0, 0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -0.25, 0.75, 0.5, 0.5, -0.5, -0.25, 0.5, 0.5, -0.25, 0.5, -0.25, 0.75, 0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.75, 0.0, 0.25, 0.25, -0.75, -0.5, -1.0, -1.0, -1.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 0.5, 1.0, -0.75, 0.25, 0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -0.75, -0.75, -1.0, 1.0, -0.75, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([1.0, 0.0, 0.0, 0.25, 0.75, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.25, 0.0, -0.5, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, 0.75, 0.5, -1.0, -0.5, -0.25, 0.75, -0.75, -0.5, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, -0.25, 0.0, -0.75, -0.25, -0.25, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.5, -1.0, 0.25, -0.25, -0.25, 0.25, 1.0, -0.25, 0.5, -0.5, -0.5, -0.25, 0.25, 0.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.75, 0.25, 0.5, 0.5, 0.25, -0.25, 0.25, 0.75, -1.0, -1.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([1.0, 0.25, -0.25, -0.25, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, -0.5, -0.5, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -0.5, 0.75, 0.5, 0.5, -0.75, -0.25, 0.5, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 1.0, 1.0, -0.5, 0.25, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 0.0, -0.75, 1.0, -0.25, -0.5, 1.0, 0.5, -0.75, 0.5, -0.25, 0.0, 0.5, -0.25, 0.0, -1.0, 0.75, -0.25, -1.0, 1.0, -0.25, 0.5, 0.5, -0.5, 0.75, -1.0, 0.0, -0.5, 0.75, -0.25, 1.0, -0.25, 0.5, ]);
    const array4 = new Float32Array([0.25, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.75, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 0.25, 0.75, 1.0, -0.75, 0.75, -0.75, 0.5, 0.5, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, 0.5, -0.5, -0.5, -1.0, -0.75, 1.0, 0.75, -0.5, 1.0, 0.75, 1.0, 0.5, 0.75, -0.75, 0.25, -0.25, 0.0, 0.75, 0.25, 0.5, 0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 1.0, -0.75, 0.75, 0.75, -0.5, -0.25, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, 0.75, -0.25, -0.75, -0.25, -0.75, 0.0, -0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer100 = command_encoder100.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array5 = new Float32Array([-1.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.25, 1.0, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, 1.0, 1.0, 0.75, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, -0.75, 0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -0.75, -0.75, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 0.25, 1.0, 0.5, -0.25, -0.5, -0.25, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 1.0, 0.75, 0.25, -0.5, 0.0, -0.75, 0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -0.5, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, 1.0, 0.5, ]);
    
    const array6 = new Float32Array([-0.75, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, -0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 0.25, -0.25, -0.75, 0.0, -1.0, -0.5, 0.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 0.25, 0.25, -0.5, -0.5, 1.0, 0.25, -0.75, -1.0, -0.5, 1.0, 0.0, 0.0, 0.25, -0.25, 0.25, 0.5, -0.5, 1.0, 0.5, 0.25, 0.25, -1.0, -0.75, 0.25, 1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.25, -0.75, 0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 1.0, 1.0, -0.5, -1.0, -0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, 0.75, -0.5, 1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, ]);
    
    buffer101.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-1.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.0, -0.5, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, -1.0, 0.75, 0.75, -0.25, 0.0, 1.0, -0.25, -0.75, -0.75, 0.75, 0.75, -0.5, -0.75, 0.0, -0.75, 0.5, 0.5, 1.0, -0.5, 0.75, 1.0, 0.25, -0.75, 0.25, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, 0.0, -0.75, -0.75, 0.5, -0.5, -0.5, 0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.75, 0.0, -0.75, -0.25, 0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    buffer300.destroy()
    device10.pushErrorScope("validation");
    device30.destroy();
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    buffer101.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer103.destroy()
    
    query100.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.submit([command_buffer100, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device50.pushErrorScope("out-of-memory");
    
    const command_buffer101 = command_encoder101.finish();
    buffer000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device00.queue.submit([]);
    
    device00.pushErrorScope("internal");
    const command_buffer000 = command_encoder000.finish();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query100.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.pushErrorScope("out-of-memory");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer100.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("validation");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer104.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer401.destroy()
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    
    query000.destroy()
    texture101.destroy();
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder401.insertDebugMarker("mymarker");
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
    
    buffer501.destroy()
    
    device50.pushErrorScope("validation");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    command_encoder400.insertDebugMarker("mymarker");
    buffer102.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
    
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    buffer105.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    query100.destroy()
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
    command_encoder200.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    command_encoder401.copyBufferToBuffer(
        buffer400,
        0,
        buffer400,
        0,
        400
    );
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder401.popDebugGroup()
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    texture000.destroy();
    buffer301.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query100.destroy()
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const command_buffer102 = command_encoder102.finish();
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    query002.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    
    
    command_encoder201.popDebugGroup()
    query002.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder402.resolveQuerySet(
        query402,
        0,
        32,
        buffer402,
        0
    )
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device40.queue.submit([command_buffer401, ]);
    
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder402.popDebugGroup()
    const array8 = new Float32Array([0.25, 0.5, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, -0.25, 1.0, 0.75, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, 1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 0.25, 0.0, 1.0, -0.75, -0.25, -0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.25, -0.25, -0.75, 1.0, 0.0, 0.5, -1.0, 1.0, 0.25, -0.5, -0.25, -0.25, 1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.5, -1.0, 1.0, 1.0, -1.0, -0.75, 0.0, 1.0, -0.75, 0.0, -1.0, -0.75, -0.75, 0.25, -1.0, -1.0, -0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, -0.5, -0.25, 1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, 0.0, ]);
    const array9 = new Float32Array([0.5, -1.0, -0.5, 0.5, 1.0, -0.5, 1.0, -0.75, -1.0, -0.25, -0.5, 0.25, -0.25, -0.25, -0.75, -0.25, 1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, 0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 1.0, 0.75, -1.0, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, -0.75, -1.0, -0.25, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.25, -1.0, 1.0, 0.25, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 1.0, 0.0, -1.0, ]);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    query001.destroy()
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const command_buffer402 = command_encoder402.finish();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.queue.submit([]);
    texture102.destroy();
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.queue.submit([command_buffer101, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query002
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
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
        occlusionQuerySet: undefined
    });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
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
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    buffer400.destroy()
    buffer402.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture500.destroy();
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer500.destroy()
    texture200.destroy();
    command_encoder202.insertDebugMarker("mymarker");
    query200.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    
    device00.pushErrorScope("out-of-memory");
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    query100.destroy()
    command_encoder204.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder0031.setPipeline(render_pipeline000);
    device50.pushErrorScope("internal");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer002, ]);
    query500.destroy()
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1030.setStencilReference(1);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group000);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    const command_buffer203 = command_encoder203.finish();
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    buffer401.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setPipeline(render_pipeline100);
    buffer502.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    query100.destroy()
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    query100.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    render_pass_encoder4000.setPipeline(render_pipeline400);
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_pass_encoder1030.setStencilReference(1);
    
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder502.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    
    
    device20.destroy();
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    query103.destroy()
    render_pass_encoder1031.setStencilReference(1);
    query403.destroy()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    command_encoder501.insertDebugMarker("mymarker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder1031.setStencilReference(1);
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_pass_encoder4001.setStencilReference(1);
    
    query501.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture401.destroy();
    query402.destroy()
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder4001.setPipeline(render_pipeline401);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group100);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group101);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer403);
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group401);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1031.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    command_encoder501.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer203, ]);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1031.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder4000.end();
    render_pass_encoder4001.setVertexBuffer(0, buffer401);
    render_pass_encoder4001.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4001.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    device40.queue.submit([]);
    const command_buffer501 = command_encoder501.finish();
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4000.end();
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    const command_buffer201 = command_encoder201.finish();
    command_encoder400.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer402, ]);
}