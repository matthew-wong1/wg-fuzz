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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.destroy();
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    device20.destroy();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    query500.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    command_encoder501.insertDebugMarker("mymarker");
    
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    texture500.destroy();
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query501.destroy()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder502.insertDebugMarker("mymarker");
    
    command_encoder502.popDebugGroup()
    query501.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query501.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
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
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer500.destroy()
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    
    query501.destroy()
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    query600.destroy()
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    query600.destroy()
    
    
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
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
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    compute_pass_encoder5000.popDebugGroup()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    texture501.destroy();
    compute_pass_encoder5020.insertDebugMarker("marker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_pass_encoder5030.insertDebugMarker("marker");
    
    
    
    query601.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    query601.destroy()
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_pass_encoder5030.setStencilReference(1);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
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
    
    query501.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
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
    render_pass_encoder5040.executeBundles([])
    query600.destroy()
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_bundle_encoder600.popDebugGroup();
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query500.destroy()
    render_pass_encoder5040.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5030.setStencilReference(1);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5030.pushDebugGroup("group_marker");
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    query601.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder5030.executeBundles([])
    compute_pass_encoder5000.insertDebugMarker("marker")
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    render_pass_encoder5040.executeBundles([])
    
    
    
    
    render_pass_encoder5040.pushDebugGroup("group_marker");
    render_pass_encoder5030.insertDebugMarker("marker");
    query600.destroy()
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_pass_encoder5030.executeBundles([])
    
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder5040.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder5030.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder5010.popDebugGroup()
    
    render_bundle_encoder500.popDebugGroup();
    
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    texture600.destroy();
    
    
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    query602.destroy()
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    render_pass_encoder5040.executeBundles([])
    
    render_pass_encoder5040.executeBundles([])
    
    query602.destroy()
    
    
    
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    
    
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    
    buffer503.destroy()
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    compute_pass_encoder5050.pushDebugGroup("group_marker")
    render_pass_encoder5040.executeBundles([])
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile(__dirname + '/shader_module5010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder5020.popDebugGroup()
    
    const sampler508 = device50.createSampler( { label: "sampler508" } );
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query500.destroy()
    render_pass_encoder5030.insertDebugMarker("marker");
    
    
    compute_pass_encoder5010.popDebugGroup()
    
    
    buffer502.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    compute_pass_encoder5050.insertDebugMarker("marker")
    
    render_bundle_encoder600.popDebugGroup();
    
    
    render_pass_encoder5040.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const sampler509 = device50.createSampler( { label: "sampler509" } );
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_pass_encoder5040.insertDebugMarker("marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const sampler5010 = device50.createSampler( { label: "sampler5010" } );
    
    render_pass_encoder5040.insertDebugMarker("marker");
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_pass_encoder5030.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    command_encoder506.insertDebugMarker("mymarker");
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    query500.destroy()
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    query600.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder6000.popDebugGroup()
    
    
    query500.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    buffer504.destroy()
    
    
    
    compute_pass_encoder5050.popDebugGroup()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder5040.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    query501.destroy()
    query601.destroy()
    query501.destroy()
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    
    buffer600.destroy()
    compute_pass_encoder5050.insertDebugMarker("marker")
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.executeBundles([])
    query502.destroy()
    render_pass_encoder5060.pushDebugGroup("group_marker");
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    compute_pass_encoder5050.pushDebugGroup("group_marker")
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    texture502.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder601.popDebugGroup();
    
    query602.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder5060.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder5040.executeBundles([])
    
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    
    render_pass_encoder5040.executeBundles([])
    render_pass_encoder5030.insertDebugMarker("marker");
    
    const compute_pass_encoder5070 = command_encoder507.beginComputePass({ label: "compute_pass_encoder5070" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder502.popDebugGroup();
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile(__dirname + '/shader_module5011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    compute_pass_encoder5020.popDebugGroup()
    var shader_module5012_code = "";
    try {
        shader_module5012_code = await fs.readFile(__dirname + '/shader_module5012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5012 = await device50.createShaderModule({ label: "shader_module5012", code: shader_module5012_code })
    const sampler5011 = device50.createSampler( { label: "sampler5011" } );
    texture602.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5030.executeBundles([])
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder5040.setStencilReference(1);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    render_pass_encoder5040.executeBundles([])
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_pass_encoder5030.setStencilReference(1);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    render_pass_encoder5030.executeBundles([])
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder601.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5060.insertDebugMarker("marker");
    query601.destroy()
    
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    
    var shader_module5013_code = "";
    try {
        shader_module5013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5013 = await device50.createShaderModule({ label: "shader_module5013", code: shader_module5013_code })
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    
    query500.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query502.destroy()
    texture700.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5050.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
}