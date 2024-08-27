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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array0 = new Float32Array([-0.5, 0.25, 0.25, -1.0, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.5, 0.5, -0.25, 0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.75, 0.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, -0.25, -0.25, -0.25, 0.75, 0.25, -0.25, -1.0, -1.0, -1.0, 0.0, -0.5, -0.5, 1.0, 0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 0.25, -0.75, -0.5, 0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, -0.5, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, 0.5, 0.25, -1.0, -0.5, -0.5, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
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
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer100.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query002.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer200.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer202.destroy()
    buffer201.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device10.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    texture000.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.destroy();
    
    device50.destroy();
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array1 = new Float32Array([-0.75, -0.75, 1.0, -0.75, -0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -0.25, -1.0, 1.0, -1.0, 1.0, 0.25, -0.5, -0.5, 0.75, 0.0, -1.0, -0.5, -0.25, 1.0, -0.5, -0.75, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 1.0, 1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, 0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 0.5, -0.25, 0.0, -1.0, 0.5, 0.0, -1.0, -0.75, -0.25, 0.25, 1.0, -1.0, -0.75, 1.0, 0.75, -1.0, -0.25, 0.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, ]);
    buffer204.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer000.destroy()
    texture202.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    buffer203.destroy()
    device20.destroy();
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder000.popDebugGroup()
    command_encoder003.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.popDebugGroup()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query001.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device60.pushErrorScope("out-of-memory");
    
    
    
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
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query000.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query600.destroy()
    
    query000.destroy()
    
    
    
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query300.destroy()
    buffer600.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    command_encoder003.insertDebugMarker("mymarker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture001.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    device30.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    command_encoder003.insertDebugMarker("mymarker");
    query000.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.clearBuffer(buffer001);
    const array2 = new Float32Array([1.0, -0.75, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, -0.75, -0.75, -0.75, -0.25, -0.25, -0.5, 0.5, 0.75, -0.25, -0.5, 0.25, -0.25, 0.75, -1.0, 0.5, -0.75, 0.75, -1.0, -0.75, -0.75, -0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, -0.75, 0.0, -0.75, -0.5, 0.0, -0.5, 0.5, 0.75, 0.5, -0.25, 0.75, -0.5, 0.25, -0.25, 0.25, -0.5, -1.0, 1.0, 0.25, 1.0, -1.0, 0.75, 0.75, 0.25, 0.5, -0.75, -0.5, -0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -0.25, 0.0, -0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -0.25, 1.0, 1.0, -0.5, -1.0, -1.0, 0.5, ]);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    query000.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const array3 = new Float32Array([0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 0.0, 0.5, -1.0, 0.5, 0.25, -0.25, 0.75, 0.25, 0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.5, -0.25, -1.0, 0.25, -0.25, 0.25, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, -1.0, -0.25, 0.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.75, 1.0, 0.25, 1.0, -0.5, 0.5, -0.75, -1.0, -0.75, 0.0, -0.75, 1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 0.25, 1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, -0.25, -0.25, 0.0, -0.25, -1.0, 1.0, 0.75, 0.75, 0.25, -1.0, -0.5, -0.75, 0.25, 0.25, -0.25, 0.0, -0.5, -0.25, -1.0, -0.25, -1.0, -1.0, -0.25, 0.75, 1.0, -1.0, -0.5, 0.5, -0.5, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder005.insertDebugMarker("mymarker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    
    device60.destroy();
    buffer001.destroy()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query002.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    device70.destroy();
    
    query000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    buffer004.destroy()
    const array4 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -1.0, 1.0, -0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, -0.25, -0.25, 0.75, 0.5, -0.25, 0.75, -1.0, 0.75, 0.75, -0.25, 0.25, 0.5, -1.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, 0.25, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 0.75, -0.75, 1.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.5, -0.5, -0.25, -0.75, 1.0, -0.75, 0.0, 0.25, 1.0, -1.0, ]);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0060.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.pushErrorScope("validation");
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device80.pushErrorScope("internal");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const array5 = new Float32Array([0.5, -0.25, 0.25, 0.75, -0.75, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.0, 0.0, -0.25, 0.5, 0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -1.0, -1.0, -1.0, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.25, -0.5, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, 1.0, -1.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 0.0, 0.0, 0.0, 0.75, 1.0, 0.75, -0.25, 1.0, -1.0, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 0.0, -0.5, -0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 1.0, 0.25, -0.5, 1.0, 0.75, -0.25, -1.0, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, ]);
    
    query002.destroy()
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture003.destroy();
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query800.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    render_pass_encoder0030.executeBundles([])
    
    compute_pass_encoder0010.popDebugGroup()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    compute_pass_encoder8020.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    command_encoder800.insertDebugMarker("mymarker");
    compute_pass_encoder8010.insertDebugMarker("marker")
    
    
    compute_pass_encoder0040.popDebugGroup()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    
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
    device80.pushErrorScope("internal");
    compute_pass_encoder8010.insertDebugMarker("marker")
    command_encoder800.insertDebugMarker("mymarker");
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder800.insertDebugMarker("mymarker");
    
    
    
    query002.destroy()
    compute_pass_encoder8020.insertDebugMarker("marker")
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout005]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0010.popDebugGroup()
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer005.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    query000.destroy()
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    
    device100.pushErrorScope("out-of-memory");
    texture005.destroy();
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.popDebugGroup()
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    compute_pass_encoder8000.popDebugGroup()
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, 0.75, 0.75, 0.5, 0.25, -0.25, 0.5, 0.0, -0.75, 0.5, -0.75, -0.75, -0.5, 0.25, 0.25, -1.0, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 0.75, 0.0, -1.0, -1.0, 0.5, 0.0, 0.5, 0.0, -0.25, 0.25, -0.75, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.5, -0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.75, 0.25, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.75, 0.75, -0.5, 0.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, 1.0, 0.75, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, 0.75, 0.5, 0.25, 0.25, 0.0, -0.5, -1.0, -0.75, ]);
    texture004.destroy();
    compute_pass_encoder0060.insertDebugMarker("marker")
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    compute_pass_encoder8020.insertDebugMarker("marker")
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder803.pushDebugGroup("mygroupmarker")
    query003.destroy()
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder804.insertDebugMarker("mymarker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder8010.insertDebugMarker("marker")
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pass_encoder8030 = command_encoder803.beginComputePass({ label: "compute_pass_encoder8030" });
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
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    query002.destroy()
    device00.pushErrorScope("validation");
    command_encoder1000.pushDebugGroup("mygroupmarker")
    query801.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.queue.writeTexture({ texture: texture1001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder1001.insertDebugMarker("mymarker");
    query000.destroy()
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    texture1002.destroy();
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0060.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder8020.popDebugGroup()
    command_encoder1000.popDebugGroup()
}