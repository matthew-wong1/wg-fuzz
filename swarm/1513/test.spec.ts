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
    const array0 = new Float32Array([1.0, 0.5, -0.25, 1.0, -0.25, 0.25, 0.25, 0.5, -0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, -0.75, -0.25, -0.25, -0.75, -0.25, -0.25, 0.5, 0.5, -0.25, -0.75, -1.0, 0.5, -0.5, -1.0, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.75, 0.75, 0.75, -0.75, 1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -0.5, 0.5, -0.75, 0.75, -1.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.5, -1.0, -0.25, 0.0, 0.5, 0.25, -1.0, -0.5, 1.0, 0.0, 0.5, 0.5, 0.5, -0.25, -1.0, 0.75, 0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, 0.5, 1.0, -0.5, ]);
    const array1 = new Float32Array([-0.5, -0.75, -0.25, -0.25, -0.75, 0.0, 0.5, -0.25, 1.0, -1.0, -0.25, 0.0, 0.0, -0.5, 1.0, -0.5, 1.0, 0.0, -1.0, -0.5, 1.0, 0.75, -1.0, 1.0, 1.0, 0.25, -0.5, -0.25, -0.75, 0.0, 0.75, -1.0, -1.0, 0.25, -1.0, -0.5, 0.5, -0.25, 0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, -0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, 0.75, -0.75, 1.0, 1.0, 0.0, 0.0, -0.25, 0.25, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 0.25, -0.5, 0.0, -0.75, ]);
    const array2 = new Float32Array([0.75, 0.5, -0.25, -0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 0.25, 0.0, -0.5, -0.5, -1.0, -1.0, -0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.0, 1.0, 0.25, 0.25, -0.5, -0.5, 0.0, 0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 0.25, -0.5, 0.0, 0.25, 0.75, -0.25, 0.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.0, 0.25, 0.75, -0.5, -0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 0.5, -1.0, -0.5, 0.0, -0.5, 0.25, 0.75, -0.5, 0.75, 0.75, 1.0, -1.0, 0.75, -1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.75, 1.0, 0.0, 1.0, 0.0, 0.5, 0.25, -0.5, 1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.25, -1.0, 0.75, -0.25, 1.0, -0.5, 0.0, 0.0, 0.5, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, 0.0, -0.5, -0.75, 0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.0, 0.0, -0.25, 0.25, 0.25, 0.25, 0.25, 0.0, 0.5, -0.25, -0.75, -0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.5, 1.0, -0.75, -0.75, 0.0, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, 0.5, 0.25, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array4 = new Float32Array([-0.5, -1.0, -0.25, 0.75, -0.25, -1.0, 1.0, -0.75, 1.0, -0.75, -0.75, 0.75, 0.5, 0.5, 0.25, -0.25, -1.0, 0.25, 0.5, 0.75, 0.5, 0.75, 0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.25, -0.75, -0.75, 0.0, 0.0, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, 1.0, 1.0, -1.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.25, -0.25, -0.5, -0.25, 0.0, 1.0, 1.0, 0.75, -0.5, -0.25, 1.0, -0.25, -0.5, -0.5, -0.75, 1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, 0.75, -0.25, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -1.0, -1.0, -0.25, 0.0, -0.5, -0.5, -0.75, -0.25, -0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const array5 = new Float32Array([-1.0, 0.25, 0.0, 0.0, -0.75, 0.0, -0.25, 0.0, 1.0, -0.25, -0.75, -0.5, 0.5, -1.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.25, -1.0, -1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.5, 0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -0.25, 0.5, -0.5, 0.25, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, 0.25, 0.25, -0.5, -1.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.5, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.5, 1.0, -0.25, 0.5, -1.0, -0.75, -0.25, -0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 0.0, -0.25, 0.25, -0.25, 0.0, 1.0, 0.75, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const array6 = new Float32Array([0.25, -1.0, 0.5, 0.25, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.75, 0.5, -0.5, 0.0, 0.25, 0.25, -0.5, 0.5, -0.5, 0.0, 0.5, 1.0, -1.0, 0.75, 0.75, -0.75, 0.5, -1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 0.25, -0.5, -1.0, -0.25, -0.75, 1.0, 0.5, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, -0.75, -0.25, 1.0, -0.75, 0.5, -1.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.0, -0.5, 0.75, -0.75, 0.75, 1.0, -1.0, 0.25, 1.0, 0.25, -0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, -0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 1.0, ]);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array7 = new Float32Array([0.75, 0.75, -0.5, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, 0.75, -0.25, -0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 0.75, -0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.25, -0.25, 0.25, 0.75, 0.0, 0.0, 0.5, -0.25, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, 0.0, -0.5, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 0.75, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, -0.5, 0.0, -0.25, -0.5, 0.75, 1.0, 0.75, -0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 1.0, 0.0, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array8 = new Float32Array([0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, 1.0, 0.25, -0.5, 0.25, 1.0, 1.0, -1.0, 0.75, -0.75, 0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -1.0, -0.25, -1.0, 1.0, 0.0, -0.5, 0.25, 1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, -0.5, -1.0, 0.0, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, 1.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 1.0, 1.0, 1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const array9 = new Float32Array([0.5, -0.25, -0.25, 0.0, 0.25, -0.25, -0.25, 0.25, 0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.75, -0.5, 0.0, -0.5, 0.25, 0.5, 0.75, 0.5, 0.75, -0.5, -0.5, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, -0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.75, -1.0, 1.0, 0.0, 0.0, -0.75, 0.5, 0.75, -0.75, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, 0.5, 0.0, 0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.75, -0.5, -0.75, -0.25, 1.0, 0.5, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device30.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer200.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const array10 = new Float32Array([0.75, -0.75, -0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.0, 0.0, -0.5, 1.0, 1.0, 0.0, -1.0, -0.5, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, 0.25, -0.75, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, -1.0, -0.25, 1.0, 1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -1.0, -1.0, 0.25, -0.25, -1.0, 1.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.0, -1.0, 0.0, -1.0, 1.0, 0.75, 0.0, 0.25, 1.0, -1.0, 0.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.25, -1.0, 0.75, -0.75, -0.25, 0.75, ]);
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    
    device30.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer201.destroy()
    
    buffer202.destroy()
    
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    texture201.destroy();
    device30.pushErrorScope("validation");
    query200.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query201.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder200.popDebugGroup()
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const array11 = new Float32Array([-0.25, -0.25, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.25, 0.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.5, -0.5, -1.0, -1.0, 0.5, -0.5, -0.25, -0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 0.75, 1.0, 1.0, -0.5, -1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.0, 0.0, -1.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.0, -0.25, -1.0, -1.0, 0.0, 0.5, 0.25, -0.25, -0.5, -1.0, -1.0, 0.0, 0.75, -0.75, -1.0, 0.75, -0.25, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.25, 1.0, -1.0, 0.5, -0.75, -0.25, -0.5, 0.0, 1.0, 0.25, -0.75, 1.0, -0.75, 0.5, 0.75, 0.25, -1.0, -0.25, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, 0.0, ]);
    buffer000.destroy()
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    buffer001.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    device50.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query202.destroy()
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query002.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    device00.queue.writeTexture({ texture: texture000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer500 = command_encoder500.finish();
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer002.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
    
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query501.destroy()
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query500.destroy()
    texture401.destroy();
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.pushErrorScope("internal");
    
    command_encoder501.insertDebugMarker("mymarker");
    
    
    
    buffer400.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    query202.destroy()
    query203.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer002 = command_encoder002.finish();
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array12 = new Float32Array([-0.75, 0.25, 1.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.0, -0.5, -1.0, 0.0, -0.75, 0.5, 0.25, 1.0, -0.75, 1.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.5, 0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, 1.0, -0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.5, -0.25, -0.5, -1.0, -0.5, 0.0, 0.0, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, -0.5, -0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.75, -1.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, ]);
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
    texture000.destroy();
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture001 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query500.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    query202.destroy()
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    buffer204.destroy()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    texture400.destroy();
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    query501.destroy()
    texture001.destroy();
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    query201.destroy()
    query001.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
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
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    device20.pushErrorScope("internal");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer003 = command_encoder003.finish();
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    buffer003.destroy()
    
    texture202.destroy();
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    command_encoder400.insertDebugMarker("mymarker");
    
    
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    texture401.destroy();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    
    
    device00.pushErrorScope("internal");
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    query502.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array13 = new Float32Array([-0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 0.75, -1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 1.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 0.25, 0.25, 1.0, 1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.75, 0.5, 0.25, -0.5, 0.75, 0.25, 0.25, -0.25, 0.0, -0.75, 0.75, -0.25, -0.5, 0.75, -0.5, -0.25, 0.5, -0.5, -1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.75, 0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.25, -0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.0, -1.0, -0.25, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    texture400.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query203.destroy()
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.queue.writeTexture({ texture: texture203 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([command_buffer003, ]);
    
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    query501.destroy()
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    query003.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device00.destroy();
    buffer401.destroy()
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const array14 = new Float32Array([-1.0, -1.0, 0.5, -0.5, 0.25, 0.25, 0.0, 0.75, 1.0, 1.0, 0.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, -0.75, -1.0, -1.0, 0.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.0, -0.5, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, 1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, -1.0, -0.25, -0.75, -1.0, -0.75, 0.0, 0.0, 0.0, 0.75, -0.5, -1.0, 0.5, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.75, -1.0, 1.0, 0.5, 0.75, -0.5, -0.25, -0.5, 0.0, 0.5, -1.0, -1.0, 0.75, -1.0, -1.0, -1.0, 0.25, -0.75, -0.75, -0.25, -0.25, -0.5, -0.25, 0.5, 0.25, 0.5, -0.75, 0.0, 1.0, ]);
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    query200.destroy()
    
    query503.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query503.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    query502.destroy()
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    device20.queue.submit([]);
    
    
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const command_buffer502 = command_encoder502.finish();
    query202.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    texture204.destroy();
    
    const command_buffer401 = command_encoder401.finish();
    
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    device50.pushErrorScope("validation");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array15 = new Float32Array([0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.75, -0.75, 0.0, 0.5, -0.5, -0.5, 0.5, -0.5, -0.75, 0.25, 1.0, -0.25, -0.25, 0.25, -0.75, 0.75, -0.75, -0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 0.25, 1.0, 0.75, -0.25, -1.0, 0.5, 0.0, -0.5, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 1.0, 0.75, -1.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 0.75, -0.25, 1.0, 0.5, 0.5, -0.5, 1.0, -0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.25, 0.0, 0.75, 1.0, 1.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, ]);
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    buffer500.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    texture403.destroy();
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    texture500.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    query000.destroy()
    
    
    
    
    query502.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    texture403.destroy();
    
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture404 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query504.destroy()
    
    
    query501.destroy()
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device40.queue.writeTexture({ texture: texture404 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder501.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    command_encoder400.popDebugGroup()
}