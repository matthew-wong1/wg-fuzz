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
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.0, 0.75, 0.75, -0.75, -0.25, -0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, 1.0, 0.75, 0.5, 0.0, -0.5, -0.5, -1.0, -1.0, 0.5, 0.0, 0.25, 0.75, -0.5, 0.5, 0.25, 1.0, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 1.0, 0.75, 0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.25, -0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, 0.75, 0.5, -1.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 0.5, 0.75, -1.0, -0.75, -0.25, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const array1 = new Float32Array([-0.5, -1.0, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, -0.25, 0.5, 0.75, -1.0, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -0.75, -0.75, 0.75, 0.75, 0.25, -0.25, -0.5, -0.5, 0.75, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, -1.0, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 0.5, -0.25, 0.25, -0.5, -0.5, 1.0, -0.25, 0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 0.25, 0.25, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, 1.0, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.popDebugGroup()
    device00.pushErrorScope("validation");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.25, -0.25, 0.0, -0.5, -1.0, 0.0, 0.25, 0.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.75, 0.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.5, -0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.75, -0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.5, 0.5, 0.5, 0.0, -0.75, -0.75, -0.75, 0.0, 0.5, -0.75, 0.25, -1.0, -0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.75, -0.5, -0.75, 0.5, -0.25, -1.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.0, ]);
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.popDebugGroup()
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
    const array3 = new Float32Array([-0.75, -1.0, -0.5, 0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 1.0, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.5, -0.25, -0.25, -1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, -0.75, -1.0, -1.0, -0.75, 1.0, -0.75, 0.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.5, 0.75, 0.75, 0.25, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -1.0, -0.5, 0.75, -0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 0.5, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -0.25, 0.75, -0.75, -0.75, -1.0, 0.0, 0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture000.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture001.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const array4 = new Float32Array([-0.25, 0.5, -1.0, -0.5, 0.25, -0.5, -1.0, 1.0, 0.75, -0.5, 0.5, -1.0, -1.0, 0.0, -0.75, 0.75, 0.25, 0.75, -0.75, -1.0, 1.0, 1.0, 0.25, -0.75, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.25, 1.0, 0.5, 0.0, 0.25, 0.25, -0.75, 1.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.5, -0.5, -0.25, -0.5, 0.0, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.25, -0.25, 0.0, -0.25, 0.75, 0.75, -0.25, 0.0, 0.5, 0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, 0.25, 0.0, 1.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, 0.0, -0.75, -0.75, -1.0, -1.0, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array5 = new Float32Array([0.5, 0.0, 0.0, 0.5, 0.75, -1.0, 0.0, 1.0, 0.75, 0.5, -0.75, -1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.5, 0.25, 0.0, -1.0, -0.25, 0.0, -0.25, -0.25, -0.5, 1.0, 0.0, 0.0, 0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.5, -1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 0.75, 0.75, -0.75, -0.75, -0.5, 0.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -0.25, 0.5, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, 0.0, 0.25, 0.5, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array6 = new Float32Array([-0.75, 0.0, -0.75, 1.0, -1.0, 0.75, -1.0, 0.0, 1.0, 0.25, 1.0, 1.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.75, -0.5, -1.0, 0.25, -1.0, 0.25, -0.25, 0.5, -0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 0.5, 0.25, 0.0, 0.75, 0.25, -0.5, -0.25, 0.5, -0.75, -1.0, 0.25, 1.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.75, 0.5, -0.75, 0.25, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, 0.25, 0.75, 0.5, 0.5, 0.75, -0.25, 0.75, -0.25, -0.75, -0.5, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
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
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const array7 = new Float32Array([0.0, 0.25, -0.25, 0.0, 0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.25, -0.5, -0.5, 0.25, 0.0, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -1.0, 0.0, -1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, -0.25, 0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.75, -0.5, -0.5, 1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 1.0, -0.25, -0.25, -0.25, 0.25, -0.25, -0.5, 0.5, -1.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.25, -0.5, 0.5, 0.25, -0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -1.0, 0.5, -0.75, 0.25, -1.0, ]);
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array8 = new Float32Array([0.0, 0.25, 0.0, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.5, 1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 0.5, -0.75, -0.25, 0.25, -0.5, 0.25, 0.75, 0.25, 0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 1.0, -0.25, -1.0, 0.0, 1.0, 0.75, -0.75, 0.5, 0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, -1.0, 0.0, 0.75, 0.75, -0.75, 1.0, 0.25, -0.5, 0.5, 0.75, 1.0, 0.75, -1.0, -0.25, 0.25, 0.0, -0.25, 0.25, -1.0, 0.25, -0.5, -0.5, -1.0, -1.0, 0.75, -0.5, -0.75, 0.0, -0.5, 0.0, 0.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device20.destroy();
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    texture003.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    render_pass_encoder0020.executeBundles([])
    
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.75, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, -0.25, 1.0, 0.5, 0.5, 0.75, 1.0, 1.0, 0.25, 0.75, 0.0, -0.25, 0.25, -0.5, -0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.25, 0.75, 0.0, -1.0, -0.75, 1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, 0.25, 0.5, 1.0, 1.0, 0.25, 0.75, 0.75, -0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 0.5, 0.25, 0.5, 0.25, -1.0, 0.5, -0.5, -0.75, 0.0, -0.5, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, 1.0, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    query001.destroy()
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
        occlusionQuerySet: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    texture002.destroy();
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer000 = command_encoder000.finish();
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    query001.destroy()
    render_pass_encoder0030.setStencilReference(1);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    compute_pass_encoder0011.popDebugGroup()
    device40.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.0, 1.0, -0.75, -1.0, 0.5, -0.75, 0.0, 0.75, -0.75, 0.0, -1.0, 0.75, 0.75, -1.0, 0.5, -0.25, 0.25, 0.25, 0.75, 1.0, -1.0, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, -0.25, -0.75, 0.5, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.5, -0.25, -0.75, -0.75, -0.75, -1.0, -0.75, -1.0, 0.0, 0.75, 0.5, 0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.5, 0.5, 1.0, -1.0, 0.5, -0.75, 0.5, -0.75, 0.75, 0.25, -0.75, -0.75, 1.0, -1.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.5, 0.5, 0.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0031.setStencilReference(1);
    
    render_pass_encoder0020.setStencilReference(1);
    device30.destroy();
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    query000.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder0031.pushDebugGroup("group_marker");
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
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.writeTexture({ texture: texture004 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    query001.destroy()
    render_pass_encoder0000.setStencilReference(1);
    
    
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0031.executeBundles([])
    render_pass_encoder0031.pushDebugGroup("group_marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    device30.pushErrorScope("out-of-memory");
    query300.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0011.insertDebugMarker("marker")
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.setStencilReference(1);
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    texture100.destroy();
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0041.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0031.executeBundles([])
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    render_pass_encoder0031.insertDebugMarker("marker");
    
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    query200.destroy()
    render_pass_encoder0040.setStencilReference(1);
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0011.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder0041.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.submit([command_buffer000, ]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0000.insertDebugMarker("marker");
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
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    query100.destroy()
    const array11 = new Float32Array([-0.5, 0.5, -0.25, 0.75, -0.5, -0.5, 0.75, 1.0, -0.5, 0.75, -0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, 1.0, 1.0, -0.75, 0.5, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 1.0, -0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.75, 0.5, 0.0, 0.5, -0.5, -0.25, -1.0, -1.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, 0.5, -0.25, 1.0, 0.0, 0.5, 1.0, 0.75, 1.0, -0.25, 0.5, ]);
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_pass_encoder0041.setStencilReference(1);
    
    render_pass_encoder0041.pushDebugGroup("group_marker");
    texture005.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    render_pass_encoder0020.endOcclusionQuery()
    
    render_pass_encoder0000.setStencilReference(1);
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder0011.setStencilReference(1);
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0031.setStencilReference(1);
    
    device40.destroy();
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder0011.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0041.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    query002.destroy()
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0011.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    render_pass_encoder0031.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder1000.executeBundles([])
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device80.pushErrorScope("validation");
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0011.setStencilReference(1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0000.executeBundles([])
    
    
    texture101.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0021.setStencilReference(1);
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0020.executeBundles([])
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder0041.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device80.queue.submit([]);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    texture004.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    
    
    render_pass_encoder0011.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0040.popDebugGroup()
    query002.destroy()
    render_pass_encoder0031.insertDebugMarker("marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    render_pass_encoder0031.executeBundles([])
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    render_pass_encoder0031.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.destroy();
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0012.setStencilReference(1);
    render_pass_encoder0011.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_pass_encoder0040.setStencilReference(1);
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
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1001.executeBundles([])
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder0031.executeBundles([])
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0031.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0061.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0021.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    texture103.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0031.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query103.destroy()
    compute_pass_encoder0011.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder0013.insertDebugMarker("marker");
    render_pass_encoder0031.setStencilReference(1);
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder0013.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder0020.endOcclusionQuery()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0041.endOcclusionQuery()
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0013.endOcclusionQuery()
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder0013.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.endOcclusionQuery()
    device70.queue.submit([command_buffer700, ]);
    const command_buffer500 = command_encoder500.finish();
    device80.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.endOcclusionQuery()
    const command_buffer004 = command_encoder004.finish();
    const command_buffer007 = command_encoder007.finish();
    const command_buffer800 = command_encoder800.finish();
    device00.queue.submit([command_buffer007, ]);
    device70.queue.submit([command_buffer700, ]);
    device10.queue.submit([command_buffer100, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device80.queue.submit([command_buffer800, ]);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, ]);
    device70.queue.submit([command_buffer701, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0000.popDebugGroup()
    device80.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0040.popDebugGroup()
    device70.queue.submit([]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0031.endOcclusionQuery()
    device80.queue.submit([command_buffer800, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0020.endOcclusionQuery()
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder8000.popDebugGroup()
}