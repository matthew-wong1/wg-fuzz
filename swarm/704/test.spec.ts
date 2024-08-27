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
    const array0 = new Float32Array([-0.25, 0.25, 0.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, 1.0, 0.5, 0.0, 0.25, -0.25, 0.75, -0.75, -0.25, -0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.25, 1.0, -0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 1.0, -1.0, 0.0, 0.5, -0.25, -0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, -0.5, 1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 0.5, ]);
    const array1 = new Float32Array([-0.25, -0.5, -0.5, 0.75, 0.25, 1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, -0.25, -0.25, 0.75, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.0, -0.25, 1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, 0.25, 0.5, -0.5, 1.0, -0.25, 1.0, -0.75, 0.5, 1.0, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 0.75, -0.5, 0.0, 0.5, ]);
    const array2 = new Float32Array([-0.25, 0.25, -1.0, 0.25, 0.0, 0.25, 0.25, -0.75, 0.25, 1.0, -1.0, -0.5, -0.75, -0.75, 1.0, 0.25, 0.75, 0.75, 0.75, -0.25, 0.5, 1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, 0.0, 0.75, 0.25, 0.75, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.25, 1.0, -0.25, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.75, 0.75, -0.5, 0.25, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, -0.75, 0.75, -0.5, -0.25, -0.5, 0.75, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.75, 0.25, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, 0.0, 0.75, 0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 0.25, 0.0, 0.0, 0.75, ]);
    const array3 = new Float32Array([-0.75, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, 0.75, -0.25, -0.75, -1.0, -0.75, -0.75, -0.5, 0.0, 1.0, -1.0, -1.0, -1.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.0, 0.0, -0.25, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 1.0, -0.5, 1.0, 0.25, 0.25, 0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.25, 0.75, 0.5, 0.75, 1.0, -0.75, -0.25, -1.0, 0.75, 0.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, -0.75, 0.75, -0.75, -1.0, 0.25, -0.5, -1.0, ]);
    const array4 = new Float32Array([-1.0, -1.0, -0.5, -1.0, 0.0, -0.5, 1.0, -1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 1.0, 0.25, -0.75, 0.25, 0.75, 0.75, 0.75, -1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, -0.25, 0.25, 0.5, 1.0, 0.75, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.0, -1.0, -0.75, -0.75, 0.5, 0.5, -0.75, 0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, 0.25, 1.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.5, -0.5, 0.0, -1.0, -0.25, -0.75, -0.5, -0.25, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    
    device00.pushErrorScope("validation");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    const array5 = new Float32Array([0.75, -1.0, 0.75, 0.25, -1.0, 0.25, 0.75, -0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.0, 0.25, -0.75, -0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, 1.0, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 0.0, 0.5, -0.75, -0.5, -0.25, 0.25, -0.5, -0.25, 0.25, 0.0, 0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, -0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -0.5, 0.0, 0.0, -0.75, -1.0, -0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 0.25, -0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 1.0, 0.5, -0.25, 0.25, -0.75, 0.25, -1.0, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, ]);
    
    
    
    texture001.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.0, -1.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, 0.25, 1.0, -1.0, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 0.0, -0.25, -1.0, -1.0, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, 0.75, 1.0, -0.75, 0.0, 0.0, 0.25, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.75, 0.75, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, -0.75, 0.5, -0.5, 1.0, 0.75, -0.25, -0.75, 0.0, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, ]);
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const array7 = new Float32Array([-0.25, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, -0.25, -0.5, -0.75, 0.25, -0.5, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -1.0, -0.5, -1.0, -0.5, -1.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.25, -1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, -1.0, -0.25, -0.5, 1.0, 0.5, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, -0.25, 1.0, 0.25, -0.25, -1.0, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, -0.75, ]);
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array8 = new Float32Array([-0.5, -0.75, -0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, 0.75, 0.0, -1.0, -0.25, 1.0, -0.75, 0.75, -1.0, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, -0.5, -0.5, 0.5, 1.0, 0.75, 0.25, 1.0, 0.0, 1.0, -0.5, -0.25, -1.0, -0.5, 0.0, -1.0, 0.25, -1.0, 0.0, 0.0, 0.25, 1.0, 0.25, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, -0.5, -0.75, 0.25, 0.5, -1.0, 1.0, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.0, -0.75, -0.25, -0.25, -0.25, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    buffer000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array9 = new Float32Array([0.5, 0.0, 0.0, 0.5, -0.75, -0.5, -0.5, 1.0, -0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, -0.75, 0.0, -0.75, -1.0, 0.5, 0.75, 0.75, 0.25, -0.75, 0.0, 0.0, 0.5, 1.0, 0.5, 0.0, 0.0, -0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -1.0, 1.0, -0.25, -0.75, 0.75, 0.75, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, -1.0, 0.0, -0.25, 0.75, 1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.5, -1.0, 1.0, 0.5, -0.5, 0.75, 1.0, 0.5, 0.5, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -0.25, 0.75, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array10 = new Float32Array([-1.0, 0.5, 0.0, -0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.75, 0.25, 1.0, 1.0, -0.75, 0.75, -0.75, 0.5, 0.5, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.25, 0.5, -1.0, -0.75, -0.5, 1.0, -0.25, 0.5, 0.0, -1.0, 0.0, -1.0, 0.75, 1.0, 1.0, 1.0, 0.25, -1.0, 0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 1.0, 0.5, 0.5, 0.25, 0.75, 0.75, -0.25, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    buffer100.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    buffer201.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.pushErrorScope("internal");
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    device60.destroy();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    device70.destroy();
    const array11 = new Float32Array([0.75, 0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 0.75, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.75, -1.0, 0.75, -1.0, 0.75, -0.75, 1.0, 0.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.25, -0.25, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.5, -0.25, -0.25, 0.25, 0.25, 0.75, 1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.0, 0.75, 0.25, -1.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.5, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, 0.0, 1.0, -0.25, -0.5, -1.0, -0.25, -0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 0.25, 0.25, 0.5, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer401.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device40.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array12 = new Float32Array([1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, 1.0, 0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 1.0, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, 1.0, 1.0, 0.75, -0.5, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 1.0, 1.0, -0.25, -0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.0, 0.25, 1.0, -0.25, 0.75, 0.75, 0.0, 1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -0.25, 0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 1.0, 0.25, -0.25, -0.5, 0.5, ]);
    
    device80.destroy();
    const array13 = new Float32Array([0.25, 0.75, 0.0, 1.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 0.75, 1.0, 0.0, -1.0, 0.75, 1.0, -0.5, -0.75, 0.75, -0.25, 0.25, -0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.25, 0.25, -0.25, 1.0, 0.0, 0.0, -1.0, -0.25, -0.75, 1.0, -0.75, 0.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -1.0, -0.75, 0.25, 0.0, 0.0, 0.5, -0.25, -0.5, 0.0, -0.75, -1.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -0.75, -0.25, 0.0, 1.0, 0.5, -0.25, 0.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.75, -0.25, 0.5, 0.5, -0.75, -0.75, -1.0, 0.5, -0.25, -0.5, -0.75, 0.0, 1.0, -0.75, -0.75, -0.25, -0.25, 0.0, ]);
    const array14 = new Float32Array([0.75, -0.5, -1.0, -1.0, 0.75, 0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -1.0, -0.5, -0.75, -0.25, 0.0, 0.0, -0.25, 0.25, 0.75, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.0, -0.25, -0.25, -0.5, -0.5, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, 0.5, 0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 0.75, -0.25, -0.25, 0.75, 0.25, -0.75, 0.5, 0.0, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, 0.25, -1.0, -0.25, -1.0, 0.5, -0.75, 0.0, 1.0, 1.0, -0.75, 0.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -0.5, 1.0, 0.0, -0.75, -1.0, 0.75, 0.5, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer900.destroy()
    device90.destroy();
    const array15 = new Float32Array([0.25, 0.5, -0.75, -0.25, 1.0, -0.75, -0.75, -0.5, 0.0, 1.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 0.0, -0.25, -0.25, 0.0, 1.0, 0.75, 0.75, -0.5, -0.25, 0.5, 0.25, 0.75, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.75, 0.0, 0.75, 0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 0.75, 0.75, 0.75, 0.5, -0.25, 0.5, -0.5, -0.25, 0.25, -0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.0, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, 1.0, -0.75, -0.75, 1.0, 0.75, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array16 = new Float32Array([-0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 1.0, -1.0, -0.5, 1.0, 0.5, 0.0, -0.5, -0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.25, 0.0, -0.25, 1.0, 0.5, 1.0, 1.0, 0.75, -1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.0, -0.25, -1.0, 0.75, -0.5, 0.0, -1.0, 0.5, 0.75, 0.75, -0.5, 0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -1.0, 0.75, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, 0.25, -0.5, 0.5, -0.75, -1.0, -1.0, 0.5, -0.75, 0.25, -0.25, 0.75, -1.0, 0.5, 0.75, 0.5, -0.75, 0.25, 0.0, 0.0, ]);
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    device100.pushErrorScope("out-of-memory");
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    const array17 = new Float32Array([-0.75, 0.0, 1.0, 0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -1.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.25, 0.0, -0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, 1.0, -1.0, -0.75, -0.75, 0.25, -1.0, -0.75, 0.5, -0.5, 0.75, -0.25, -0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, -0.5, -0.75, -1.0, -0.75, 0.25, -0.75, -1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -0.75, 1.0, -1.0, 0.25, -0.5, -0.5, -1.0, -0.5, -0.75, 1.0, -0.25, -0.25, -1.0, 0.25, 0.0, -1.0, 0.75, ]);
    
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    buffer1000.destroy()
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device110.destroy();
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1002 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1002 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    device100.queue.writeTexture({ texture: texture1002 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1000.destroy();
    device120.pushErrorScope("validation");
    device100.queue.writeTexture({ texture: texture1002 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1200 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    buffer1002.destroy()
    
    device100.queue.writeTexture({ texture: texture1002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1003.destroy();
    
    
    device120.queue.writeTexture({ texture: texture1200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1002 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.destroy();
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device120.queue.writeTexture({ texture: texture1200 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.pushErrorScope("out-of-memory");
    device120.queue.writeTexture({ texture: texture1200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer1200.destroy()
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1200 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    device120.queue.writeTexture({ texture: texture1200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    texture1200.destroy();
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const texture_view12030 = texture1203.createView({ label: "texture_view12030" });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const texture_view12012 = texture1201.createView({ label: "texture_view12012" });
    
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    texture1201.destroy();
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    texture1202.destroy();
    
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    
    texture1401.destroy();
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    buffer1300.destroy()
    
    const texture1402 = device140.createTexture({
        label: "texture1402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1401.destroy()
    device140.pushErrorScope("validation");
    
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture1400.destroy();
    
    device130.pushErrorScope("internal");
    
    
    texture1203.destroy();
    
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    const texture_view14020 = texture1402.createView({ label: "texture_view14020" });
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device140.destroy();
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.destroy();
    
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    const array18 = new Float32Array([-0.5, -1.0, 0.75, 0.75, 0.0, 1.0, -1.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.75, 1.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 0.0, 0.0, -0.5, 0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.0, -0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, 0.25, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, -1.0, -0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 0.25, 0.5, 0.25, -0.75, 1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, -0.75, -1.0, -0.25, 0.25, 0.75, -0.75, 0.75, 0.25, 1.0, ]);
    
    
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device120.queue.writeTexture({ texture: texture1204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12040 = texture1204.createView({ label: "texture_view12040" });
    device120.queue.writeTexture({ texture: texture1204 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1206_code = "";
    try {
        shader_module1206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1206 = await device120.createShaderModule({ label: "shader_module1206", code: shader_module1206_code })
    const array19 = new Float32Array([0.0, 1.0, -0.25, 0.75, 0.25, 1.0, 0.0, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.0, -0.25, -0.25, -0.25, -0.5, -0.75, 1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, 0.0, -0.25, 0.25, 0.5, 0.25, -1.0, -0.75, 0.0, 0.25, -1.0, 0.25, 1.0, -1.0, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, 0.25, -1.0, -0.75, 0.25, -0.25, -0.5, -1.0, 0.5, 0.0, 1.0, 1.0, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 1.0, 1.0, -1.0, 1.0, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.25, 0.0, -1.0, -0.75, 1.0, 1.0, ]);
    
    device120.queue.writeTexture({ texture: texture1204 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1207_code = "";
    try {
        shader_module1207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1207 = await device120.createShaderModule({ label: "shader_module1207", code: shader_module1207_code })
    device120.queue.writeTexture({ texture: texture1204 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1203 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1203",
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
    
    device120.queue.writeTexture({ texture: texture1204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12041 = texture1204.createView({ label: "texture_view12041" });
    device120.queue.writeTexture({ texture: texture1204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.pushErrorScope("validation");
    device120.queue.writeTexture({ texture: texture1204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device120.queue.writeTexture({ texture: texture1204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device120.queue.writeTexture({ texture: texture1204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1205 = device120.createTexture({
        label: "texture1205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1204 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    device120.queue.writeTexture({ texture: texture1204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12050 = texture1205.createView({ label: "texture_view12050" });
    device120.queue.writeTexture({ texture: texture1204 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array20 = new Float32Array([1.0, 0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.75, 0.25, -1.0, 0.75, -1.0, 0.75, -0.25, -0.25, -0.25, 0.5, 0.0, 0.75, 0.75, -0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.5, 1.0, -0.25, -0.75, 0.25, 0.75, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.25, 0.75, 0.5, -0.75, 0.25, 0.25, -0.5, 0.75, 1.0, 0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, 1.0, 0.5, 0.25, 0.25, 0.5, -0.75, 1.0, 0.0, ]);
    device120.queue.writeTexture({ texture: texture1204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer1201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1201.unmap();
        console.log(new Float32Array(data));
    }
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1204 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1204 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1204 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12042 = texture1204.createView({ label: "texture_view12042" });
    device120.queue.writeTexture({ texture: texture1204 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12051 = texture1205.createView({ label: "texture_view12051" });
    
    device120.queue.writeTexture({ texture: texture1204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device150.destroy();
    device120.queue.writeTexture({ texture: texture1204 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1204.destroy();
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    const texture1206 = device120.createTexture({
        label: "texture1206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer1203.destroy()
    buffer1202.destroy()
    var shader_module1208_code = "";
    try {
        shader_module1208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1208 = await device120.createShaderModule({ label: "shader_module1208", code: shader_module1208_code })
    const array21 = new Float32Array([-0.25, 0.5, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.75, -0.25, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 0.0, 0.25, 0.5, -1.0, 1.0, -1.0, 0.5, -1.0, 0.25, -0.25, -1.0, 0.75, 1.0, 0.5, 1.0, 0.0, -0.25, 0.0, 0.25, -0.5, -0.5, -0.25, 0.0, -0.75, 0.0, 0.0, -0.25, -0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 1.0, -1.0, -0.75, 0.5, -1.0, -1.0, -0.5, -0.25, -0.5, 1.0, -0.75, -1.0, 1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, 0.25, 1.0, 1.0, 0.5, -0.75, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, ]);
    const texture_view12060 = texture1206.createView({ label: "texture_view12060" });
    
    
    
    buffer1201.destroy()
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    
    
    
    
    
    
    const array22 = new Float32Array([1.0, 0.5, 0.5, -0.5, 0.75, -0.75, -0.75, -0.25, 0.75, 0.75, 0.5, 0.0, 1.0, 0.5, 1.0, 0.25, 0.0, 1.0, 0.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.0, 1.0, 0.5, 0.25, -1.0, 0.25, 0.5, 0.0, 0.25, -1.0, 0.75, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, 1.0, -1.0, 1.0, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 1.0, -0.75, 0.75, -0.25, -0.5, 0.25, -0.75, 0.75, -1.0, 0.0, -0.75, 0.75, 0.25, 0.25, -0.75, -1.0, -1.0, -0.25, 0.75, -0.25, -1.0, -1.0, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.5, -0.25, 0.25, -0.5, -0.5, 0.0, -0.5, ]);
    texture1205.destroy();
    
    const bind_group_layout1204 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1204",
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
    const bind_group_layout1205 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1205",
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
    
    
    const sampler1204 = device120.createSampler( { label: "sampler1204" } );
    
    
    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const buffer1205 = device120.createBuffer({
        label: "buffer1205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module1209_code = "";
    try {
        shader_module1209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1209 = await device120.createShaderModule({ label: "shader_module1209", code: shader_module1209_code })
    const texture_view12061 = texture1206.createView({ label: "texture_view12061" });
    
    const array23 = new Float32Array([0.25, 1.0, -0.75, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, -0.75, 1.0, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, 0.25, 0.0, 1.0, 0.75, 0.0, -1.0, -0.25, -0.25, 1.0, -1.0, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 0.0, 0.75, 1.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 0.25, 0.75, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -0.75, -0.5, -0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.75, 1.0, -0.5, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, -1.0, 0.0, -0.75, 0.25, ]);
    
    const texture1207 = device120.createTexture({
        label: "texture1207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1205.destroy()
    
    texture1207.destroy();
    
    
    const sampler1205 = device120.createSampler( { label: "sampler1205" } );
    
    texture1206.destroy();
    var shader_module12010_code = "";
    try {
        shader_module12010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module12010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module12010 = await device120.createShaderModule({ label: "shader_module12010", code: shader_module12010_code })
    var shader_module12011_code = "";
    try {
        shader_module12011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module12011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module12011 = await device120.createShaderModule({ label: "shader_module12011", code: shader_module12011_code })
    
    const bind_group_layout1206 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1206",
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
    const sampler1206 = device120.createSampler( { label: "sampler1206" } );
    
    const sampler1207 = device120.createSampler( { label: "sampler1207" } );
    
    
    
    
    
    
    
    
    const sampler1208 = device120.createSampler( { label: "sampler1208" } );
    const texture1208 = device120.createTexture({
        label: "texture1208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1209 = device120.createSampler( { label: "sampler1209" } );
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}