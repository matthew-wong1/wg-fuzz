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
    
    
    const array0 = new Float32Array([0.0, 0.25, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, -1.0, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, 1.0, -0.75, 0.5, 0.0, 0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, -0.75, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.5, 0.25, 1.0, -1.0, 0.5, -0.75, 0.25, 0.25, 0.75, 0.75, 0.25, -0.75, 0.5, 0.25, 0.0, 1.0, -0.25, -0.25, -1.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.0, -0.5, -1.0, -0.25, 0.5, 0.75, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.25, -0.75, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, 0.75, 1.0, 1.0, 0.25, ]);
    
    const array1 = new Float32Array([0.25, -1.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.5, -0.25, 1.0, -0.5, -0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -0.5, -0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 0.25, 0.25, 0.0, -0.25, 0.75, -0.75, 0.5, 0.75, 0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, 0.25, 0.5, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 0.25, -0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 0.75, -0.75, 0.5, 0.75, -0.75, -0.5, 0.0, 0.0, 1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, -0.75, 1.0, 1.0, -0.25, 0.5, -1.0, 0.75, 0.75, 1.0, 0.25, -0.75, 0.5, 1.0, -0.5, -0.75, 0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    buffer000.destroy()
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([0.75, -0.5, -0.25, 0.25, -0.5, 0.25, -0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 0.5, 0.25, -0.75, 0.25, 0.25, 0.25, -1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, -0.25, 1.0, -0.25, 0.25, 1.0, 1.0, -0.25, 0.25, 0.75, 0.5, 0.5, -1.0, 0.5, 0.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.25, -0.25, -0.75, 0.0, 0.75, 0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 1.0, -0.25, 0.25, 0.75, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -1.0, -0.75, 0.5, 0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.5, 0.75, 1.0, -0.75, -0.75, 1.0, -1.0, 0.75, -0.25, -0.5, ]);
    
    
    
    const array3 = new Float32Array([-0.75, -0.75, -0.25, -0.25, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.25, 0.25, 0.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.5, -0.75, 0.0, -1.0, 0.0, 0.0, 0.5, 1.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, -0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 1.0, -1.0, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, -0.5, 1.0, 0.0, -1.0, 0.25, 0.75, 0.75, 0.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 1.0, -1.0, 0.5, 0.0, -0.25, 0.0, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.pushErrorScope("out-of-memory");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.destroy();
    const array4 = new Float32Array([0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, -0.25, -1.0, -0.25, 0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -0.75, -0.75, -0.75, -1.0, -0.75, -1.0, -0.75, -0.5, 1.0, -1.0, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, -0.25, 0.0, 0.25, -0.5, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, -0.75, 0.75, -0.25, -0.5, 0.25, -0.75, 0.75, -0.5, -0.5, -0.75, 0.25, 0.75, -0.75, -1.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 1.0, 1.0, -1.0, 0.5, -0.25, -0.75, 1.0, -1.0, 0.75, 0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.pushErrorScope("internal");
    
    
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const array5 = new Float32Array([-1.0, 1.0, 0.25, 0.5, 1.0, -1.0, -0.25, -1.0, 0.5, -0.5, -0.5, -0.5, -0.25, 0.75, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, 0.0, 0.0, -0.75, 0.75, 0.0, 0.75, -0.5, 0.5, -0.25, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 1.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -0.25, 0.75, 0.5, 0.5, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, 0.75, 0.25, -1.0, 0.5, -1.0, 0.0, 0.25, 0.25, -0.25, -0.75, 1.0, 0.75, 0.75, 0.0, 0.0, 1.0, 0.5, 0.25, 0.25, -1.0, 0.5, -0.25, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, -0.25, -0.5, 1.0, ]);
    
    device30.queue.submit([]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer500.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    buffer101.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("internal");
    device40.pushErrorScope("internal");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.pushErrorScope("validation");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    query500.destroy()
    
    
    query501.destroy()
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    buffer100.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device50.pushErrorScope("validation");
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
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device10.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    buffer501.destroy()
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    buffer201.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer400.destroy()
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
    device40.destroy();
    const array6 = new Float32Array([-0.75, -0.75, 0.0, 0.5, 0.25, 0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 0.25, 0.75, -1.0, 0.5, -0.75, -0.25, 0.75, 0.25, -0.5, -1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.25, 0.25, -0.75, 0.75, -0.75, 0.0, 0.0, -0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.0, 0.25, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, 0.75, 0.0, 1.0, -0.25, -1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.75, 0.0, -1.0, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -0.75, -0.25, 1.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.0, -0.75, 0.75, -1.0, ]);
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array7 = new Float32Array([0.75, 0.75, 0.5, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.75, 0.0, -0.75, -1.0, 0.0, -0.5, 0.0, 0.25, 0.0, 1.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.0, 1.0, 0.25, -1.0, 0.0, 0.5, -0.75, 0.25, 0.25, -0.25, 0.25, -0.5, -0.5, 0.5, 0.75, -0.5, 0.25, -0.75, 0.75, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.0, -0.75, -0.25, 0.75, -0.25, 0.5, -0.25, -1.0, 0.0, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer502.destroy()
    query500.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    device50.destroy();
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array8 = new Float32Array([-1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 1.0, 0.5, -1.0, -1.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.75, 1.0, -0.5, -1.0, -0.5, -1.0, -1.0, 0.0, -0.75, -1.0, 0.5, -0.75, 0.75, -0.25, -0.5, 0.25, -0.75, 0.5, -1.0, -0.75, 0.25, -1.0, -0.75, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, 1.0, -0.25, -1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -1.0, -1.0, -0.5, -0.5, -1.0, 0.5, 0.5, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 0.5, 0.25, 0.0, 0.0, -0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 1.0, ]);
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    buffer600.destroy()
    
    
    
    
    
    buffer200.destroy()
    
    
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
    
    
    
    
    
    
    
    const array9 = new Float32Array([-0.75, 0.75, -0.5, 0.75, 1.0, 0.25, -0.25, 0.25, -0.5, -0.75, -0.5, -0.25, -0.75, 0.25, -0.25, -0.5, 1.0, -1.0, -0.25, 0.5, 0.5, 0.75, 1.0, 0.75, -0.75, 0.0, -0.5, -0.5, 1.0, -0.25, -0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.75, 0.0, -1.0, -0.5, 1.0, 1.0, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.75, -0.75, -0.25, 0.5, -0.75, 0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.5, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, 0.0, -0.75, -0.25, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -0.5, -0.25, ]);
    
    
    
    
    
    
    
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
    
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    device40.pushErrorScope("validation");
    device60.pushErrorScope("internal");
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    const array10 = new Float32Array([0.25, 0.75, -0.5, 0.75, 0.0, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, 0.75, 0.5, -1.0, -0.5, -0.75, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -0.75, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, 0.5, 0.5, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 0.25, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 1.0, -0.75, -0.25, -1.0, -0.5, 0.5, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -0.25, 0.5, -1.0, 1.0, -0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, -1.0, 0.5, -0.25, 0.0, -0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 0.5, ]);
    query600.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    query600.destroy()
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device60.destroy();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const array11 = new Float32Array([-0.25, 0.25, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.25, 0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 0.0, 0.25, 0.25, -0.5, 1.0, 0.25, -0.25, 0.0, 0.5, 0.75, 0.25, -0.5, -1.0, -0.25, -1.0, 0.5, 1.0, 0.5, 1.0, 1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, 0.0, 0.0, -0.5, -0.75, 1.0, 0.0, -1.0, 0.0, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, 0.75, -0.25, -0.5, -0.25, -0.25, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -1.0, -0.5, -0.75, 0.75, -1.0, 0.5, 1.0, 0.5, 0.5, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, 0.75, -1.0, -0.25, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer503, 0, array10, 0, array10.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.pushErrorScope("out-of-memory");
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device50.destroy();
    
    
    
    buffer700.destroy()
    
    
    device50.destroy();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query700.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const array12 = new Float32Array([0.5, -0.25, -0.75, 0.0, 0.25, -1.0, 1.0, -0.25, -0.25, -0.5, 0.25, -1.0, -1.0, -0.75, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, -0.25, 1.0, -0.25, -0.75, 1.0, 1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 1.0, -0.5, 0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -0.75, 0.25, 0.5, 0.0, -1.0, -0.75, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, -1.0, -0.75, 1.0, -0.25, -0.25, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.25, 0.0, -0.25, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.5, 0.75, -0.5, -0.5, -0.25, ]);
    
    
    
    
    query700.destroy()
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query700.destroy()
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    
    
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
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device70.queue.writeBuffer(buffer703, 0, array9, 0, array9.length);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    query700.destroy()
    
    const array13 = new Float32Array([-0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -0.75, 0.75, 0.75, -0.75, -0.75, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.25, -0.25, 0.25, -0.25, 0.75, 0.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 1.0, 0.0, 1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, 0.0, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, -1.0, -1.0, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.25, 1.0, -1.0, -0.75, -0.5, -1.0, -0.5, 0.5, 0.75, -0.5, -0.75, 0.0, 0.5, -0.75, 0.75, 0.25, -1.0, 1.0, -0.75, -1.0, -0.25, 0.0, 0.5, -0.5, 1.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.5, 0.0, 1.0, ]);
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device80.pushErrorScope("out-of-memory");
    
    const array14 = new Float32Array([0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 0.75, 1.0, 0.0, -0.25, -1.0, 0.5, 0.0, -0.5, 0.75, 0.75, 0.0, -1.0, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 0.25, 0.0, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, 0.25, 0.25, -0.25, -0.75, 0.25, 1.0, 1.0, -0.25, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, -0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, 0.75, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, -1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 0.75, -0.25, ]);
    
    device80.queue.submit([]);
    
    
    
    device50.queue.writeBuffer(buffer503, 0, array10, 0, array10.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array15 = new Float32Array([0.5, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, 1.0, -0.5, 1.0, -1.0, 0.75, -0.5, -0.75, 0.0, -0.5, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.25, -0.25, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.25, -0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 0.5, 0.0, 1.0, 0.25, -1.0, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, -1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.25, -0.25, 0.25, -0.5, -0.5, ]);
    
    
    query700.destroy()
    
    
    device40.queue.writeBuffer(buffer401, 0, array15, 0, array15.length);
    
    buffer703.destroy()
    
    const array16 = new Float32Array([1.0, 0.25, 0.5, 0.5, -0.5, 1.0, -0.25, -0.75, 1.0, 1.0, 0.25, 1.0, 0.5, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.5, -0.5, -0.25, -0.5, -1.0, -1.0, -0.75, 0.25, -1.0, 0.0, 0.75, -0.25, 0.75, -0.75, -0.75, 0.5, 0.0, -0.25, -0.5, 0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 0.25, 0.75, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.75, 0.25, -0.25, 0.75, 0.25, 0.0, 1.0, -1.0, 0.25, -0.25, 0.0, -0.5, 0.25, -0.25, -0.25, -0.5, -0.25, -0.25, 0.75, -0.25, 1.0, 0.5, -0.5, -0.25, 0.5, -0.25, 0.75, -0.25, 0.5, 0.5, 0.0, 0.5, ]);
    
    
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device80.queue.writeBuffer(buffer800, 0, array11, 0, array11.length);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device80.queue.writeBuffer(buffer800, 0, array16, 0, array16.length);
    buffer800.destroy()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    query700.destroy()
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer702.destroy()
    
    
    device50.queue.writeBuffer(buffer503, 0, array8, 0, array8.length);
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
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
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    buffer705.destroy()
    
    const array17 = new Float32Array([0.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, -0.5, -0.25, -0.5, -0.25, 1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 0.75, 0.5, 0.5, 0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 0.75, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.5, 0.75, -0.5, 0.0, -1.0, 1.0, 0.25, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.75, ]);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    device00.pushErrorScope("out-of-memory");
    
    buffer704.destroy()
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device50.destroy();
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer701, 0, array11, 0, array11.length);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    device70.pushErrorScope("internal");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device100.pushErrorScope("validation");
    query300.destroy()
    
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device70.queue.writeBuffer(buffer703, 0, array16, 0, array16.length);
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device90.queue.writeBuffer(buffer900, 0, array17, 0, array17.length);
    
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer701, 0, array16, 0, array16.length);
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    device90.queue.writeBuffer(buffer900, 0, array14, 0, array14.length);
    const array18 = new Float32Array([0.25, 1.0, 0.75, 0.75, -1.0, 1.0, -1.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.5, 0.0, 0.5, 0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, 1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.5, 0.0, -1.0, -0.5, -0.5, 1.0, -0.25, 0.75, 0.5, 1.0, 1.0, -0.5, 0.5, -0.25, -0.5, -0.5, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, -0.75, 1.0, 0.25, -0.75, -0.25, 0.75, -1.0, -0.75, 0.25, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.25, 0.75, -0.25, 0.75, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 1.0, -0.5, ]);
    device90.queue.writeBuffer(buffer900, 0, array17, 0, array17.length);
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    device100.destroy();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device80.destroy();
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer700.destroy()
    device90.queue.writeBuffer(buffer900, 0, array15, 0, array15.length);
    
    device70.queue.writeBuffer(buffer701, 0, array17, 0, array17.length);
    device90.queue.writeBuffer(buffer900, 0, array15, 0, array15.length);
    
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer900, 0, array11, 0, array11.length);
    
    query600.destroy()
    device70.queue.writeBuffer(buffer704, 0, array15, 0, array15.length);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    buffer900.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    device00.queue.writeBuffer(buffer001, 0, array14, 0, array14.length);
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device90.pushErrorScope("out-of-memory");
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    device70.queue.writeBuffer(buffer705, 0, array10, 0, array10.length);
    
    const array19 = new Float32Array([0.75, -0.75, 1.0, -0.75, -0.5, -0.5, -0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.75, 0.75, 0.25, 0.75, -0.25, 0.75, 0.75, 0.75, -1.0, -0.75, -0.5, -0.25, 0.75, 0.75, 0.5, 0.25, -0.75, 1.0, -0.75, 1.0, -0.5, 0.75, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, -0.5, -1.0, 0.75, 0.5, 0.5, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, -0.5, 0.25, 0.5, 0.75, 0.25, 0.25, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, -0.75, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, 0.75, 0.75, 0.5, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.5, 0.5, 0.75, -0.5, 1.0, ]);
    device90.queue.writeBuffer(buffer901, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    device90.queue.writeBuffer(buffer901, 0, array19, 0, array19.length);
    query900.destroy()
    device90.queue.writeBuffer(buffer901, 0, array19, 0, array19.length);
    device90.queue.writeBuffer(buffer901, 0, array13, 0, array13.length);
    device50.pushErrorScope("validation");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device90.queue.writeBuffer(buffer901, 0, array16, 0, array16.length);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    
    
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}