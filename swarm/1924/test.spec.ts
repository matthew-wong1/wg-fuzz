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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array0 = new Float32Array([0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.0, 1.0, -0.75, 0.5, -1.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.25, 0.75, -0.75, 0.0, -0.25, 0.0, -0.5, -1.0, 0.75, 0.25, 0.0, 1.0, 1.0, -0.5, 0.75, 0.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, -1.0, 0.0, 0.75, -1.0, -0.5, 0.25, -0.25, 0.5, 0.0, -1.0, 0.5, 0.25, -0.5, -1.0, -0.5, 1.0, -0.75, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.0, -0.75, 1.0, -0.75, 0.25, 0.75, 0.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    device10.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_buffer100 = command_encoder100.finish();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.5, 0.0, 0.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.75, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 0.25, 0.0, -0.25, 0.5, 0.5, -0.5, -1.0, -1.0, -0.5, -0.5, 0.75, 1.0, 0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, 0.25, -1.0, 0.0, 0.5, 0.5, 0.25, 0.75, -1.0, -0.25, 0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 0.0, 0.25, 0.0, -0.75, -1.0, -0.25, 1.0, 0.5, -0.25, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, -1.0, -0.5, -0.25, -0.75, 0.25, -0.25, -0.25, -0.75, -0.25, -1.0, -0.5, 0.25, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.submit([]);
    device00.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture500.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query400.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    texture200.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.5, 0.0, -0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 0.25, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, 0.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 0.25, 1.0, 1.0, 0.25, -0.25, 0.5, -0.25, 0.5, 0.0, -0.5, 0.25, -0.25, 0.25, -0.25, 0.0, 0.5, 0.75, -0.5, -0.5, -0.5, -0.75, 0.75, 0.75, 0.75, -0.75, 1.0, -0.25, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -0.75, -1.0, 0.0, 0.75, 0.5, 0.5, -0.5, -0.75, 0.75, 0.0, 0.0, 0.25, 0.75, 0.0, -0.75, 1.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.0, 0.75, 0.5, -0.75, -0.75, -0.75, 0.5, ]);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    texture400.destroy();
    device20.destroy();
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device00.queue.submit([]);
    
    
    
    query400.destroy()
    const command_buffer800 = command_encoder800.finish();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.popDebugGroup()
    
    
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    query400.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder900.pushDebugGroup("mygroupmarker")
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    query401.destroy()
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    texture800.destroy();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer900 = command_encoder900.finish();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture201.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    texture501.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    device60.destroy();
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    command_encoder700.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    command_encoder700.pushDebugGroup("mygroupmarker")
    const command_buffer300 = command_encoder300.finish();
    command_encoder700.clearBuffer(buffer700);
    texture801.destroy();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    query900.destroy()
    query800.destroy()
    const array3 = new Float32Array([0.5, -1.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.75, 1.0, 1.0, -1.0, -0.75, 1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.25, 1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 1.0, -0.75, -0.25, 0.25, 0.0, 0.25, 0.75, -0.5, 1.0, 0.25, 0.0, 0.25, 0.5, 1.0, 0.25, -0.25, 1.0, -0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, 0.25, 0.25, 1.0, -0.25, -0.25, -0.5, -0.5, 0.5, 1.0, 0.25, 0.75, -0.25, 0.0, -1.0, -0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 1.0, 0.25, 0.0, -0.5, 0.75, -0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, 0.75, 0.5, -1.0, -0.25, ]);
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
    query700.destroy()
    command_encoder801.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device80.queue.submit([command_buffer800, ]);
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.submit([]);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device80.queue.writeTexture({ texture: texture802 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    
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
    query901.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([0.75, -0.75, 1.0, 1.0, 0.5, 0.75, -0.25, 0.25, -0.25, -1.0, -0.75, 0.75, 0.25, -0.25, 0.5, -0.5, 0.0, 1.0, -0.5, -0.25, -0.5, -0.5, 1.0, 0.0, -0.75, -0.25, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, -0.75, 0.75, -0.25, 1.0, -0.75, -0.25, 0.75, 0.75, 1.0, 0.25, -0.5, 0.5, 1.0, 0.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.25, 0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.75, -0.25, 0.75, 0.25, -0.5, 0.25, -1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, 1.0, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 0.0, 0.5, 1.0, 0.75, ]);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    query800.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    query901.destroy()
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    command_encoder403.insertDebugMarker("mymarker");
    texture700.destroy();
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    query802.destroy()
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    query900.destroy()
    command_encoder901.resolveQuerySet(
        query901,
        0,
        32,
        buffer901,
        0
    )
    
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query801.destroy()
    device30.queue.submit([]);
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query700.destroy()
    texture701.destroy();
    command_encoder700.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    query802.destroy()
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query900.destroy()
    command_encoder301.clearBuffer(buffer301);
    
    command_encoder702.popDebugGroup()
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    query803.destroy()
    query804.destroy()
    
    texture700.destroy();
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query700.destroy()
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder301.clearBuffer(buffer301);
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    command_encoder1100.insertDebugMarker("mymarker");
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    query400.destroy()
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query802.destroy()
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder301.clearBuffer(buffer301);
    command_encoder703.copyBufferToTexture(
        {
            buffer: buffer702
        },
        {
            texture: texture700
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    query805.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query806 = device80.createQuerySet({
        label: "query806",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer702,
        0
    )
    command_encoder703.resolveQuerySet(
        query701,
        0,
        32,
        buffer702,
        0
    )
    
    query800.destroy()
    const command_buffer901 = command_encoder901.finish();
    command_encoder704.resolveQuerySet(
        query700,
        0,
        32,
        buffer702,
        0
    )
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    device110.queue.writeTexture({ texture: texture1100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer702,
        0
    )
    query804.destroy()
    device90.queue.submit([]);
    device80.queue.writeTexture({ texture: texture804 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device80.queue.writeTexture({ texture: texture804 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.queue.writeBuffer(buffer1101, 0, array2, 0, array2.length);
    query803.destroy()
    command_encoder700.resolveQuerySet(
        query702,
        0,
        32,
        buffer702,
        0
    )
    command_encoder902.pushDebugGroup("mygroupmarker")
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const command_buffer704 = command_encoder704.finish();
    device80.queue.writeTexture({ texture: texture804 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const command_buffer1100 = command_encoder1100.finish();
    texture300.destroy();
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
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
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder703.insertDebugMarker("mymarker");
    device80.destroy();
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
    const command_buffer703 = command_encoder703.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device90.queue.submit([command_buffer900, ]);
    command_encoder301.clearBuffer(buffer301);
    command_encoder902.resolveQuerySet(
        query901,
        0,
        32,
        buffer901,
        0
    )
    device70.queue.submit([command_buffer703, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    query901.destroy()
    texture301.destroy();
    
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer301,
        0,
        400
    );
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    
    {
        await buffer703.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer703.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer703.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    query1100.destroy()
    command_encoder301.clearBuffer(buffer301);
    command_encoder705.copyBufferToTexture(
        {
            buffer: buffer701
        },
        {
            texture: texture702
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    {
        await buffer703.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer703.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer703.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder705.pushDebugGroup("mygroupmarker")
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    command_encoder702.copyBufferToBuffer(
        buffer701,
        0,
        buffer700,
        0,
        400
    );
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    texture202.destroy();
    device30.queue.submit([command_buffer300, ]);
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    command_encoder902.resolveQuerySet(
        query900,
        0,
        32,
        buffer901,
        0
    )
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder301.popDebugGroup()
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    command_encoder902.insertDebugMarker("mymarker");
    command_encoder705.resolveQuerySet(
        query701,
        0,
        32,
        buffer702,
        0
    )
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder301.clearBuffer(buffer302);
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    command_encoder701.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    device90.queue.submit([command_buffer900, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device90.queue.writeBuffer(buffer902, 0, array1, 0, array1.length);
    command_encoder705.copyBufferToTexture(
        {
            buffer: buffer701
        },
        {
            texture: texture702
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    command_encoder903.copyTextureToBuffer(
        {
            texture: texture902
        },
        {
            buffer: buffer901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    
    command_encoder301.clearBuffer(buffer301);
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const command_buffer702 = command_encoder702.finish();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeBuffer(buffer1102, 0, array0, 0, array0.length);
    command_encoder903.copyTextureToBuffer(
        {
            texture: texture900
        },
        {
            buffer: buffer901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query901.destroy()
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
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
    command_encoder1101.insertDebugMarker("mymarker");
    command_encoder903.copyTextureToTexture(
        {
            texture: texture901
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device110.queue.writeTexture({ texture: texture1101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture702.destroy();
    command_encoder903.pushDebugGroup("mygroupmarker")
    query300.destroy()
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder9020.insertDebugMarker("marker")
    device110.destroy();
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    command_encoder705.clearBuffer(buffer701);
    command_encoder903.copyBufferToTexture(
        {
            buffer: buffer900
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture1000.destroy();
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder904.copyTextureToTexture(
        {
            texture: texture900
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    command_encoder903.resolveQuerySet(
        query902,
        0,
        32,
        buffer901,
        0
    )
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer301 = command_encoder301.finish();
    command_encoder904.copyTextureToTexture(
        {
            texture: texture900
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device70.queue.submit([command_buffer702, ]);
    query301.destroy()
    command_encoder903.resolveQuerySet(
        query900,
        0,
        32,
        buffer901,
        0
    )
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    texture902.destroy();
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    const compute_pass_encoder9021 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9021" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
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
    texture900.destroy();
    command_encoder903.resolveQuerySet(
        query902,
        0,
        32,
        buffer901,
        0
    )
    device90.queue.writeTexture({ texture: texture901 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9020.insertDebugMarker("marker")
    
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
    query702.destroy()
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    command_encoder903.insertDebugMarker("mymarker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder904.copyBufferToBuffer(
        buffer902,
        0,
        buffer902,
        0,
        400
    );
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    query902.destroy()
    command_encoder903.resolveQuerySet(
        query900,
        0,
        32,
        buffer901,
        0
    )
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    
    query301.destroy()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device70.queue.submit([command_buffer704, ]);
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    query701.destroy()
    const command_buffer1200 = command_encoder1200.finish();
    compute_pass_encoder9020.popDebugGroup()
    device120.queue.submit([command_buffer1200, ]);
    const command_buffer001 = command_encoder001.finish();
    const command_buffer302 = command_encoder302.finish();
    command_encoder903.popDebugGroup()
    const command_buffer903 = command_encoder903.finish();
    compute_pass_encoder9020.popDebugGroup()
    const command_buffer904 = command_encoder904.finish();
    command_encoder705.popDebugGroup()
    device100.queue.submit([]);
    compute_pass_encoder9020.popDebugGroup()
    const command_buffer1101 = command_encoder1101.finish();
    device90.queue.submit([command_buffer903, ]);
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer301, ]);
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder7000.popDebugGroup()
    device90.queue.submit([command_buffer904, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder9020.popDebugGroup()
    device120.queue.submit([]);
    device90.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    device70.queue.submit([command_buffer702, ]);
    device120.queue.submit([command_buffer1200, ]);
    compute_pass_encoder7010.popDebugGroup()
    device90.queue.submit([]);
    device70.queue.submit([command_buffer703, ]);
    command_encoder700.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device90.queue.submit([command_buffer903, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder7000.popDebugGroup()
    device90.queue.submit([command_buffer903, ]);
    device100.queue.submit([]);
    compute_pass_encoder7000.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder7050.popDebugGroup()
    device70.queue.submit([command_buffer704, ]);
    compute_pass_encoder9021.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device100.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer704, ]);
    compute_pass_encoder7000.popDebugGroup()
    command_encoder902.popDebugGroup()
    device70.queue.submit([command_buffer704, ]);
    device40.queue.submit([command_buffer403, ]);
    const command_buffer705 = command_encoder705.finish();
    device70.queue.submit([command_buffer700, command_buffer705, ]);
    const command_buffer902 = command_encoder902.finish();
    device40.queue.submit([]);
    command_encoder801.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device70.queue.submit([command_buffer704, command_buffer705, ]);
    device90.queue.submit([command_buffer902, ]);
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer704, command_buffer705, ]);
    device30.queue.submit([command_buffer301, ]);
    device90.queue.submit([command_buffer901, command_buffer904, ]);
}