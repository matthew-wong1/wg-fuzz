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
    const array0 = new Float32Array([-0.75, -1.0, 0.75, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.75, -0.75, -0.25, 0.5, -0.25, 1.0, 0.75, 0.5, 0.5, 0.5, -0.5, -0.25, 0.25, 0.25, 0.25, 0.25, -0.5, -0.25, -1.0, 1.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.25, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, -0.5, -1.0, -1.0, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.0, -1.0, 0.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.5, 0.0, 0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, -1.0, 0.75, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, 1.0, ]);
    const array1 = new Float32Array([-0.75, 0.75, 0.25, 0.75, 0.75, 0.25, -0.75, -0.25, -0.75, -0.5, -1.0, -0.5, 0.5, -1.0, -0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, 0.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 0.5, 0.25, -0.75, 0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 0.5, 0.25, -1.0, 0.75, 0.25, -1.0, -0.75, 0.75, -0.5, -1.0, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, -1.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.5, 0.0, -0.25, 0.0, 0.75, -0.75, 0.0, -0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 1.0, 0.75, -1.0, 0.5, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([1.0, -0.75, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.25, 0.75, -1.0, 0.25, 0.5, 0.5, -0.5, 0.25, 0.25, 0.75, 0.5, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, 0.75, 0.25, 0.75, 0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 0.75, -0.75, 0.5, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, -0.25, -0.75, 0.0, -0.25, 0.25, -0.75, 0.5, -0.75, 1.0, -0.25, -1.0, -0.75, -0.75, -0.5, 1.0, 0.25, 0.5, 0.5, -0.25, 0.0, 0.75, 0.5, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, -0.25, -0.25, ]);
    const array3 = new Float32Array([-0.75, -0.25, -0.25, 1.0, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -1.0, 0.75, 0.0, -1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, 0.5, -1.0, 0.25, -0.25, -0.75, -0.5, -1.0, 1.0, 0.5, -0.5, -0.75, 0.25, 1.0, -0.75, -0.75, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.25, -0.25, 1.0, -0.25, 0.75, 0.75, -0.5, -0.25, 0.5, -0.5, 0.25, 0.25, -0.75, -0.75, -0.5, 0.75, 0.5, 0.0, -0.5, 0.5, 0.0, -1.0, 0.5, -0.25, 0.75, -0.5, -0.25, -0.25, -0.5, -1.0, 0.5, 0.25, 0.0, 0.75, -0.5, -1.0, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 0.25, -0.5, ]);
    const array4 = new Float32Array([-1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.0, 0.25, -0.25, 0.25, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, -0.75, 0.5, -0.25, 0.5, 0.25, -0.5, 1.0, -0.25, 0.25, -0.75, -0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.5, 0.5, -0.75, 0.5, 0.5, -1.0, 1.0, 0.25, -1.0, -0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.0, 1.0, 1.0, 0.25, 0.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.75, 0.75, -0.25, 0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.75, -0.5, -0.75, 0.25, -1.0, 0.5, -0.5, 1.0, -0.5, 0.0, 0.25, -0.5, -0.5, 0.0, -0.25, -1.0, -1.0, 0.5, 0.0, -0.5, 0.5, 0.25, 0.5, -0.25, 0.75, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([-0.25, 0.25, -1.0, -0.5, -0.5, -0.25, -0.5, 0.75, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 1.0, 0.0, -0.5, -0.25, 1.0, -1.0, -1.0, 0.5, -0.5, -0.75, -0.25, -1.0, -1.0, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.75, -0.5, -1.0, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, 1.0, 0.5, -0.75, -1.0, -1.0, 0.5, 0.0, 0.25, 0.75, 0.75, 1.0, -0.5, -0.25, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, 0.25, 0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.5, -0.25, 0.0, 0.5, 0.25, 0.75, 0.5, 1.0, 1.0, 0.5, 1.0, -0.75, -0.25, 1.0, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, 0.0, -0.25, -0.25, -0.25, 0.25, 0.5, ]);
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.0, -0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, -0.75, 0.25, -0.75, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.25, 0.5, 0.5, 0.5, 0.5, 0.75, -0.5, 0.0, -0.25, 0.25, 0.5, 0.5, -0.5, -1.0, 0.25, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, -0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, 0.5, -0.25, 0.25, 0.5, 0.75, -0.25, -0.25, -1.0, 0.25, 0.75, 1.0, -0.25, -0.75, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer000.destroy()
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    const array7 = new Float32Array([-0.75, -0.5, 0.5, -0.25, -0.5, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 1.0, -0.75, -0.5, -0.75, 0.0, -0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, 0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.0, 0.75, 0.25, -0.75, 1.0, 0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.0, 0.75, 0.25, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    
    
    
    const array8 = new Float32Array([-1.0, 1.0, 0.75, 0.75, 1.0, 1.0, 0.25, -0.25, 0.25, 0.0, -1.0, 0.5, -1.0, 0.25, 1.0, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -1.0, -0.75, -0.5, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 0.0, 1.0, -0.5, -0.75, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.0, 0.75, 1.0, 0.25, 1.0, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, -0.75, 1.0, 0.0, -0.75, -0.75, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, -1.0, 0.25, -0.5, -1.0, 0.75, -0.25, -0.5, 1.0, 0.5, -0.25, -1.0, 0.25, 1.0, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.75, -0.5, 0.75, -0.25, -0.25, -0.25, -0.25, 0.5, 0.5, 0.75, 0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, -0.5, 0.0, 0.25, -1.0, 0.75, 0.25, 0.5, 1.0, -0.75, 1.0, -0.5, -0.75, 0.25, 0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.75, 1.0, 0.0, -0.5, 0.25, 0.0, 0.5, 0.0, -0.25, 1.0, -0.5, 0.75, 0.25, -0.25, 0.25, 0.75, 0.25, -0.5, 0.5, -0.25, -0.25, -0.5, -0.5, -0.25, -0.75, 0.0, -0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, 1.0, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array10 = new Float32Array([0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.0, -0.75, 1.0, 0.25, -0.25, 0.0, 0.0, -0.75, 0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.0, -0.75, -0.5, 0.5, 0.0, -0.75, -0.5, 1.0, -0.75, 0.5, -0.25, 0.5, 0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.75, -0.5, 1.0, 0.75, 0.0, 0.75, -0.75, 1.0, -0.75, 0.5, -1.0, 0.75, 0.75, 1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, -0.5, -0.25, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, 0.0, 1.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.25, 0.75, 0.75, 0.5, -0.5, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array11 = new Float32Array([-0.25, -0.5, -1.0, -0.75, 1.0, -0.25, -0.25, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, -0.25, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.0, 0.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.25, -1.0, -0.5, -0.75, 0.25, -0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, -0.5, 0.5, 0.75, 0.25, 0.25, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, 0.25, 0.5, 0.5, -1.0, 0.75, 0.5, 0.75, -0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 0.5, -0.25, 0.0, -1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.5, -1.0, 1.0, 0.5, 1.0, 1.0, ]);
    
    
    
    
    
    const array12 = new Float32Array([0.5, -0.5, 0.75, 0.75, 0.0, -0.25, 0.25, 1.0, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, -0.25, 1.0, 1.0, -0.5, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.5, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.75, 0.0, -0.25, 1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -1.0, 0.25, -0.25, -0.5, 0.0, 0.0, 1.0, 0.5, 0.5, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 0.0, 0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 0.25, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, 1.0, 0.5, -0.75, ]);
    const array13 = new Float32Array([-0.5, -1.0, 0.25, 0.0, -0.25, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.0, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, -1.0, -0.5, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, -1.0, 0.0, -0.75, 0.5, -0.25, -0.25, 0.0, -0.25, -0.5, -0.5, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 0.75, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -0.5, -0.5, -1.0, 0.25, -0.5, -0.5, -0.5, -0.75, 1.0, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, -0.5, 1.0, ]);
    device20.destroy();
    
    
    
    const array14 = new Float32Array([-1.0, -0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 0.75, -1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, -0.75, -0.75, -1.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, 0.5, 0.25, 0.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, -0.75, -0.25, 0.0, 0.0, -0.25, -0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 0.75, 0.5, 0.0, 0.75, -0.75, -0.25, -0.75, 0.25, -0.25, -0.5, 0.75, 0.75, 0.25, 0.5, 0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.75, 0.25, 0.75, -0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, -0.5, 0.75, -0.5, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array15 = new Float32Array([1.0, -1.0, 0.25, -1.0, -0.5, -0.5, 0.0, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, -0.25, -1.0, 0.25, 1.0, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, -0.25, 0.5, -0.5, 1.0, 0.0, -0.75, -0.25, 0.75, -0.25, 0.0, 0.5, -0.75, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, -0.5, -0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, 0.0, 0.0, 0.75, -0.75, -0.5, -0.25, -1.0, 0.75, -0.5, -0.75, -0.75, 0.5, 0.0, -0.25, 0.75, 0.0, 1.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.25, -0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    
    const array16 = new Float32Array([0.75, -0.25, -0.5, 0.75, 1.0, -0.25, -0.75, -0.75, 0.5, -0.25, 0.5, 1.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.5, 1.0, -0.25, 0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, -0.25, -0.5, 0.25, -1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.0, 0.0, 1.0, -1.0, 0.25, -0.25, 1.0, -0.25, 0.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.75, -0.5, -0.25, 1.0, -0.75, -0.5, -0.75, 0.75, 0.25, 0.75, 0.75, 1.0, -0.75, 0.5, -1.0, -1.0, 0.0, -1.0, 0.75, -1.0, -1.0, 0.0, 0.25, 0.0, -1.0, 0.0, 0.75, 0.75, -0.5, 0.5, -0.5, 0.0, 0.75, -0.5, -0.25, -1.0, 0.25, -1.0, -0.25, 0.25, -0.5, -1.0, ]);
    texture300.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device30.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device60.pushErrorScope("internal");
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device70.destroy();
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array15, 0, array15.length);
    command_encoder400.clearBuffer(buffer401);
    
    
    device40.pushErrorScope("internal");
    buffer400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    query600.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture600.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const array17 = new Float32Array([-1.0, 0.0, -0.5, 1.0, 0.5, 0.75, -1.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.75, -0.75, 0.75, -0.25, -1.0, -0.25, 1.0, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 1.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.25, -0.25, -1.0, -0.25, 1.0, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, 1.0, -0.5, 0.0, -1.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -0.75, 1.0, -0.25, 0.25, -0.25, -0.5, 0.25, -0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 0.5, 1.0, -1.0, 0.5, 1.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, -0.25, ]);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device50.destroy();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query400.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.destroy();
    
    
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.popDebugGroup();
    compute_pass_encoder4010.insertDebugMarker("marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.popDebugGroup();
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    texture400.destroy();
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    query402.destroy()
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query403.destroy()
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.popDebugGroup();
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    query402.destroy()
    
    query401.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    query401.destroy()
    
    query400.destroy()
    
    query400.destroy()
    
    
    
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture401.destroy();
    texture402.destroy();
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    const array18 = new Float32Array([0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.5, 0.0, -1.0, 0.25, -0.5, -0.25, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.0, -0.5, -0.5, 1.0, -1.0, 0.75, -0.75, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.5, -0.25, 1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, -1.0, -1.0, 0.5, -0.75, 0.5, 0.0, 0.75, -0.5, 0.0, 0.25, -0.75, ]);
    query400.destroy()
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query402.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder4010.popDebugGroup()
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    query401.destroy()
    
    
    query403.destroy()
    
    
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
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query401.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device90.pushErrorScope("out-of-memory");
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    
    query401.destroy()
    query403.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
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
    texture404.destroy();
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
    texture403.destroy();
    
    
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture405 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture405 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeTexture({ texture: texture405 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.pushErrorScope("validation");
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture405 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture405 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const array19 = new Float32Array([-0.75, 1.0, 0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -0.5, 0.5, -0.75, 1.0, -0.25, -0.75, 1.0, -1.0, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 0.0, 0.5, -0.5, -0.5, -1.0, 0.5, -0.5, -0.25, 1.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.5, 0.5, 1.0, 0.75, -1.0, 0.25, 0.0, 0.25, -0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.25, 0.25, -0.5, 0.0, 0.0, -0.25, 0.5, 0.5, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -0.5, -0.25, -0.25, ]);
    device40.queue.writeTexture({ texture: texture405 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture405 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture405 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture405 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline405);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    device40.queue.writeTexture({ texture: texture405 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    query401.destroy()
    device40.queue.writeTexture({ texture: texture405 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture405 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture405 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture405 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture405 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.pushErrorScope("internal");
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    texture405.destroy();
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query403.destroy()
    
    render_bundle_encoder401.popDebugGroup();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    render_bundle_encoder400.popDebugGroup();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    query403.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query1200.destroy()
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query404.destroy()
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    query1200.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const command_buffer1101 = command_encoder1101.finish();
    const command_buffer1100 = command_encoder1100.finish();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer408, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
}