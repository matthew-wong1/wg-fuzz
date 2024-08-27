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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([-0.5, 1.0, 0.25, 1.0, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, -1.0, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -0.75, -0.25, 0.25, 0.0, -0.25, 0.75, -1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 1.0, 0.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 1.0, -1.0, 0.5, -0.5, -1.0, 0.75, 0.0, 0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 1.0, 0.75, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.25, 1.0, -0.75, 0.75, -0.5, 0.25, -1.0, -0.25, 0.0, 0.5, 1.0, -0.75, -0.25, -0.5, 0.25, -0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -0.25, -0.5, -0.5, 0.0, 0.75, 0.75, 0.0, -0.75, 0.75, -0.75, -0.75, -0.5, 0.5, ]);
    const array1 = new Float32Array([-0.25, 1.0, 0.75, -0.25, 0.75, 0.75, 0.75, 0.25, 0.75, 0.0, 0.25, -0.75, 0.75, -0.75, 0.0, -0.5, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.0, -0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 0.75, -1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.25, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, 0.5, -0.75, -0.25, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -0.75, 0.0, -0.25, 0.5, 0.0, -0.75, 1.0, 1.0, 0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, -1.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.5, -0.5, 1.0, -1.0, 0.75, 0.75, 0.75, -1.0, 0.0, 1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.5, -0.75, -1.0, 0.75, 1.0, -1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, 0.25, 0.5, -1.0, 0.5, 0.75, 0.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.0, 0.5, -1.0, 0.5, -0.75, -0.75, 0.75, 1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -0.75, -0.25, -1.0, -1.0, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.75, 1.0, 1.0, 0.0, 0.5, -1.0, 0.75, 0.0, 0.25, 0.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.destroy();
    
    
    const array3 = new Float32Array([-1.0, -0.5, 0.5, -1.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.25, -1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 1.0, -0.75, 1.0, -0.25, -0.75, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 1.0, -1.0, -0.25, 0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 0.0, 0.5, 1.0, -0.75, 1.0, -1.0, 1.0, -0.25, 0.75, 0.25, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, 0.25, -0.75, 0.75, 0.5, -0.75, -0.25, -1.0, -0.75, 0.25, 0.0, 0.75, 0.75, 0.75, -0.25, 0.0, 0.25, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, 0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([-0.25, 0.75, 0.0, -0.25, -1.0, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, -0.25, 0.0, -1.0, 0.75, -1.0, 0.75, 0.75, 0.0, 1.0, 0.5, -0.25, 0.25, -1.0, 0.5, 1.0, -0.5, 0.75, 0.5, -1.0, 0.75, -0.75, -1.0, -0.25, 0.5, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.75, 0.5, 0.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.5, -0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.75, -0.75, 1.0, 0.5, -0.5, 1.0, 0.25, 1.0, -0.25, 0.75, -1.0, -0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, 0.25, -0.5, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const command_buffer301 = command_encoder301.finish();
    device30.pushErrorScope("out-of-memory");
    texture300.destroy();
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    query300.destroy()
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.clearBuffer(buffer300);
    query300.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer302 = command_encoder302.finish();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query303.destroy()
    
    
    query303.destroy()
    device30.queue.submit([command_buffer302, ]);
    query300.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query302.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    query301.destroy()
    
    query300.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
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
    query300.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    const array5 = new Float32Array([0.75, -1.0, 1.0, -0.25, -1.0, -0.25, 1.0, 0.5, -0.75, 0.75, -0.75, -1.0, -1.0, 0.5, 0.25, 0.5, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, 1.0, 1.0, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, 0.25, -0.25, 0.0, -0.75, 0.5, -1.0, -0.75, 0.75, 0.0, 0.75, -0.5, 0.25, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.5, 1.0, -0.75, 0.0, -1.0, -0.25, 0.5, 0.0, -1.0, 0.5, -0.5, -1.0, -1.0, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, -0.5, 1.0, -0.5, 0.75, 0.25, -0.5, -0.75, 0.0, 0.5, 0.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder304.clearBuffer(buffer300);
    texture301.destroy();
    device30.queue.submit([command_buffer301, ]);
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    query303.destroy()
    command_encoder304.insertDebugMarker("mymarker");
    
    query303.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    command_encoder300.insertDebugMarker("mymarker");
    device50.pushErrorScope("internal");
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    buffer600.destroy()
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const array6 = new Float32Array([0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.25, 0.5, -0.5, 0.75, 0.5, -0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.5, -1.0, -0.5, 1.0, 0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.75, 0.75, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, -0.5, -0.75, -0.75, 1.0, 1.0, -0.75, -0.25, 0.0, 0.25, -0.75, -0.75, -0.5, -0.75, 0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -1.0, 0.75, 0.5, -0.5, 1.0, -0.25, 0.25, -1.0, -0.75, 0.5, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, -0.75, 0.75, 0.5, ]);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    command_encoder500.insertDebugMarker("mymarker");
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3040.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    texture305.destroy();
    
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query300
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
    render_pass_encoder3040.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    query303.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    
    render_pass_encoder3030.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const array7 = new Float32Array([-1.0, -0.25, 0.0, 1.0, 0.75, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.75, -0.5, -0.25, -0.5, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, -0.25, -0.75, 1.0, 0.0, -1.0, 0.25, 0.0, 1.0, 0.25, 0.0, -0.75, 0.25, 0.5, 0.5, -0.25, -1.0, 1.0, -0.75, 1.0, -1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 1.0, -0.5, -0.75, 0.25, 1.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 0.25, 0.75, 1.0, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, ]);
    
    render_pass_encoder3030.setStencilReference(1);
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
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
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.insertDebugMarker("mymarker");
    
    buffer500.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query302.destroy()
    texture306.destroy();
    texture600.destroy();
    render_pass_encoder3000.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    
    render_pass_encoder3040.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    texture303.destroy();
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer301.destroy()
    
    command_encoder502.insertDebugMarker("mymarker");
    const command_buffer502 = command_encoder502.finish();
    query300.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    query300.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder3000.insertDebugMarker("marker");
    device60.destroy();
    buffer501.destroy()
    query301.destroy()
    
    render_pass_encoder3000.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    query300.destroy()
    
    render_pass_encoder3040.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    
    const command_buffer501 = command_encoder501.finish();
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
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
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    
    
    device90.pushErrorScope("validation");
    render_pass_encoder3000.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    render_pass_encoder3030.setStencilReference(1);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array8 = new Float32Array([-0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.0, -0.25, 0.75, -1.0, -0.75, -1.0, -1.0, 0.0, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.75, -1.0, 0.75, -1.0, -0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, 0.25, -0.75, -0.5, -0.25, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, -0.25, -0.75, 1.0, 0.25, 0.75, -0.75, -0.75, -0.75, 0.75, 0.75, -0.5, 1.0, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.25, -0.5, -1.0, -1.0, -1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.25, 0.25, -0.75, 0.25, ]);
    render_pass_encoder3040.insertDebugMarker("marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture302.destroy();
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    
    
    query500.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_pass_encoder3030.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    render_pass_encoder3040.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    
    device40.destroy();
    
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder3040.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture304.destroy();
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    render_pass_encoder3040.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    render_pass_encoder3000.setStencilReference(1);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    
    
    query303.destroy()
    
    
    texture502.destroy();
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder3000.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    
    buffer900.destroy()
    
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    render_pass_encoder3040.setStencilReference(1);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    render_pass_encoder3000.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer303.destroy()
    
    render_pass_encoder3040.setStencilReference(1);
    
    command_encoder900.insertDebugMarker("mymarker");
    query501.destroy()
    
    device100.pushErrorScope("out-of-memory");
    buffer504.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    buffer503.destroy()
    
    query501.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    buffer502.destroy()
    const command_buffer1000 = command_encoder1000.finish();
    
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query501.destroy()
    query500.destroy()
    
    const texture_view5014 = texture501.createView({ label: "texture_view5014" });
    
    
    
    render_pass_encoder3000.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    render_pass_encoder3030.setStencilReference(1);
    
    texture501.destroy();
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    command_encoder900.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3040.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    query304.destroy()
    buffer304.destroy()
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    
    command_encoder901.insertDebugMarker("mymarker");
    
    render_pass_encoder3040.setStencilReference(1);
    query300.destroy()
    
    render_pass_encoder3040.insertDebugMarker("marker");
    
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    
    query500.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    query304.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder3040.setStencilReference(1);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query301.destroy()
    
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device50.queue.submit([command_buffer501, ]);
    
    
    
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    device80.destroy();
    query1001.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    
    
    const array9 = new Float32Array([0.5, -0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.5, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 0.75, 0.75, 1.0, 0.5, 0.0, 1.0, -0.5, 0.25, -0.75, -0.5, -1.0, -0.25, 0.0, -0.5, -0.5, 0.25, 0.75, 0.0, 0.75, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.25, 0.5, -0.25, 1.0, 1.0, 0.25, -0.5, 0.25, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 1.0, 0.25, -1.0, 0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, -1.0, 1.0, 1.0, 0.5, 0.0, 0.25, -1.0, 0.25, -1.0, 0.0, ]);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_pass_encoder3030.insertDebugMarker("marker");
    buffer302.destroy()
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder901.insertDebugMarker("mymarker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query500.destroy()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: query501
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    buffer1000.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    var shader_module3014_code = "";
    try {
        shader_module3014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3014 = await device30.createShaderModule({ label: "shader_module3014", code: shader_module3014_code })
    render_pass_encoder3040.insertDebugMarker("marker");
    command_encoder901.insertDebugMarker("mymarker");
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3000.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    render_pass_encoder3040.setViewport(0, 0, texture305.width / 2, texture305.height / 2, 0, 1);
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    
    query1002.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder901.pushDebugGroup("mygroupmarker")
    query306.destroy()
    render_pass_encoder5040.insertDebugMarker("marker");
    
    
    
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
    const texture_view3071 = texture307.createView({ label: "texture_view3071" });
    query1002.destroy()
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    
    render_pass_encoder5000.setStencilReference(1);
    
    
    command_encoder1002.insertDebugMarker("mymarker");
    device100.queue.submit([command_buffer1000, ]);
    const command_buffer1001 = command_encoder1001.finish();
    const command_buffer902 = command_encoder902.finish();
    device100.queue.submit([command_buffer1001, ]);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer1002 = command_encoder1002.finish();
}