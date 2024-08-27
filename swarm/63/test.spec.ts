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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array0 = new Float32Array([0.25, -0.75, 0.5, 0.75, -0.25, -0.75, 0.25, 1.0, -0.25, 1.0, -0.25, -0.5, 0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -0.5, 0.75, -1.0, 0.5, -0.5, -0.75, -0.25, 0.25, -0.5, 1.0, 0.0, 0.25, -0.5, -0.75, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.75, -0.75, 0.5, 0.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.75, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, 0.5, -0.5, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, -0.25, 0.75, -0.25, 0.25, 0.25, -0.5, 0.25, 0.0, 0.25, -0.5, -0.75, 0.5, 0.75, -0.25, 0.0, 1.0, -0.75, 0.25, -0.25, 0.25, -0.5, ]);
    const array1 = new Float32Array([-0.75, -0.75, 0.0, -0.25, 1.0, 0.5, -0.5, -0.5, -0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 0.5, 0.75, -0.25, -0.25, -0.75, 0.75, 0.5, 0.75, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -0.75, 0.0, -0.75, 0.75, 0.25, 0.0, -0.75, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 0.5, 0.25, -0.25, 0.25, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.5, 0.0, 0.75, -0.5, -0.75, -0.25, -0.5, -1.0, -0.25, 0.25, 0.25, -0.5, -0.25, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.5, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, 1.0, 0.25, 0.25, -0.75, 0.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.25, 1.0, 1.0, -0.5, 1.0, 0.0, 1.0, 0.0, 0.5, -0.75, 1.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.25, -0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.25, -0.25, 0.75, 0.25, 1.0, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 0.25, -0.25, 0.0, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, 0.25, 0.75, 0.0, -0.25, -0.75, 0.5, 0.25, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.25, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, 1.0, 0.25, -1.0, -0.75, -0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 0.25, 0.5, 0.5, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const array3 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.0, 0.25, -0.75, 0.0, 0.5, -0.75, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 0.5, 0.25, -0.25, 0.0, -0.25, -0.25, -1.0, -0.25, -0.5, -0.75, 0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.5, 0.75, 0.0, 0.0, -0.5, 1.0, 0.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -1.0, -1.0, 0.5, -0.5, -0.25, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    buffer201.destroy()
    device20.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    const array4 = new Float32Array([0.5, 0.25, 0.5, -0.25, 0.5, 0.75, 1.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.25, -0.75, -0.25, 0.0, 0.0, 0.25, -1.0, 0.75, -0.25, -0.25, 1.0, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.25, 1.0, 0.5, 0.5, 0.5, -0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.75, 0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -0.5, 0.5, -0.25, 0.25, -0.5, 0.0, 0.0, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 1.0, 0.5, -0.25, -1.0, -1.0, -0.5, 0.25, 1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.0, 0.25, -0.75, 0.25, 0.0, 0.25, 0.75, -0.75, -0.5, 1.0, -1.0, -0.5, 0.25, -0.25, 1.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.75, -0.75, ]);
    const array5 = new Float32Array([-0.75, -0.5, 0.75, 0.25, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 0.0, 0.0, -0.75, -0.5, 0.5, -1.0, 0.0, 0.25, 0.25, 0.25, -0.5, 0.0, 0.25, 0.0, -1.0, -0.25, 0.0, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.75, -0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 1.0, 0.75, 1.0, 0.75, 0.25, -0.5, 0.25, -0.5, 0.0, 0.25, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.25, ]);
    const array6 = new Float32Array([0.5, 0.75, -0.75, -1.0, 0.75, -0.25, -0.25, -1.0, -0.75, -1.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -0.5, 1.0, 0.0, 0.75, -0.25, -1.0, 1.0, -0.5, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.5, -0.75, -1.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.25, 0.75, -0.5, 0.5, -0.5, 0.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, -0.75, 0.75, 1.0, -0.5, -0.5, -1.0, 0.25, 0.75, -0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 0.0, -0.75, 0.75, -0.75, -0.75, -0.5, -1.0, 0.5, -0.25, 1.0, -0.75, 0.5, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, -1.0, 1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([0.25, -0.5, -1.0, 0.75, 0.25, 0.5, 0.5, 0.75, 0.0, 0.75, 0.75, -0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 0.25, 0.0, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, -0.5, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, -0.25, 0.25, -0.75, -1.0, 0.75, 0.25, 0.5, 0.0, 0.5, 0.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.25, 1.0, 0.5, -0.25, 0.25, -0.25, -0.5, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -1.0, -0.25, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.25, 1.0, -0.75, 0.75, -1.0, 0.25, -0.75, -1.0, -1.0, ]);
    const array8 = new Float32Array([-0.25, -0.25, -0.25, -0.25, -0.75, 0.5, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, 0.75, -1.0, -0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.25, -0.75, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 0.75, -0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 0.5, 0.75, 0.0, 0.0, 0.75, 0.75, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.75, 0.25, 0.0, -0.25, -0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 0.75, 0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, -1.0, -0.75, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.25, -0.75, 0.0, -0.5, 0.75, 1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device50.destroy();
    const array9 = new Float32Array([-1.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 0.0, -1.0, 0.75, 1.0, 1.0, 1.0, -1.0, 0.5, -1.0, 0.25, -0.25, 0.75, -0.25, -0.5, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.5, -1.0, 0.0, 0.75, 0.5, -0.75, 0.0, 0.5, -0.5, -0.5, -1.0, 0.75, -0.75, -0.5, 0.25, 0.75, 0.75, 0.75, 1.0, 1.0, 0.75, 0.5, -0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.75, 1.0, -1.0, 0.75, -0.5, 0.5, 0.0, 0.75, -0.25, -0.5, 0.0, -0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 0.25, -0.25, -0.5, -0.75, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, -0.75, -0.75, -1.0, 0.75, 0.0, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    buffer600.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const array10 = new Float32Array([-1.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.0, -0.75, 0.0, 0.5, 0.25, 0.25, -0.75, 1.0, 1.0, -0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.5, -0.25, 0.25, 0.25, -0.25, -0.75, 0.5, -1.0, -0.5, 1.0, 0.75, -1.0, 0.0, 0.25, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.25, -0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 0.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.25, 0.75, 0.25, 0.75, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 0.5, -0.5, 0.25, -0.5, -0.5, 0.25, 0.75, 0.0, 0.0, -0.25, 0.5, -0.5, -0.75, -0.25, ]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer701.destroy()
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device70.destroy();
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query600.destroy()
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query600.destroy()
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.destroy();
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.destroy();
    const array11 = new Float32Array([1.0, 0.25, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -0.75, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 1.0, -0.5, 0.5, -0.25, -0.25, 0.0, -0.5, 0.25, -0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, -0.75, -0.5, 0.75, 0.25, -1.0, 0.0, 0.75, -0.75, 0.0, 0.25, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.75, 0.25, 0.5, ]);
    const array12 = new Float32Array([0.5, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, -1.0, 1.0, 0.5, -0.25, -0.75, 1.0, 0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.25, -0.25, -1.0, 0.25, -0.25, 0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.5, -0.25, -0.75, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 0.0, 0.5, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, 0.0, 0.25, 0.25, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.25, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, 0.75, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 1.0, -1.0, 1.0, 0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array13 = new Float32Array([-0.75, 1.0, 1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.5, 0.5, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -0.25, 1.0, 1.0, 0.5, -0.25, 0.25, 0.25, -1.0, -0.5, 0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, 0.0, 0.5, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, 0.0, 1.0, 1.0, 1.0, 0.75, -0.25, 0.0, -0.5, -0.75, -0.75, -0.75, -0.75, -0.75, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 0.75, -1.0, ]);
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    query900.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device100.destroy();
    device90.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device120.destroy();
    
    const array14 = new Float32Array([0.0, 0.5, -1.0, 0.5, 0.5, 0.25, 0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, -0.25, 0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 0.75, 0.75, -0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, 0.25, -0.25, 1.0, 0.0, -0.75, 0.0, 1.0, 0.25, -1.0, -0.75, 0.25, 0.0, -0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 1.0, 1.0, -0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -0.5, 1.0, 0.25, -0.5, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, -1.0, -0.75, -1.0, -0.5, -0.5, 0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -1.0, 0.75, -1.0, -1.0, -0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.25, 0.0, ]);
    const array15 = new Float32Array([-1.0, -0.75, 1.0, 0.75, 0.5, 0.75, -1.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.75, 0.5, 1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.25, -0.75, 0.75, -1.0, -0.5, -0.25, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, -0.5, -0.25, 0.5, 0.5, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -1.0, 1.0, -0.25, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, -0.25, -0.5, 1.0, 0.75, 0.25, 0.25, 0.0, -0.25, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, ]);
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    buffer1100.destroy()
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    device110.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array16 = new Float32Array([-0.75, -0.5, 0.0, 1.0, -1.0, 1.0, -0.75, -0.25, -0.5, -0.75, 1.0, 1.0, -0.5, -0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -0.5, 1.0, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, -0.75, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, -0.25, 0.0, -1.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.25, 1.0, -1.0, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 1.0, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, -0.75, -0.75, -1.0, 0.0, -0.5, -1.0, 0.75, -1.0, 0.75, 0.5, 0.25, -0.5, 1.0, -1.0, -1.0, -1.0, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, 0.25, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, ]);
    const array17 = new Float32Array([-0.75, -1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.75, -1.0, 0.25, 0.75, 0.0, -1.0, -0.25, 0.25, 0.5, -1.0, -0.5, 0.0, 1.0, 0.5, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.75, 0.75, 0.25, -1.0, -1.0, -0.25, 1.0, -0.5, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, -0.75, -0.75, 0.5, 0.75, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 1.0, 0.25, 0.75, ]);
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const array18 = new Float32Array([0.0, 0.5, 0.75, 0.5, -0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.5, 1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 1.0, -0.5, 0.5, -0.5, -0.5, 0.25, -1.0, -0.75, -0.25, -0.75, -1.0, -0.75, 0.75, -1.0, 1.0, 0.0, 0.0, 1.0, -0.5, -0.5, -0.25, -1.0, 0.5, -0.25, 1.0, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, 1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -0.75, 0.0, -0.5, 0.75, -0.75, 0.75, -0.25, 1.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.75, 0.0, 0.0, 0.0, 0.75, 1.0, -0.5, -0.75, -0.5, -1.0, 0.0, 0.0, 0.75, ]);
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const array19 = new Float32Array([-0.5, -0.5, 0.75, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 0.5, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, 0.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, 0.75, 1.0, 1.0, -0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.25, -0.75, 0.75, -0.5, -0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -1.0, -0.25, -0.5, -1.0, 1.0, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.25, -0.75, 0.75, 0.25, 0.0, 1.0, 1.0, 0.5, ]);
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    query1400.destroy()
    buffer1400.destroy()
    device140.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device150.destroy();
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    device160.destroy();
    
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    query1700.destroy()
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    device170.destroy();
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    
    var shader_module1801_code = "";
    try {
        shader_module1801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1801 = await device180.createShaderModule({ label: "shader_module1801", code: shader_module1801_code })
    const render_pipeline1800 = device180.createRenderPipeline({
        label: "render_pipeline1800",
        vertex: {
            module: shader_module1801,
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
            module: shader_module1801,
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
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query1801 = device180.createQuerySet({
        label: "query1801",
        type: "occlusion",
        count: 32,
    });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    query1801.destroy()
    buffer1300.destroy()
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline1801 = device180.createRenderPipeline({
        label: "render_pipeline1801",
        vertex: {
            module: shader_module1801,
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
            module: shader_module1801,
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
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array20 = new Float32Array([0.75, 0.75, -0.5, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 1.0, -0.75, -0.25, -0.25, -0.5, -0.5, -0.5, 0.75, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 0.5, -0.25, 0.5, 0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 0.0, -1.0, 0.25, 0.25, -0.25, -0.25, -0.75, 1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.5, 0.25, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, 0.5, -0.75, 0.0, -0.5, 0.0, -1.0, -0.75, 0.25, 0.25, -0.5, 1.0, -0.25, 0.75, -1.0, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, -1.0, -0.25, -0.75, 1.0, 0.75, 1.0, 0.25, 1.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.25, -0.25, ]);
    device180.destroy();
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const array21 = new Float32Array([0.25, -0.5, 0.75, -0.5, 1.0, 1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -0.5, 0.0, -0.75, 1.0, 1.0, 0.0, -0.75, 0.75, 0.5, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, 1.0, 0.25, -0.5, -0.75, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, 0.25, -1.0, 0.5, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.0, ]);
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1301,
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
            module: shader_module1301,
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
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer1301.destroy()
    buffer1302.destroy()
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query1300.destroy()
    var shader_module1304_code = "";
    try {
        shader_module1304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1304 = await device130.createShaderModule({ label: "shader_module1304", code: shader_module1304_code })
    const render_pipeline1301 = device130.createRenderPipeline({
        label: "render_pipeline1301",
        vertex: {
            module: shader_module1303,
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
            module: shader_module1303,
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
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    query1301.destroy()
    const render_pipeline1302 = device130.createRenderPipeline({
        label: "render_pipeline1302",
        vertex: {
            module: shader_module1303,
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
            module: shader_module1303,
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
    var shader_module1305_code = "";
    try {
        shader_module1305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1305 = await device130.createShaderModule({ label: "shader_module1305", code: shader_module1305_code })
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    const array22 = new Float32Array([0.25, 0.25, -1.0, 0.0, 1.0, -0.5, -0.25, -0.75, -1.0, 0.0, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, -0.25, 0.75, -1.0, 1.0, -0.5, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, -0.5, -0.25, 0.75, 0.5, -1.0, 0.0, 0.0, -0.75, -0.25, 1.0, 0.75, 0.5, 0.0, 1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.5, 0.0, 0.0, 1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -0.5, -1.0, -0.25, 0.0, -0.25, -0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 0.25, -0.5, -0.25, 0.5, -0.75, -0.75, 0.5, -0.75, -0.5, 0.75, 1.0, -0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 1.0, 1.0, -0.75, 0.75, -1.0, -0.25, ]);
    
    query1301.destroy()
    
    var shader_module1306_code = "";
    try {
        shader_module1306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1306 = await device130.createShaderModule({ label: "shader_module1306", code: shader_module1306_code })
    const array23 = new Float32Array([0.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -0.25, 0.75, -0.25, -0.5, 0.25, 0.5, 0.75, -0.75, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, 0.75, -0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 0.75, -0.5, 0.0, -0.25, 0.25, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, 0.25, 0.25, 0.5, 0.75, 0.75, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, 1.0, -0.5, 0.0, -0.75, -0.5, 0.25, 0.0, 0.0, -1.0, 0.25, -0.75, ]);
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    const buffer1304 = device130.createBuffer({
        label: "buffer1304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query1301.destroy()
    const render_pipeline1303 = device130.createRenderPipeline({
        label: "render_pipeline1303",
        vertex: {
            module: shader_module1301,
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
            module: shader_module1301,
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
    const buffer1900 = device190.createBuffer({
        label: "buffer1900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer1303.destroy()
    
    const buffer1305 = device130.createBuffer({
        label: "buffer1305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query1301.destroy()
    
    const array24 = new Float32Array([0.75, 0.5, 0.0, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.0, -1.0, -0.25, -1.0, 0.75, -0.5, -0.75, 0.0, 0.5, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, 0.5, -1.0, 0.25, -1.0, -0.75, -0.5, 0.25, 1.0, -1.0, -0.5, 0.25, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, 0.25, 0.5, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, 0.75, -1.0, 0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, 0.5, -1.0, 0.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -0.75, 0.5, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, 1.0, 0.75, 1.0, 1.0, ]);
    const buffer1306 = device130.createBuffer({
        label: "buffer1306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer1900.destroy()
    query1300.destroy()
    device190.destroy();
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1307_code = "";
    try {
        shader_module1307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1307 = await device130.createShaderModule({ label: "shader_module1307", code: shader_module1307_code })
    query1301.destroy()
    const buffer1307 = device130.createBuffer({
        label: "buffer1307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device130.queue.writeBuffer(buffer1307, 0, array15, 0, array15.length);
    device130.queue.writeBuffer(buffer1307, 0, array6, 0, array6.length);
    buffer1306.destroy()
    
    device130.queue.writeBuffer(buffer1307, 0, array10, 0, array10.length);
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1308_code = "";
    try {
        shader_module1308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1308 = await device130.createShaderModule({ label: "shader_module1308", code: shader_module1308_code })
    device130.queue.writeBuffer(buffer1307, 0, array12, 0, array12.length);
    
    const render_pipeline1304 = device130.createRenderPipeline({
        label: "render_pipeline1304",
        vertex: {
            module: shader_module1306,
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
            module: shader_module1306,
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
    device130.queue.writeBuffer(buffer1307, 0, array11, 0, array11.length);
    device130.queue.writeBuffer(buffer1307, 0, array24, 0, array24.length);
    buffer1305.destroy()
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device130.queue.writeBuffer(buffer1307, 0, array22, 0, array22.length);
    device130.queue.writeBuffer(buffer1307, 0, array19, 0, array19.length);
    
    device130.queue.writeBuffer(buffer1307, 0, array22, 0, array22.length);
    device130.queue.writeBuffer(buffer1307, 0, array15, 0, array15.length);
    device130.queue.writeBuffer(buffer1307, 0, array1, 0, array1.length);
    device130.queue.writeBuffer(buffer1307, 0, array13, 0, array13.length);
    device130.queue.writeBuffer(buffer1307, 0, array15, 0, array15.length);
    const array25 = new Float32Array([0.5, -1.0, -0.25, 0.0, 1.0, -0.5, -1.0, -0.25, -0.75, -0.25, 0.5, 0.0, -0.5, 0.5, -1.0, 1.0, 0.5, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, 0.5, -0.5, 0.0, -0.75, -0.5, -0.75, 0.5, 1.0, 0.5, 0.0, -0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.75, -1.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, -0.5, -0.25, 0.0, 1.0, -1.0, -0.25, 0.0, -1.0, -0.75, -0.5, -0.75, -0.75, 0.0, 0.75, -0.75, -0.25, ]);
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1305 = device130.createRenderPipeline({
        label: "render_pipeline1305",
        vertex: {
            module: shader_module1303,
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
            module: shader_module1303,
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
    var shader_module1309_code = "";
    try {
        shader_module1309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1309 = await device130.createShaderModule({ label: "shader_module1309", code: shader_module1309_code })
    device130.queue.writeBuffer(buffer1307, 0, array2, 0, array2.length);
    device130.queue.writeBuffer(buffer1307, 0, array21, 0, array21.length);
    const buffer1308 = device130.createBuffer({
        label: "buffer1308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device130.queue.writeBuffer(buffer1307, 0, array21, 0, array21.length);
    
    
    device130.queue.writeBuffer(buffer1307, 0, array15, 0, array15.length);
    
    device130.queue.writeBuffer(buffer1307, 0, array14, 0, array14.length);
    device130.queue.writeBuffer(buffer1307, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1307, 0, array12, 0, array12.length);
    device130.queue.writeBuffer(buffer1307, 0, array16, 0, array16.length);
    device130.queue.writeBuffer(buffer1307, 0, array0, 0, array0.length);
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    var shader_module13010_code = "";
    try {
        shader_module13010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module13010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module13010 = await device130.createShaderModule({ label: "shader_module13010", code: shader_module13010_code })
    device130.queue.writeBuffer(buffer1307, 0, array23, 0, array23.length);
    device130.queue.writeBuffer(buffer1307, 0, array13, 0, array13.length);
    
    const array26 = new Float32Array([-1.0, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, 0.25, -0.25, -1.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.5, -0.25, -0.75, -0.75, 0.25, -0.75, 0.5, 1.0, 0.25, -0.75, 0.25, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, 1.0, 0.5, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, 0.75, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.25, 1.0, 0.5, 0.25, -0.5, -0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, -0.5, -0.5, -0.75, 0.5, -1.0, -0.5, 0.25, -1.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.75, 0.75, -0.5, 0.25, -0.25, 1.0, -0.75, -0.5, ]);
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline1306 = device130.createRenderPipeline({
        label: "render_pipeline1306",
        vertex: {
            module: shader_module1301,
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
            module: shader_module1301,
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
    
    const sampler2200 = device220.createSampler( { label: "sampler2200" } );
    query1301.destroy()
    
    
    const query1303 = device130.createQuerySet({
        label: "query1303",
        type: "occlusion",
        count: 32,
    });
    var shader_module13011_code = "";
    try {
        shader_module13011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module13011 = await device130.createShaderModule({ label: "shader_module13011", code: shader_module13011_code })
    buffer1304.destroy()
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    device130.queue.writeBuffer(buffer1307, 0, array3, 0, array3.length);
    device130.queue.writeBuffer(buffer1307, 0, array24, 0, array24.length);
    device130.queue.writeBuffer(buffer1307, 0, array20, 0, array20.length);
    var shader_module2000_code = "";
    try {
        shader_module2000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2000 = await device200.createShaderModule({ label: "shader_module2000", code: shader_module2000_code })
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query1302.destroy()
    device130.queue.writeBuffer(buffer1307, 0, array7, 0, array7.length);
    device130.queue.writeBuffer(buffer1307, 0, array23, 0, array23.length);
    
    device130.queue.writeBuffer(buffer1307, 0, array19, 0, array19.length);
    device220.destroy();
    const query1304 = device130.createQuerySet({
        label: "query1304",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeBuffer(buffer1307, 0, array2, 0, array2.length);
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    device130.queue.writeBuffer(buffer1307, 0, array10, 0, array10.length);
    
    device130.queue.writeBuffer(buffer1307, 0, array4, 0, array4.length);
    const sampler1304 = device130.createSampler( { label: "sampler1304" } );
    device130.queue.writeBuffer(buffer1307, 0, array0, 0, array0.length);
    
    const sampler1305 = device130.createSampler( { label: "sampler1305" } );
    device130.queue.writeBuffer(buffer1307, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1307, 0, array11, 0, array11.length);
    device130.queue.writeBuffer(buffer1307, 0, array11, 0, array11.length);
    const render_pipeline1307 = device130.createRenderPipeline({
        label: "render_pipeline1307",
        vertex: {
            module: shader_module1308,
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
            module: shader_module1308,
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
    device130.queue.writeBuffer(buffer1307, 0, array22, 0, array22.length);
    const buffer1309 = device130.createBuffer({
        label: "buffer1309",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer1307.destroy()
    query1300.destroy()
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.destroy();
    const sampler2300 = device230.createSampler( { label: "sampler2300" } );
    var shader_module2001_code = "";
    try {
        shader_module2001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2001 = await device200.createShaderModule({ label: "shader_module2001", code: shader_module2001_code })
    var shader_module2300_code = "";
    try {
        shader_module2300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2300 = await device230.createShaderModule({ label: "shader_module2300", code: shader_module2300_code })
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    const sampler2101 = device210.createSampler( { label: "sampler2101" } );
    const query2100 = device210.createQuerySet({
        label: "query2100",
        type: "occlusion",
        count: 32,
    });
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    const sampler2001 = device200.createSampler( { label: "sampler2001" } );
    buffer2300.destroy()
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const buffer2400 = device240.createBuffer({
        label: "buffer2400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module2101_code = "";
    try {
        shader_module2101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2101 = await device210.createShaderModule({ label: "shader_module2101", code: shader_module2101_code })
    var shader_module2301_code = "";
    try {
        shader_module2301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2301 = await device230.createShaderModule({ label: "shader_module2301", code: shader_module2301_code })
    device240.queue.writeBuffer(buffer2400, 0, array24, 0, array24.length);
    device240.queue.writeBuffer(buffer2400, 0, array14, 0, array14.length);
    device240.queue.writeBuffer(buffer2400, 0, array25, 0, array25.length);
    device240.queue.writeBuffer(buffer2400, 0, array3, 0, array3.length);
    device240.queue.writeBuffer(buffer2400, 0, array13, 0, array13.length);
    {
        await buffer2400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2400.unmap();
        console.log(new Float32Array(data));
    }
    device240.queue.writeBuffer(buffer2400, 0, array19, 0, array19.length);
    device240.queue.writeBuffer(buffer2400, 0, array23, 0, array23.length);
    const query2400 = device240.createQuerySet({
        label: "query2400",
        type: "occlusion",
        count: 32,
    });
    device240.queue.writeBuffer(buffer2400, 0, array11, 0, array11.length);
    var shader_module2302_code = "";
    try {
        shader_module2302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2302 = await device230.createShaderModule({ label: "shader_module2302", code: shader_module2302_code })
    query2100.destroy()
    device240.queue.writeBuffer(buffer2400, 0, array20, 0, array20.length);
    
    
    var shader_module2002_code = "";
    try {
        shader_module2002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2002 = await device200.createShaderModule({ label: "shader_module2002", code: shader_module2002_code })
    var shader_module2102_code = "";
    try {
        shader_module2102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2102 = await device210.createShaderModule({ label: "shader_module2102", code: shader_module2102_code })
    var shader_module2103_code = "";
    try {
        shader_module2103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2103 = await device210.createShaderModule({ label: "shader_module2103", code: shader_module2103_code })
    buffer2400.destroy()
    var shader_module2400_code = "";
    try {
        shader_module2400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2400 = await device240.createShaderModule({ label: "shader_module2400", code: shader_module2400_code })
    const sampler2400 = device240.createSampler( { label: "sampler2400" } );
    var shader_module2104_code = "";
    try {
        shader_module2104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2104 = await device210.createShaderModule({ label: "shader_module2104", code: shader_module2104_code })
    const query2401 = device240.createQuerySet({
        label: "query2401",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module2303_code = "";
    try {
        shader_module2303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2303 = await device230.createShaderModule({ label: "shader_module2303", code: shader_module2303_code })
    const array27 = new Float32Array([-0.75, 0.75, 0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.75, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -0.25, -0.25, 0.25, 1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -1.0, 1.0, -0.75, -1.0, -0.5, 0.75, 0.25, -0.75, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 0.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.75, -0.75, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.75, 0.0, -0.5, 0.25, 0.25, -1.0, -1.0, ]);
    const query2402 = device240.createQuerySet({
        label: "query2402",
        type: "occlusion",
        count: 32,
    });
    
    query2400.destroy()
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    const buffer2401 = device240.createBuffer({
        label: "buffer2401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query2101 = device210.createQuerySet({
        label: "query2101",
        type: "occlusion",
        count: 32,
    });
    const query2102 = device210.createQuerySet({
        label: "query2102",
        type: "occlusion",
        count: 32,
    });
    device240.queue.writeBuffer(buffer2401, 0, array2, 0, array2.length);
    device240.queue.writeBuffer(buffer2401, 0, array17, 0, array17.length);
    
    
    query2401.destroy()
    device240.queue.writeBuffer(buffer2401, 0, array1, 0, array1.length);
    device240.queue.writeBuffer(buffer2401, 0, array20, 0, array20.length);
    device240.queue.writeBuffer(buffer2401, 0, array7, 0, array7.length);
    device240.queue.writeBuffer(buffer2401, 0, array26, 0, array26.length);
    const query2300 = device230.createQuerySet({
        label: "query2300",
        type: "occlusion",
        count: 32,
    });
    query2402.destroy()
    const sampler2301 = device230.createSampler( { label: "sampler2301" } );
    
    const render_pipeline2400 = device240.createRenderPipeline({
        label: "render_pipeline2400",
        vertex: {
            module: shader_module2400,
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
            module: shader_module2400,
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
    query2402.destroy()
    const query2001 = device200.createQuerySet({
        label: "query2001",
        type: "occlusion",
        count: 32,
    });
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device240.queue.writeBuffer(buffer2401, 0, array15, 0, array15.length);
    
    const sampler2302 = device230.createSampler( { label: "sampler2302" } );
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device240.queue.writeBuffer(buffer2401, 0, array24, 0, array24.length);
    
    const render_pipeline2300 = device230.createRenderPipeline({
        label: "render_pipeline2300",
        vertex: {
            module: shader_module2301,
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
            module: shader_module2301,
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
    device240.queue.writeBuffer(buffer2401, 0, array0, 0, array0.length);
    
    
    device240.queue.writeBuffer(buffer2401, 0, array14, 0, array14.length);
    const array28 = new Float32Array([0.0, -0.75, -0.5, -0.25, -0.5, 0.25, 1.0, -1.0, 0.25, 0.5, 0.75, 0.0, 0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 0.0, 0.0, 1.0, 0.5, 0.5, -0.75, -0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.0, -1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -1.0, 1.0, 0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -0.25, 0.0, -1.0, 0.75, 0.5, -0.75, 0.25, -0.75, -0.75, -0.5, -1.0, 0.0, 0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 0.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 1.0, -0.25, -1.0, -0.5, ]);
    const buffer2301 = device230.createBuffer({
        label: "buffer2301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module2401_code = "";
    try {
        shader_module2401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2401 = await device240.createShaderModule({ label: "shader_module2401", code: shader_module2401_code })
    device230.queue.writeBuffer(buffer2301, 0, array2, 0, array2.length);
    var shader_module2105_code = "";
    try {
        shader_module2105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2105 = await device210.createShaderModule({ label: "shader_module2105", code: shader_module2105_code })
    const render_pipeline2100 = device210.createRenderPipeline({
        label: "render_pipeline2100",
        vertex: {
            module: shader_module2102,
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
            module: shader_module2102,
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
    device230.queue.writeBuffer(buffer2301, 0, array21, 0, array21.length);
    var shader_module2106_code = "";
    try {
        shader_module2106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2106 = await device210.createShaderModule({ label: "shader_module2106", code: shader_module2106_code })
    device240.queue.writeBuffer(buffer2401, 0, array24, 0, array24.length);
    var shader_module2107_code = "";
    try {
        shader_module2107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2107 = await device210.createShaderModule({ label: "shader_module2107", code: shader_module2107_code })
    device240.queue.writeBuffer(buffer2401, 0, array19, 0, array19.length);
    device230.queue.writeBuffer(buffer2301, 0, array18, 0, array18.length);
    device240.queue.writeBuffer(buffer2401, 0, array4, 0, array4.length);
    buffer2100.destroy()
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device240.queue.writeBuffer(buffer2401, 0, array20, 0, array20.length);
    device240.queue.writeBuffer(buffer2401, 0, array6, 0, array6.length);
    const render_pipeline2101 = device210.createRenderPipeline({
        label: "render_pipeline2101",
        vertex: {
            module: shader_module2101,
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
            module: shader_module2101,
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
    device230.queue.writeBuffer(buffer2301, 0, array10, 0, array10.length);
    
    const render_pipeline2102 = device210.createRenderPipeline({
        label: "render_pipeline2102",
        vertex: {
            module: shader_module2102,
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
            module: shader_module2102,
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
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    
    const sampler2401 = device240.createSampler( { label: "sampler2401" } );
    const buffer2302 = device230.createBuffer({
        label: "buffer2302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device230.queue.writeBuffer(buffer2301, 0, array1, 0, array1.length);
    device240.queue.writeBuffer(buffer2401, 0, array0, 0, array0.length);
    device230.queue.writeBuffer(buffer2301, 0, array22, 0, array22.length);
    const buffer2402 = device240.createBuffer({
        label: "buffer2402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query2102.destroy()
    device240.queue.writeBuffer(buffer2401, 0, array17, 0, array17.length);
    const buffer2500 = device250.createBuffer({
        label: "buffer2500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device200.destroy();
    device240.queue.writeBuffer(buffer2401, 0, array28, 0, array28.length);
    device240.queue.writeBuffer(buffer2401, 0, array8, 0, array8.length);
    device230.queue.writeBuffer(buffer2301, 0, array2, 0, array2.length);
    device240.queue.writeBuffer(buffer2401, 0, array5, 0, array5.length);
    device240.queue.writeBuffer(buffer2401, 0, array24, 0, array24.length);
    device240.queue.writeBuffer(buffer2401, 0, array24, 0, array24.length);
    device230.queue.writeBuffer(buffer2301, 0, array8, 0, array8.length);
    const render_pipeline2103 = device210.createRenderPipeline({
        label: "render_pipeline2103",
        vertex: {
            module: shader_module2107,
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
            module: shader_module2107,
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
    device240.queue.writeBuffer(buffer2401, 0, array9, 0, array9.length);
    device230.queue.writeBuffer(buffer2301, 0, array20, 0, array20.length);
    const render_pipeline2104 = device210.createRenderPipeline({
        label: "render_pipeline2104",
        vertex: {
            module: shader_module2106,
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
            module: shader_module2106,
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
    const render_pipeline2105 = device210.createRenderPipeline({
        label: "render_pipeline2105",
        vertex: {
            module: shader_module2106,
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
            module: shader_module2106,
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
    device240.queue.writeBuffer(buffer2401, 0, array19, 0, array19.length);
    device240.queue.writeBuffer(buffer2401, 0, array12, 0, array12.length);
    device230.queue.writeBuffer(buffer2301, 0, array0, 0, array0.length);
    device230.queue.writeBuffer(buffer2301, 0, array25, 0, array25.length);
    device230.queue.writeBuffer(buffer2301, 0, array23, 0, array23.length);
    device230.queue.writeBuffer(buffer2301, 0, array21, 0, array21.length);
    device230.queue.writeBuffer(buffer2301, 0, array14, 0, array14.length);
    
    buffer2301.destroy()
    var shader_module2402_code = "";
    try {
        shader_module2402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2402 = await device240.createShaderModule({ label: "shader_module2402", code: shader_module2402_code })
    device240.queue.writeBuffer(buffer2401, 0, array7, 0, array7.length);
    const query2301 = device230.createQuerySet({
        label: "query2301",
        type: "occlusion",
        count: 32,
    });
    
    query2102.destroy()
    const render_pipeline2106 = device210.createRenderPipeline({
        label: "render_pipeline2106",
        vertex: {
            module: shader_module2106,
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
            module: shader_module2106,
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
    device240.queue.writeBuffer(buffer2401, 0, array3, 0, array3.length);
    device240.queue.writeBuffer(buffer2401, 0, array4, 0, array4.length);
    
    query2101.destroy()
    var shader_module2108_code = "";
    try {
        shader_module2108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2108 = await device210.createShaderModule({ label: "shader_module2108", code: shader_module2108_code })
    device240.queue.writeBuffer(buffer2401, 0, array23, 0, array23.length);
    
    query2102.destroy()
    var shader_module2500_code = "";
    try {
        shader_module2500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2500 = await device250.createShaderModule({ label: "shader_module2500", code: shader_module2500_code })
    device240.queue.writeBuffer(buffer2401, 0, array19, 0, array19.length);
    const sampler2500 = device250.createSampler( { label: "sampler2500" } );
    const buffer2303 = device230.createBuffer({
        label: "buffer2303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query2401.destroy()
    const query2500 = device250.createQuerySet({
        label: "query2500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module2304_code = "";
    try {
        shader_module2304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2304 = await device230.createShaderModule({ label: "shader_module2304", code: shader_module2304_code })
    
    device240.queue.writeBuffer(buffer2401, 0, array22, 0, array22.length);
    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device240.queue.writeBuffer(buffer2401, 0, array5, 0, array5.length);
}