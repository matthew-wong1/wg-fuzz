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
    
    
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.25, 0.0, -1.0, -0.75, -0.5, 0.0, 0.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 1.0, -0.5, 0.0, -1.0, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, 0.75, 0.75, -1.0, -0.5, 0.75, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -0.5, -0.75, 0.75, 0.0, 1.0, 0.25, 0.0, -0.25, 0.75, 0.0, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, 1.0, -0.75, 0.75, -0.25, 1.0, 1.0, -0.5, -0.75, 0.75, 0.75, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, 0.75, -0.75, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -0.5, 1.0, -0.75, 0.25, 0.5, 0.0, -0.75, -0.75, -0.25, ]);
    const array1 = new Float32Array([-1.0, 1.0, 1.0, -1.0, 0.5, 0.75, 1.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, 0.75, 0.5, 1.0, -0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, 0.5, 1.0, -0.25, 0.25, -0.75, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, 1.0, 0.0, 0.0, 0.5, -0.5, -0.5, 0.5, 0.25, -0.5, -0.75, -0.5, -0.5, -0.75, -1.0, -0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, 0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 1.0, -1.0, 0.0, -0.25, -0.75, -0.25, -1.0, -0.5, 1.0, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, -1.0, -0.75, -0.5, -0.5, ]);
    
    const array2 = new Float32Array([0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -1.0, -0.75, -0.25, 0.5, 0.75, -0.25, -0.5, 0.5, 0.0, 0.5, -1.0, 1.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.75, 0.75, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, -1.0, -0.25, -1.0, 0.25, -1.0, -0.25, 0.25, 1.0, 0.75, 0.75, 0.5, -0.25, -1.0, -0.5, 0.0, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, 0.25, -0.5, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, 0.5, 0.75, ]);
    
    const array3 = new Float32Array([-1.0, 0.25, -0.5, -1.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.5, 0.5, 1.0, -0.25, 1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 0.5, 0.0, -0.25, -0.75, 0.75, 0.25, -0.75, -0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.75, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, -0.25, -0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.75, 0.75, -1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, -1.0, 0.5, 1.0, -0.25, -1.0, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, -0.5, 0.0, 0.5, -0.25, ]);
    
    const array4 = new Float32Array([-0.5, 0.25, -1.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, 1.0, -0.25, 0.75, 0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 0.5, -0.25, -0.5, 0.75, -1.0, 1.0, -0.25, 0.75, -1.0, 0.0, 0.25, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, 0.0, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, 0.0, -0.25, -0.5, -0.5, 0.75, -0.5, 0.0, 0.0, 1.0, 0.0, -0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 1.0, -0.25, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, -0.5, -1.0, 0.25, 0.25, 0.0, -0.5, 0.75, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.75, 1.0, -1.0, -0.25, ]);
    
    const array5 = new Float32Array([-0.25, 0.25, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, 0.75, 1.0, 0.0, -1.0, 0.25, 0.0, -0.5, 0.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.75, 0.25, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.75, -1.0, -1.0, -0.75, -0.5, 0.75, -1.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, -0.25, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.0, 0.5, 0.75, -0.5, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.75, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, 1.0, -0.25, 1.0, -0.5, 0.75, -1.0, -0.75, 1.0, 0.25, -0.5, 1.0, 1.0, 0.0, ]);
    
    const array6 = new Float32Array([-0.5, 1.0, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, -0.25, 0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 1.0, -0.5, 0.25, 0.75, 0.5, -0.75, -0.75, 0.0, -0.25, 0.75, 1.0, 0.75, -1.0, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.0, -1.0, -0.5, -0.5, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 0.0, 0.5, -1.0, 1.0, 1.0, 0.0, -0.25, 0.75, -0.25, -0.25, -0.25, 0.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.25, 0.0, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, 0.25, 1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 1.0, -1.0, -1.0, 0.5, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array7 = new Float32Array([-1.0, 0.5, 1.0, -1.0, -0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, -1.0, 0.0, 0.0, 1.0, -1.0, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, -0.25, -0.5, 0.0, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -0.25, 1.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, 0.75, -0.75, 0.25, 0.5, 0.5, -0.5, -0.5, -0.5, -1.0, 1.0, 0.75, 0.0, 0.0, 0.75, 0.5, -0.75, -0.25, -0.25, -1.0, 0.0, -1.0, 0.75, 0.75, 0.0, 0.5, -1.0, 1.0, -0.25, -1.0, -0.25, -0.75, -1.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.0, ]);
    
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array8 = new Float32Array([1.0, -1.0, -1.0, -1.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.5, 1.0, 0.75, 0.5, 0.25, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.5, -0.5, 0.25, 0.0, 0.5, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, 0.0, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 0.75, 0.5, -0.25, 0.25, -1.0, -0.5, 0.25, -0.25, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, -0.25, -0.5, 0.5, -0.75, -1.0, 0.75, 1.0, -0.5, 1.0, -0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.75, -0.75, -0.25, ]);
    device10.pushErrorScope("validation");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.pushErrorScope("out-of-memory");
    
    
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture001.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture002.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder000.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    
    
    
    const array9 = new Float32Array([1.0, 0.75, -0.75, -1.0, 1.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 0.0, 0.5, -0.5, 0.25, -0.5, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, -0.25, 1.0, 0.0, 1.0, 0.5, -0.75, -0.75, 0.0, 0.5, 0.25, -0.5, 0.75, 1.0, -0.25, -0.5, 0.75, -1.0, -0.75, 0.0, 0.0, 0.25, -0.5, -0.25, 1.0, -1.0, 0.75, 0.5, -0.25, -0.5, 1.0, 0.0, 0.25, -0.75, -0.5, -0.25, -0.5, -0.5, -0.5, -0.25, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 0.75, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const array10 = new Float32Array([0.75, -1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.75, 0.5, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.0, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.5, -0.5, -0.75, 1.0, -0.5, -0.75, -0.25, -1.0, 0.0, -0.25, -1.0, -1.0, -0.5, -1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, -1.0, -1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 0.0, 0.0, 0.25, 1.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.pushErrorScope("internal");
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer200.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([1.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 0.0, 0.75, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, -0.25, -0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, 0.25, -0.75, -0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.75, 0.75, -0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -0.25, 0.25, -0.75, 0.75, 0.75, 0.75, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 0.5, 0.25, 0.5, -0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, 0.75, 0.0, -0.25, 0.75, ]);
    
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture200
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
    
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    command_encoder201.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyTextureToTexture(
        {
            texture: texture201
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture200.destroy();
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
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    query002.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.beginOcclusionQuery(0)
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2040.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_pass_encoder2040.setPipeline(render_pipeline201);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group200);
    
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    render_pass_encoder2020.setPipeline(render_pipeline203);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder2030.setPipeline(render_pipeline201);
    buffer001.destroy()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device30.destroy();
    render_pass_encoder2010.endOcclusionQuery()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const command_buffer205 = command_encoder205.finish();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout205]
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    query203.destroy()
    render_pass_encoder2011.setPipeline(render_pipeline201);
    buffer200.destroy()
    
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query200.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    render_pass_encoder2060.popDebugGroup();
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_pass_encoder2060.setPipeline(render_pipeline201);
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    compute_pass_encoder2040.setPipeline(compute_pipeline204);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder2060.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2040.pushDebugGroup("group_marker");
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
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group202);
    device40.pushErrorScope("internal");
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    
    device20.queue.submit([command_buffer205, ]);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.dispatchWorkgroups(100);
    buffer202.destroy()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout206]
    });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query204
    });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query203
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query202.destroy()
    render_pass_encoder2011.setVertexBuffer(0, buffer201);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.popDebugGroup();
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2060.setStencilReference(1);
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    
    render_pass_encoder2061.pushDebugGroup("group_marker");
    buffer203.destroy()
    render_pass_encoder2061.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    command_encoder206.copyBufferToTexture(
        {
            buffer: buffer208
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    device50.pushErrorScope("internal");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2011.draw(3);
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2021.setPipeline(render_pipeline205);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder2041.executeBundles([])
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder2061.setPipeline(render_pipeline203);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    command_encoder500.clearBuffer(buffer502);
    buffer501.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    compute_pass_encoder2000.popDebugGroup()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2041.insertDebugMarker("marker");
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2041.executeBundles([])
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: query204
    });
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2061.setBindGroup(0, bind_group206);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer2012, 0, array1, 0, array1.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer2015, 0, array9, 0, array9.length);
    query400.destroy()
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2060.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer2013, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    buffer400.destroy()
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
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder2001.insertDebugMarker("marker");
    buffer402.destroy()
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query202
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    render_pass_encoder2042.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2040.setVertexBuffer(0, buffer2010);
    device20.queue.writeBuffer(buffer2012, 0, array0, 0, array0.length);
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2041.pushDebugGroup("group_marker");
    buffer201.destroy()
    render_pass_encoder2060.setStencilReference(1);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.setPipeline(render_pipeline204);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2070.pushDebugGroup("group_marker");
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    render_pass_encoder2020.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2041.setPipeline(render_pipeline203);
    render_pass_encoder2061.setVertexBuffer(0, buffer207);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.setVertexBuffer(0, buffer208);
    render_pass_encoder2031.setPipeline(render_pipeline204);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2042.setPipeline(render_pipeline200);
    render_pass_encoder2020.setVertexBuffer(0, buffer2010);
    render_pass_encoder2021.popDebugGroup();
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2070.setBindGroup(0, bind_group207);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group208);
    render_pass_encoder2061.drawIndirect(buffer205, 0);
    render_pass_encoder2070.setVertexBuffer(0, buffer204);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2017, 0);
    const command_buffer400 = command_encoder400.finish();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group209);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group2010);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2041.setVertexBuffer(0, buffer202);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2019, 0);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    render_pass_encoder2042.setBindGroup(0, bind_group2012);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2042.setVertexBuffer(0, buffer2024);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.setVertexBuffer(0, buffer206);
    render_pass_encoder2060.setVertexBuffer(0, buffer2027);
    render_pass_encoder2020.end();
    render_pass_encoder2060.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2042.draw(3);
    render_pass_encoder2041.drawIndirect(buffer2022, 0);
    render_pass_encoder2041.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2042.end();
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2013);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer2013);
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2061.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2042.drawIndirect(buffer2010, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder2060.end();
    render_pass_encoder2040.endOcclusionQuery()
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2041.drawIndirect(buffer206, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2070.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2000.setVertexBuffer(0, buffer2027);
    render_pass_encoder2001.draw(3);
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2070.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.end();
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group2015);
    render_pass_encoder2041.end();
    command_encoder202.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer2010, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndexed(3);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2011.drawIndirect(buffer2029, 0);
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder2040.popDebugGroup()
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2021.setVertexBuffer(0, buffer202);
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2032, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2070.drawIndirect(buffer2015, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2070.end();
    command_encoder201.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2011.end();
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2070.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    const command_buffer202 = command_encoder202.finish();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2040.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2070.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2061.drawIndirect(buffer209, 0);
    render_pass_encoder2060.drawIndirect(buffer204, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2060.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2042.drawIndirect(buffer2013, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2033, 0);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2016);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2061.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
    render_pass_encoder2011.draw(3);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2017);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2042.drawIndirect(buffer208, 0);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2041.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2070.drawIndexed(3);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2038, 0);
    device20.queue.submit([command_buffer204, command_buffer207, ]);
    render_pass_encoder2011.drawIndirect(buffer2016, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2041.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, command_buffer204, command_buffer206, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2070.end();
    render_pass_encoder2060.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2070.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2014, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2060.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2061.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2042.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2061.drawIndirect(buffer2012, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2042.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2041.popDebugGroup();
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2031.drawIndirect(buffer2018, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2060.drawIndirect(buffer2037, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2070.drawIndirect(buffer2021, 0);
    render_pass_encoder2061.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndexed(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.end();
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2038, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2070.drawIndirect(buffer2031, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2060.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2021.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2042, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer206, ]);
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2042.drawIndirect(buffer2012, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2070.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2061.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2042.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2042.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2038, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2045, 0);
    device00.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2042.drawIndirect(buffer2039, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2042, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    device40.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2042.drawIndirect(buffer2037, 0);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2033, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2060.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2021.end();
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2061.drawIndexed(3);
    render_pass_encoder2042.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2060.drawIndirect(buffer2030, 0);
    device40.queue.submit([]);
    render_pass_encoder2070.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2070.drawIndirect(buffer2037, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2061.drawIndirect(buffer2025, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder2061.drawIndexedIndirect(buffer2018, 0);
    device50.queue.submit([]);
    render_pass_encoder2042.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2025, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2061.draw(3);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2021);
    render_pass_encoder2031.end();
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2025, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2060.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    device10.queue.submit([]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2070.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2040.endOcclusionQuery()
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2042.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2061.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2061.drawIndirect(buffer2033, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2061.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2061.drawIndirect(buffer2032, 0);
    render_pass_encoder2041.drawIndirect(buffer2039, 0);
    render_pass_encoder2070.drawIndirect(buffer2038, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndirect(buffer2045, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2032, 0);
    device50.queue.submit([]);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2000.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder2061.drawIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2021.drawIndirect(buffer2025, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer205, command_buffer207, ]);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2038, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2060.end();
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2042.drawIndirect(buffer2039, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    device30.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer2045, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2001.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2045, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2026, "uint16");
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2042.drawIndirect(buffer2039, 0);
    render_pass_encoder2042.drawIndirect(buffer2047, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2039, "uint16");
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    render_pass_encoder2061.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
    render_pass_encoder2061.drawIndirect(buffer2012, 0);
    render_pass_encoder2070.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder2042.draw(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    device40.queue.submit([]);
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2023);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2061.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2060.drawIndirect(buffer2039, 0);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.drawIndirect(buffer2038, 0);
    render_pass_encoder2021.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2001.end();
    render_pass_encoder2011.draw(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2042.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2042.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2031.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2042.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndirect(buffer2054, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2070.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([]);
    render_pass_encoder2042.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2070.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2060.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2061.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer200, command_buffer206, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2061.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    device50.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2042.drawIndirect(buffer2013, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer206, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2022, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2041.drawIndirect(buffer2042, 0);
    device50.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2042.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder2040.end();
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2070.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2018, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2042.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2040, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2044, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2042.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder2000.end();
    render_pass_encoder2070.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndirect(buffer2045, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2070.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2061.drawIndirect(buffer200, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2061.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2042.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2042.drawIndirect(buffer2025, 0);
    render_pass_encoder2041.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2042.setIndexBuffer(buffer205, "uint16");
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2042.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer209, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2059, 0);
    device50.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.drawIndirect(buffer2052, 0);
    render_pass_encoder2021.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2045, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2040.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2070.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2058, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.end();
    device20.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2045, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2042.drawIndirect(buffer2029, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer2054, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.end();
    device10.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.popDebugGroup();
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2026);
    render_pass_encoder2041.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2039, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2041.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2046, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder2041.drawIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndirect(buffer2060, 0);
    render_pass_encoder2021.drawIndirect(buffer2045, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2070.drawIndirect(buffer2042, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2042.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2027);
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder2061.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndirect(buffer2060, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    render_pass_encoder2042.drawIndirect(buffer2047, 0);
    render_pass_encoder2031.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2042.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2060.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2059, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2061.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2059, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2068, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2068, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2061.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndirect(buffer2068, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder2041.drawIndirect(buffer2060, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2060.drawIndirect(buffer2059, 0);
    render_pass_encoder2060.drawIndirect(buffer2063, 0);
    render_pass_encoder2042.drawIndirect(buffer2045, 0);
    render_pass_encoder2042.popDebugGroup();
    render_pass_encoder2042.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2042.drawIndirect(buffer2045, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2042.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2042, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2070.drawIndirect(buffer2038, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2058, 0);
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2029);
    render_pass_encoder2061.drawIndirect(buffer2011, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2060.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2042.drawIndirect(buffer205, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2037, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2069, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2054, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2059, 0);
    device20.queue.submit([command_buffer201, command_buffer206, ]);
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2042.setIndexBuffer(buffer2062, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2039, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.end();
    device50.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2061.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2068, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2061.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2061.end();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
}