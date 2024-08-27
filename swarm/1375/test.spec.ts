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
    
    const array0 = new Float32Array([0.25, -0.5, -0.75, -0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.25, 1.0, -0.5, -1.0, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -0.75, -0.25, -0.25, -1.0, -1.0, 0.5, -0.25, -0.75, 1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 0.75, -0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 1.0, 0.5, 0.0, -0.25, -0.5, -0.75, 0.0, 1.0, -0.75, -0.5, -1.0, 0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, 0.25, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.25, 0.25, 0.25, 1.0, ]);
    
    const array1 = new Float32Array([-0.75, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, 0.25, 0.5, -0.75, 0.0, 0.5, 0.75, -1.0, 0.25, -0.5, -0.75, 0.75, -0.25, 0.75, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 0.25, -0.75, 0.5, 0.5, -0.25, 0.0, -0.5, -0.25, -0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.25, 1.0, 0.0, 1.0, -1.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, 1.0, -1.0, 0.75, -0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.0, 0.5, 1.0, 1.0, 1.0, 0.75, 0.75, 0.75, -0.5, -0.75, 1.0, -0.5, 1.0, -0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([0.5, 1.0, 0.0, -0.75, -1.0, -0.25, 0.0, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 1.0, 0.75, -0.75, -0.25, 0.5, 0.25, -0.5, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, 0.0, -0.25, 0.25, 0.25, 0.25, 0.75, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 1.0, -1.0, 0.25, 0.0, 0.75, -0.5, -0.75, 0.0, -0.75, -1.0, -0.25, -0.25, -1.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.75, -0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, -0.75, 0.25, -0.5, 0.25, -0.25, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
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
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder201.insertDebugMarker("mymarker");
    
    query100.destroy()
    query200.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([]);
    
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    query101.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    texture100.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_buffer200 = command_encoder200.finish();
    query100.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device70.queue.submit([]);
    
    const command_buffer201 = command_encoder201.finish();
    
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
    command_encoder202.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.pushErrorScope("validation");
    texture100.destroy();
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query300.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.pushErrorScope("internal");
    
    
    
    device40.pushErrorScope("internal");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder202.insertDebugMarker("mymarker");
    
    command_encoder100.insertDebugMarker("mymarker");
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
    texture700.destroy();
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    texture200.destroy();
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
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    const command_buffer402 = command_encoder402.finish();
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.insertDebugMarker("mymarker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder202.insertDebugMarker("mymarker");
    device40.queue.submit([command_buffer402, ]);
    query102.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const command_buffer202 = command_encoder202.finish();
    query701.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.pushErrorScope("internal");
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    command_encoder300.copyTextureToTexture(
        {
            texture: texture301
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
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
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture701.destroy();
    
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    query100.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query101.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.25, -1.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.0, 0.75, 0.75, 1.0, 1.0, 1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.75, 0.25, -1.0, 0.75, 1.0, -0.25, 0.25, 0.25, 1.0, -0.25, -1.0, 0.25, -0.75, -0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 0.75, -0.5, -1.0, 0.75, 0.75, 1.0, -1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -1.0, 0.75, 1.0, -0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.5, 0.25, -0.5, -1.0, 0.0, 0.0, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, -0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 0.0, 0.25, -1.0, 0.25, -1.0, 1.0, 0.0, -0.75, 0.0, -0.75, 1.0, -0.25, -0.5, 0.5, 0.75, -0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    query300.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder300.insertDebugMarker("mymarker");
    
    
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
    command_encoder401.insertDebugMarker("mymarker");
    device50.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query400.destroy()
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    query300.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder203.insertDebugMarker("mymarker");
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    command_encoder700.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
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
    query701.destroy()
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
    texture300.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    
    
    query301.destroy()
    command_encoder700.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    command_encoder101.insertDebugMarker("mymarker");
    
    
    texture101.destroy();
    
    const command_buffer700 = command_encoder700.finish();
    
    query100.destroy()
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
    const command_buffer401 = command_encoder401.finish();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    texture301.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device10.queue.submit([]);
    query101.destroy()
    
    
    
    
    
    
    command_encoder101.insertDebugMarker("mymarker");
    device20.queue.submit([command_buffer202, ]);
    
    query100.destroy()
    
    device50.pushErrorScope("out-of-memory");
    
    query702.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    query100.destroy()
    query300.destroy()
    
    query700.destroy()
    query100.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_buffer000 = command_encoder000.finish();
    const command_buffer701 = command_encoder701.finish();
    const array4 = new Float32Array([-0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 0.0, -0.25, -1.0, -0.75, 0.75, 0.5, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -0.5, -0.5, 0.0, -0.5, -1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -0.5, -1.0, -1.0, 0.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.0, -0.5, -1.0, -1.0, 0.5, -0.75, 0.25, 0.0, 0.25, -0.5, 0.0, 0.25, -0.25, -0.25, 0.0, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 1.0, -0.75, 0.75, -1.0, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.75, 0.0, ]);
    command_encoder102.insertDebugMarker("mymarker");
    
    
    device60.pushErrorScope("out-of-memory");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query101.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    
    const command_buffer300 = command_encoder300.finish();
    query400.destroy()
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    query301.destroy()
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device00.pushErrorScope("internal");
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture702 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([-0.25, -0.25, -1.0, 0.5, 0.0, -1.0, -0.5, -1.0, -0.5, -0.5, -0.25, 1.0, -0.75, -1.0, 0.0, 0.5, 0.0, -1.0, 0.5, 0.25, -1.0, -0.25, 0.25, -0.75, 0.5, 0.0, -0.5, 0.5, -0.25, -0.5, -0.25, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.5, -0.25, 0.25, -0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.5, 0.5, -0.75, -1.0, -0.25, -0.75, 0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.25, -0.75, -0.25, 1.0, -1.0, -0.25, 0.5, ]);
    
    
    
    
    
    query102.destroy()
    device30.pushErrorScope("out-of-memory");
    device70.queue.writeTexture({ texture: texture703 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    texture703.destroy();
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer403 = command_encoder403.finish();
    query600.destroy()
    const command_buffer100 = command_encoder100.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    const command_buffer500 = command_encoder500.finish();
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer501 = command_encoder501.finish();
    const array6 = new Float32Array([0.75, -0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -1.0, 0.0, -1.0, 0.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.25, 0.0, 0.0, 0.75, 0.5, -1.0, -0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, -0.5, 0.5, -0.5, 0.25, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, 0.75, 1.0, -0.25, 1.0, 1.0, 0.25, 0.25, 0.0, -0.75, -0.5, 0.25, -1.0, -0.25, 0.75, -0.25, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, 0.75, -0.75, 0.75, 0.75, -0.5, 0.5, 0.75, -0.75, 0.75, -0.25, 1.0, 1.0, 0.5, -1.0, -1.0, 0.5, 0.5, 1.0, -0.75, 0.5, -0.25, -0.5, -1.0, -0.5, 1.0, 0.25, 1.0, -0.5, 0.5, 0.75, 1.0, ]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    texture000.destroy();
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer203 = command_encoder203.finish();
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("internal");
    
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query600.destroy()
    
    const command_buffer104 = command_encoder104.finish();
    
    
    
    query301.destroy()
    
    query105.destroy()
    texture302.destroy();
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    command_encoder102.insertDebugMarker("mymarker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    command_encoder103.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query102.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query600.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    query401.destroy()
    
    
    query002.destroy()
    texture303.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query701.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer301 = command_encoder301.finish();
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    device40.queue.submit([command_buffer401, ]);
    const command_buffer601 = command_encoder601.finish();
    const command_buffer002 = command_encoder002.finish();
    const command_buffer001 = command_encoder001.finish();
    const command_buffer302 = command_encoder302.finish();
    device70.queue.submit([command_buffer700, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const command_buffer204 = command_encoder204.finish();
    const command_buffer602 = command_encoder602.finish();
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
    const command_buffer102 = command_encoder102.finish();
    device50.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer104, ]);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer602, ]);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer102, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer001, ]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer002, ]);
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    device00.queue.submit([command_buffer001, ]);
    device60.queue.submit([command_buffer601, ]);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer600, ]);
    device00.queue.submit([command_buffer001, ]);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer300, ]);
    device70.queue.submit([command_buffer701, ]);
    device20.queue.submit([command_buffer204, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([command_buffer602, ]);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, command_buffer203, command_buffer204, ]);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
}