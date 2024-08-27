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
    
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.destroy();
    texture202.destroy();
    texture200.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.destroy();
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer500.destroy()
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    compute_pass_encoder5000.popDebugGroup()
    
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture500.destroy();
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    device40.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    
    command_encoder700.insertDebugMarker("mymarker");
    
    command_encoder700.insertDebugMarker("mymarker");
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    command_encoder502.insertDebugMarker("mymarker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const command_buffer700 = command_encoder700.finish();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    buffer700.destroy()
    
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const command_buffer502 = command_encoder502.finish();
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.submit([command_buffer502, ]);
    
    buffer701.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    buffer502.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    buffer501.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    
    compute_pass_encoder5030.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const command_buffer800 = command_encoder800.finish();
    
    compute_pass_encoder5010.popDebugGroup()
    texture502.destroy();
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture503.destroy();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    compute_pass_encoder7010.insertDebugMarker("marker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    buffer703.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder5010.popDebugGroup()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_pass_encoder5040.executeBundles([])
    buffer702.destroy()
    
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device90.destroy();
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    texture800.destroy();
    
    
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    
    
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    render_pass_encoder5040.pushDebugGroup("group_marker");
    
    texture506.destroy();
    
    render_pass_encoder5040.insertDebugMarker("marker");
    render_pass_encoder5040.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    buffer503.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    render_pass_encoder5050.executeBundles([])
    texture501.destroy();
    const compute_pass_encoder5070 = command_encoder507.beginComputePass({ label: "compute_pass_encoder5070" });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder5070.insertDebugMarker("marker")
    
    
    render_pass_encoder5040.setStencilReference(1);
    render_pass_encoder5050.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    render_pass_encoder5040.popDebugGroup();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder508 = device50.createCommandEncoder({ label: "command_encoder508" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5040,
            },
        ],
        occlusionQuerySet: undefined
    });
    device70.queue.submit([command_buffer700, ]);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder5040.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder702.insertDebugMarker("mymarker");
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    
    const texture_view5051 = texture505.createView({ label: "texture_view5051" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const command_buffer508 = command_encoder508.finish();
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    render_pass_encoder5060.pushDebugGroup("group_marker");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    texture504.destroy();
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder5050.insertDebugMarker("marker");
    render_pass_encoder5040.pushDebugGroup("group_marker");
    render_pass_encoder5040.setStencilReference(1);
    
    render_pass_encoder5040.executeBundles([])
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_pass_encoder5050.executeBundles([])
    
    render_pass_encoder5060.insertDebugMarker("marker");
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    render_pass_encoder5060.executeBundles([])
    
    
    
    
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
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
    command_encoder1000.pushDebugGroup("mygroupmarker")
    render_pass_encoder5050.insertDebugMarker("marker");
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    {
        await buffer704.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer704.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer704.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder5040.setStencilReference(1);
    render_pass_encoder5060.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    render_pass_encoder5050.setStencilReference(1);
    texture700.destroy();
    texture505.destroy();
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_pass_encoder5050.setStencilReference(1);
    render_pass_encoder5040.insertDebugMarker("marker");
    render_pass_encoder5060.setScissorRect(0, 0, texture504.width / 2, texture504.height / 2);
    const texture508 = device50.createTexture({
        label: "texture508",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
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
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    compute_pass_encoder5070.insertDebugMarker("marker")
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    render_pass_encoder5060.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_pass_encoder5050.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    command_encoder1000.popDebugGroup()
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device80.queue.submit([command_buffer800, ]);
    device60.destroy();
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_pass_encoder5060.popDebugGroup();
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.submit([command_buffer508, ]);
    
    
    command_encoder802.pushDebugGroup("mygroupmarker")
    texture507.destroy();
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device120.destroy();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    compute_pass_encoder5070.insertDebugMarker("marker")
    render_pass_encoder5060.executeBundles([])
    
    
    render_pass_encoder5040.insertDebugMarker("marker");
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    buffer800.destroy()
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    render_pass_encoder5060.pushDebugGroup("group_marker");
    const texture509 = device50.createTexture({
        label: "texture509",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5060.setStencilReference(1);
    
    render_pass_encoder5040.executeBundles([])
    render_pass_encoder5050.setStencilReference(1);
    const command_encoder509 = device50.createCommandEncoder({ label: "command_encoder509" });
    render_pass_encoder5050.executeBundles([])
    
    compute_pass_encoder8010.popDebugGroup()
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
    render_pass_encoder5050.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    render_pass_encoder5050.setStencilReference(1);
    render_pass_encoder5050.pushDebugGroup("group_marker");
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder5040.popDebugGroup();
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5060.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    device110.destroy();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const texture_view5090 = texture509.createView({ label: "texture_view5090" });
    
    render_pass_encoder5060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5060.executeBundles([])
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder5040.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_buffer1001 = command_encoder1001.finish();
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const render_pass_encoder5090 = command_encoder509.beginRenderPass({
        label: "render_pass_encoder5090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5051,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder5000.popDebugGroup()
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
    render_pass_encoder5050.popDebugGroup();
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer1000 = command_encoder1000.finish();
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer704.destroy()
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    
    render_pass_encoder5040.pushDebugGroup("group_marker");
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    buffer1001.destroy()
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    
    const texture_view5080 = texture508.createView({ label: "texture_view5080" });
    
    texture509.destroy();
    const command_encoder5010 = device50.createCommandEncoder({ label: "command_encoder5010" });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder5030.insertDebugMarker("marker")
    render_pass_encoder5050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout702]
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5090.setScissorRect(0, 0, texture505.width / 2, texture505.height / 2);
    command_encoder803.insertDebugMarker("mymarker");
    render_pass_encoder5090.setScissorRect(0, 0, texture505.width / 2, texture505.height / 2);
    buffer505.destroy()
    const command_buffer703 = command_encoder703.finish();
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    
    render_pass_encoder5040.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    command_encoder803.pushDebugGroup("mygroupmarker")
    command_encoder803.popDebugGroup()
    render_pass_encoder5040.popDebugGroup();
    const command_buffer803 = command_encoder803.finish();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5060.popDebugGroup();
    const command_buffer5010 = command_encoder5010.finish();
    compute_pass_encoder8010.popDebugGroup()
    device50.queue.submit([command_buffer5010, ]);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    command_encoder802.popDebugGroup()
    const command_buffer802 = command_encoder802.finish();
    device70.queue.submit([command_buffer703, ]);
    device80.queue.submit([command_buffer802, command_buffer803, ]);
}