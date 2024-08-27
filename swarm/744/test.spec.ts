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
    const array0 = new Float32Array([0.75, -1.0, 0.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.25, 0.25, 0.0, 0.25, 0.0, 0.25, 0.5, -1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.75, 0.25, 0.75, 1.0, 1.0, 0.5, 1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 1.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, 1.0, -0.25, 0.0, 0.25, -0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, -0.75, -0.25, 0.0, -1.0, -0.25, 0.75, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 1.0, 0.0, -0.75, -0.5, 1.0, 0.75, 1.0, 0.5, 0.5, 0.25, -0.25, 0.5, 1.0, -0.25, 0.0, -1.0, 0.5, 1.0, 0.75, -0.5, 1.0, -0.5, 0.25, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    device00.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array1 = new Float32Array([-0.25, -0.25, -0.5, 0.25, -1.0, 0.25, 0.25, 0.5, 0.75, 1.0, 0.75, -0.25, 0.75, 0.75, -0.25, 0.75, -0.5, 0.25, 0.75, 1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, -0.5, -0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 0.75, 0.25, 0.25, -0.5, 0.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.0, -1.0, 0.0, 0.5, 0.5, 0.75, 0.0, -0.5, -0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 0.5, 0.25, 0.75, -0.75, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 0.25, -0.5, 0.75, -1.0, 0.25, -0.5, 0.0, 0.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.25, -0.75, 1.0, -0.25, -0.5, ]);
    
    
    
    
    
    
    texture100.destroy();
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-0.25, -1.0, 0.25, 1.0, 0.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, -0.5, -0.5, 1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, 1.0, 0.5, 0.0, 0.5, 0.75, -0.75, -1.0, -0.25, 0.25, -1.0, 0.5, -1.0, 0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.0, -1.0, -0.5, 0.5, -0.25, 0.25, 0.25, 0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, -0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 0.75, 0.25, 0.75, 0.0, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device10.destroy();
    
    const array3 = new Float32Array([0.5, -0.75, 0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, -0.5, 1.0, 1.0, 0.75, 0.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -1.0, -1.0, -0.25, 0.75, -0.25, -0.5, -0.5, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, 1.0, 0.25, 0.0, 1.0, -0.25, 0.75, -0.75, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 1.0, -0.25, -0.75, 1.0, -0.5, -1.0, 0.25, -0.25, -1.0, 0.25, -0.5, -0.5, 0.5, -0.75, 0.5, 0.0, 0.75, 1.0, -0.75, 0.75, -0.75, 0.75, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    device20.pushErrorScope("validation");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([-1.0, -0.25, -0.25, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 0.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.75, -0.75, 0.5, -0.5, 0.0, -0.5, 1.0, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, 1.0, -0.75, 0.0, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.5, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -1.0, 0.5, -0.75, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, ]);
    device20.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    query300.destroy()
    const array5 = new Float32Array([0.75, -1.0, -0.25, -0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -1.0, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.5, 0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, 0.75, -1.0, 1.0, 0.75, 0.0, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -0.75, -0.5, 0.25, 1.0, 1.0, -1.0, 1.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.5, -0.25, -1.0, 0.5, 0.5, 0.25, 0.0, -0.75, 0.0, 0.75, 0.25, -1.0, 0.25, 0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 1.0, -0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, 0.75, -0.25, 0.25, -0.5, 0.5, 0.5, -0.75, ]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const array6 = new Float32Array([1.0, -1.0, 0.5, 0.0, -0.75, -1.0, -0.75, 0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, 0.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.5, 1.0, 0.75, 0.0, -1.0, 0.5, 0.75, 0.25, -0.75, -1.0, 0.0, -0.5, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 0.75, 0.5, -0.5, 0.25, 0.25, 0.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.75, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.5, ]);
    
    query300.destroy()
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    query302.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const array7 = new Float32Array([-0.25, -0.5, -1.0, -0.25, -1.0, 0.5, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, 0.5, -1.0, 0.25, -0.5, 0.25, 0.0, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 0.5, -1.0, -0.5, 0.75, -0.75, 0.5, -0.25, -0.5, 0.0, -1.0, -0.75, -1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.0, -1.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 1.0, 0.75, -0.75, 0.5, -1.0, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, -0.25, 0.25, 0.5, -0.5, -0.25, -0.25, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, ]);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([-0.75, -0.75, -0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, 1.0, -0.25, 0.0, -0.25, -0.5, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 0.5, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -0.75, -0.5, -0.5, 0.0, 0.25, -1.0, 0.0, 1.0, 0.0, -1.0, 1.0, 0.75, 0.5, 0.0, 0.25, -0.75, -1.0, 1.0, -0.5, 0.25, 0.0, 0.0, -0.75, 1.0, -0.75, 1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 1.0, 0.75, 1.0, -0.75, 0.25, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, 0.25, 0.75, -0.5, -0.5, 0.25, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, -0.5, 0.25, -0.5, 0.75, 0.25, -1.0, ]);
    texture600.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const array9 = new Float32Array([-0.5, 0.5, 1.0, 0.75, 1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, 0.25, -0.5, -0.25, -0.25, 1.0, 0.25, -1.0, -0.25, 0.75, 1.0, -1.0, 0.75, -1.0, -0.75, 0.75, -1.0, -0.75, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.75, -0.75, -0.5, 0.0, 0.75, 0.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.0, 0.0, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, 0.0, 1.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, 1.0, -0.5, 0.25, -0.25, 1.0, 0.5, -0.5, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -0.25, 0.25, -0.75, 0.75, -0.75, 0.0, -1.0, 0.75, ]);
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture602.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture601.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture603 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.25, -1.0, 0.75, -0.75, -1.0, -0.5, -0.25, -1.0, 0.5, 1.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.75, -0.25, 0.25, 0.0, 0.0, -0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -1.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.25, -1.0, 1.0, -0.5, 1.0, 0.25, 0.0, 1.0, 0.0, 0.75, -0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, 0.25, -0.5, 0.0, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.0, -1.0, 1.0, 1.0, -0.25, -0.5, -0.75, 0.75, -1.0, 0.25, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, 1.0, 0.75, 0.0, 0.25, -1.0, -0.5, -1.0, -0.25, 0.75, ]);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.queue.writeTexture({ texture: texture603 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.pushErrorScope("internal");
    
    
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.pushErrorScope("out-of-memory");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.queue.writeTexture({ texture: texture603 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device60.queue.writeTexture({ texture: texture603 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device70.pushErrorScope("out-of-memory");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.queue.writeTexture({ texture: texture603 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const texture_view6040 = texture604.createView({ label: "texture_view6040" });
    device60.queue.writeTexture({ texture: texture603 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture603 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view6041 = texture604.createView({ label: "texture_view6041" });
    
    device70.pushErrorScope("out-of-memory");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    texture603.destroy();
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    device50.pushErrorScope("internal");
    query602.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture_view6042 = texture604.createView({ label: "texture_view6042" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query701.destroy()
    
    query500.destroy()
    query601.destroy()
    device60.pushErrorScope("validation");
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    texture500.destroy();
    query601.destroy()
    
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    
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
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query602.destroy()
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const texture_view6050 = texture605.createView({ label: "texture_view6050" });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    texture604.destroy();
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query702.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    query603.destroy()
    
    query600.destroy()
    
    const texture_view6051 = texture605.createView({ label: "texture_view6051" });
    const texture606 = device60.createTexture({
        label: "texture606",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query603.destroy()
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array11 = new Float32Array([-1.0, 1.0, -0.25, 0.25, -1.0, -1.0, 0.25, 0.25, -0.75, -0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.5, 0.25, -0.25, 0.75, -0.75, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, -0.25, 1.0, 0.0, -0.75, 0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 1.0, -0.75, 1.0, -1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.75, -0.75, 0.75, -0.5, -0.5, 0.5, 1.0, 0.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, 1.0, 0.25, 0.0, ]);
    
    query502.destroy()
    
    query603.destroy()
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    query502.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    
    
    
    query500.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    texture701.destroy();
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
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
    
    
    
    query503.destroy()
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    
    texture606.destroy();
    device50.pushErrorScope("out-of-memory");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    device50.destroy();
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array12 = new Float32Array([0.5, 0.5, -0.75, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, 0.5, 0.75, -0.75, 0.75, 0.0, -0.5, 0.75, -0.5, -1.0, 0.5, -0.75, 0.75, 0.25, -0.75, 1.0, 0.5, 0.25, 0.0, -0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -0.75, 0.5, 0.0, 0.5, 0.25, 1.0, -0.5, -0.5, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, 1.0, 0.25, 0.5, -1.0, -0.75, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, 0.5, 0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.75, 1.0, -0.75, -0.5, 0.75, -0.75, -0.5, -0.75, -0.25, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, -1.0, 0.0, -0.5, -0.25, 0.25, ]);
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query601.destroy()
    device70.queue.writeTexture({ texture: texture703 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query702.destroy()
    
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture700.destroy();
    const sampler602 = device60.createSampler( { label: "sampler602" } );
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
    device60.destroy();
    texture702.destroy();
    
    device70.queue.writeTexture({ texture: texture703 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture703 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    
    
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device70.queue.writeTexture({ texture: texture703 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device70.queue.writeTexture({ texture: texture703 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    texture703.destroy();
    
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture704 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture704 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device70.queue.writeTexture({ texture: texture704 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture704 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.pushErrorScope("out-of-memory");
    
    device70.queue.writeTexture({ texture: texture704 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeTexture({ texture: texture704 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query701.destroy()
    
    
    device70.queue.writeTexture({ texture: texture704 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.queue.writeTexture({ texture: texture704 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query700.destroy()
    device70.queue.writeTexture({ texture: texture704 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeTexture({ texture: texture704 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    query702.destroy()
    
    device70.queue.writeTexture({ texture: texture704 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    const array13 = new Float32Array([0.75, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.75, 0.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.75, -0.75, 0.5, 0.25, -0.5, -1.0, 0.75, 0.5, -0.5, -1.0, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, -1.0, -0.75, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, 1.0, 1.0, 1.0, -0.75, -1.0, 0.0, 0.5, -1.0, 0.75, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, -0.25, -0.25, 0.0, 1.0, 0.0, -0.75, 1.0, -0.25, -0.5, 1.0, 0.5, 0.5, 0.0, -1.0, -0.5, -1.0, -0.5, -0.75, -1.0, 0.5, -1.0, 0.25, -1.0, 1.0, -1.0, -0.25, -0.75, 0.5, 0.75, 0.75, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, 0.75, ]);
    
    device70.pushErrorScope("validation");
    
    device70.queue.writeTexture({ texture: texture704 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query702.destroy()
    device70.queue.writeTexture({ texture: texture704 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeTexture({ texture: texture704 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture900 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture900.destroy();
    device70.queue.writeTexture({ texture: texture704 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    device70.queue.writeTexture({ texture: texture704 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device100.destroy();
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    device70.queue.writeTexture({ texture: texture704 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.destroy();
    query702.destroy()
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device70.queue.writeTexture({ texture: texture704 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture704 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array14 = new Float32Array([1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 0.25, 0.75, 0.25, -1.0, 0.75, -0.75, -0.75, -0.25, 1.0, -0.5, -0.75, -0.75, 0.5, -0.25, 0.75, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, -1.0, 0.25, -1.0, -0.25, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, -0.5, 0.75, 1.0, -0.25, -0.5, -0.5, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, -1.0, 1.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.5, -0.25, -0.25, 0.25, 0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -1.0, -0.25, -1.0, 0.75, 0.75, -0.5, 0.5, -0.75, -0.25, 0.25, 0.25, 0.5, -0.75, ]);
    query702.destroy()
    
    device70.queue.writeTexture({ texture: texture704 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture704 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    query704.destroy()
    device70.queue.writeTexture({ texture: texture704 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeTexture({ texture: texture704 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    
    
    device70.queue.writeTexture({ texture: texture704 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query704.destroy()
    query701.destroy()
    device70.destroy();
    
    
    const array15 = new Float32Array([0.75, -0.75, 1.0, 0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.75, 1.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.0, 0.25, -1.0, 0.75, -1.0, -0.25, 0.5, -0.75, 0.5, -0.5, 1.0, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, -0.5, 1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.25, 1.0, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, 0.0, 0.25, 0.25, 0.75, -1.0, 0.5, 0.0, -0.25, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, -0.25, 0.0, 0.75, ]);
    
    
    
    
    
    
    
    const array16 = new Float32Array([0.75, 0.75, -0.5, 0.5, 0.25, 0.25, 0.75, -1.0, 0.75, -0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.25, 0.5, -0.75, 0.75, -0.5, 1.0, 0.0, 1.0, -0.25, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, -0.75, 0.25, 0.0, 1.0, 0.25, -0.25, 0.75, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, 0.0, 0.0, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.75, 0.0, 0.75, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.5, 0.5, 0.0, -0.25, 0.0, 0.0, -0.25, 0.75, -1.0, -0.75, 1.0, -0.25, 0.75, 0.25, 0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 0.25, 0.75, ]);
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device120.destroy();
    
    
    
}