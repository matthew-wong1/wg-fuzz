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
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.queue.submit([]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device10.destroy();
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("internal");
    render_pass_encoder2000.popDebugGroup();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    texture200.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture201.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
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
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    device20.queue.submit([]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture203.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.destroy();
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2001.executeBundles([])
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device40.pushErrorScope("internal");
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder2010.executeBundles([])
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
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder2010.executeBundles([])
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    query201.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    texture204.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device70.destroy();
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture400.destroy();
    query400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    query203.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder2010.setStencilReference(1);
    query203.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
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
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2010.insertDebugMarker("marker");
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
    query202.destroy()
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query202.destroy()
    query000.destroy()
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    
    
    texture401.destroy();
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.executeBundles([])
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    query200.destroy()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2021.executeBundles([])
    query201.destroy()
    const command_buffer401 = command_encoder401.finish();
    
    
    render_pass_encoder2021.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2001.insertDebugMarker("marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2021.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_pass_encoder2000.setStencilReference(1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder2020.popDebugGroup();
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
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.setStencilReference(1);
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder2001.insertDebugMarker("marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    query202.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    device70.pushErrorScope("out-of-memory");
    query200.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2021.endOcclusionQuery()
    
    
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder2011.insertDebugMarker("marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2020.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.pushDebugGroup("group_marker");
    texture204.destroy();
    device20.queue.submit([]);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2012.pushDebugGroup("group_marker");
    render_pass_encoder2021.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.executeBundles([])
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    query203.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder2020.executeBundles([])
    
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
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2001.executeBundles([])
    
    render_pass_encoder2030.executeBundles([])
    command_encoder203.copyTextureToTexture(
        {
            texture: texture205
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder2012.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2012.insertDebugMarker("marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query402
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder2012.setStencilReference(1);
    query203.destroy()
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder2000.executeBundles([])
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2011.popDebugGroup();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    
    
    device50.pushErrorScope("out-of-memory");
    
    query204.destroy()
    query401.destroy()
    render_pass_encoder2020.pushDebugGroup("group_marker");
    query401.destroy()
    
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2010.setStencilReference(1);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2012.executeBundles([])
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.insertDebugMarker("marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    
    render_pass_encoder2031.setStencilReference(1);
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4030.executeBundles([])
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_pass_encoder2031.executeBundles([])
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder4030.setStencilReference(1);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device20.destroy();
    
    query402.destroy()
    
    render_pass_encoder4020.setStencilReference(1);
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query402
    });
    render_pass_encoder4030.executeBundles([])
    
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4031.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    
    render_pass_encoder4030.setStencilReference(1);
    
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query402
    });
    query402.destroy()
    render_pass_encoder4031.setStencilReference(1);
    render_pass_encoder4021.pushDebugGroup("group_marker");
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    query400.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    render_pass_encoder4030.executeBundles([])
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4031.insertDebugMarker("marker");
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder4021.setStencilReference(1);
    
    render_pass_encoder4021.popDebugGroup();
    texture500.destroy();
    render_pass_encoder2030.executeBundles([])
    
    render_pass_encoder4021.pushDebugGroup("group_marker");
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    const render_pass_encoder4022 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query400
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    query401.destroy()
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query402.destroy()
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder4031.insertDebugMarker("marker");
    device40.queue.submit([command_buffer401, ]);
    device30.destroy();
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4040.pushDebugGroup("group_marker");
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4031.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
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
    render_pass_encoder4021.executeBundles([])
    render_pass_encoder4031.insertDebugMarker("marker");
    render_pass_encoder4031.setStencilReference(1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder5000.pushDebugGroup("group_marker");
    texture502.destroy();
    
    device30.destroy();
    render_pass_encoder4021.executeBundles([])
    query403.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.pushErrorScope("validation");
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    query400.destroy()
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder5000.executeBundles([])
    render_pass_encoder4040.insertDebugMarker("marker");
    
    texture501.destroy();
    render_pass_encoder4031.insertDebugMarker("marker");
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4031.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4021.endOcclusionQuery()
    
    render_pass_encoder5000.insertDebugMarker("marker");
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    query400.destroy()
    query403.destroy()
    query402.destroy()
    render_pass_encoder4040.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4040.setStencilReference(1);
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder4030.executeBundles([])
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    query401.destroy()
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4040.executeBundles([])
    render_pass_encoder4020.setStencilReference(1);
    
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
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const query500 = device50.createQuerySet({
        label: "query500",
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
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const command_buffer404 = command_encoder404.finish();
    texture402.destroy();
    render_pass_encoder4021.insertDebugMarker("marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder5000.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4040.endOcclusionQuery()
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4021.endOcclusionQuery()
    render_pass_encoder4021.endOcclusionQuery()
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder4031.popDebugGroup();
    device40.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder4022.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}