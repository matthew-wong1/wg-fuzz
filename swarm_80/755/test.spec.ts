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
    
    const array0 = new Float32Array([-0.25, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 0.75, -0.5, -1.0, 0.5, -1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, -0.75, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 0.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.75, -0.5, 0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, 0.25, 0.5, 1.0, -1.0, 0.25, 0.0, 1.0, -0.5, 0.5, 0.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 1.0, -0.5, 0.75, -0.5, 1.0, -0.25, 0.5, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.75, ]);
    
    const array1 = new Float32Array([1.0, -0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 1.0, 0.25, -0.25, -0.75, 0.25, 0.75, -0.25, -0.75, -0.75, -1.0, 1.0, 1.0, 1.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.5, -0.75, -1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.75, -0.75, 1.0, -0.75, -0.5, 0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -0.5, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, -0.5, 0.0, -0.5, 1.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([0.5, 0.0, 0.5, -1.0, -0.75, 0.25, 0.5, -0.75, 0.5, -1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.25, -1.0, 0.25, -0.75, -0.25, 0.25, 0.75, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.75, -1.0, -0.75, 0.5, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, -0.75, -0.5, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 0.75, -1.0, -0.25, -1.0, -0.5, -1.0, -1.0, -0.25, 0.75, -0.5, 1.0, 0.75, -0.75, 0.5, 0.5, -0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.popDebugGroup();
    device00.pushErrorScope("internal");
    
    device30.destroy();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    const array3 = new Float32Array([0.25, 1.0, -0.5, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, 1.0, 1.0, 1.0, -1.0, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.25, -0.75, 0.75, -0.5, -0.75, -1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, -0.75, -0.5, 1.0, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -0.25, 0.75, -0.75, -0.75, 0.25, -1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -0.5, -0.25, 0.25, -0.5, 0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, -1.0, -1.0, -0.5, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.0, -0.75, -1.0, -0.25, -1.0, 0.75, 0.0, ]);
    render_bundle_encoder000.popDebugGroup();
    
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    device10.pushErrorScope("internal");
    device00.pushErrorScope("validation");
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array4 = new Float32Array([0.75, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, 1.0, -0.75, 0.5, 0.75, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 1.0, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, -0.75, 0.5, 1.0, 0.75, -1.0, 0.0, -0.75, 0.5, -0.25, 0.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 0.75, 0.75, -0.25, 0.5, -0.25, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, 0.0, -0.75, -0.25, 0.75, -1.0, -0.5, 0.25, 0.5, 0.25, -1.0, 0.25, 0.75, -0.25, -1.0, -0.25, 0.5, -1.0, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.5, 1.0, -1.0, 0.0, 0.25, -0.75, 1.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.75, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.popDebugGroup();
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
    device10.pushErrorScope("validation");
    const array5 = new Float32Array([0.0, 1.0, -0.25, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 1.0, -0.5, 0.75, -0.5, 0.75, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 0.75, -0.5, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, -0.25, 0.25, -0.5, -0.75, 0.0, 0.25, 0.5, 1.0, 0.0, 0.5, 1.0, -0.75, 0.5, 1.0, 1.0, -0.25, -1.0, -0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 0.5, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.0, -1.0, ]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.75, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, -0.75, -0.25, 0.75, 1.0, 0.75, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, -0.25, 0.75, -0.5, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, 1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.75, 1.0, -0.5, -1.0, -1.0, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -0.25, 0.0, -0.5, 0.0, 0.5, -0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, 0.75, 0.25, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -1.0, 0.25, -0.5, 0.0, 0.5, -0.75, -0.75, 0.25, -1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 0.25, 0.5, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    
    device40.pushErrorScope("out-of-memory");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.destroy();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array7 = new Float32Array([0.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 1.0, 1.0, 0.5, -0.25, 0.25, -0.5, -1.0, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, 1.0, -0.5, -0.75, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, -0.25, 0.0, 0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 0.5, 0.75, 0.0, 1.0, 1.0, 0.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.75, -0.25, 0.5, -0.25, -1.0, -0.5, -0.5, -0.25, -0.25, -1.0, -0.25, 0.75, 0.75, -1.0, -1.0, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.5, 0.75, 0.75, -0.25, -0.25, -0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const array8 = new Float32Array([0.0, -0.75, 0.5, 0.25, 0.0, -1.0, -0.5, 0.5, -0.25, -0.75, 0.5, -0.75, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, 0.0, -0.5, 0.25, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, 0.5, -1.0, 1.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.25, -0.5, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, -0.25, -0.5, -0.25, 0.25, 1.0, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, 0.5, 0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 0.25, 0.0, 1.0, 0.0, ]);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.destroy();
    const array9 = new Float32Array([0.75, 0.25, 0.5, 1.0, 0.75, 1.0, 1.0, -0.25, 0.25, 0.5, -0.75, -1.0, -1.0, 0.0, -0.75, -0.75, 0.0, -0.75, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, -0.25, -0.75, 1.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.5, 0.75, -0.25, 1.0, 1.0, 0.0, 1.0, -0.5, 0.5, 0.25, 0.0, 0.0, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, 0.0, -1.0, 1.0, 1.0, -0.75, -0.5, -0.5, -0.75, -0.25, 0.0, -0.75, 0.5, -0.25, 0.5, 0.0, 0.25, -0.5, 0.25, 0.75, 0.5, -0.25, 0.25, 0.0, 0.5, -0.75, -0.75, 0.0, -0.5, -0.5, -0.75, -0.75, -0.75, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, 1.0, -1.0, 0.5, 0.25, 0.75, 0.25, 0.5, 0.0, 1.0, 0.75, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array10 = new Float32Array([1.0, -0.25, 0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, -0.5, -0.25, 1.0, 0.75, 0.75, -0.75, 0.75, -0.75, 1.0, 0.5, -0.75, 0.25, 1.0, 0.0, 0.0, 0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 0.5, 0.25, -0.75, 0.5, -0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 0.25, 0.0, -0.5, 0.5, 0.0, 0.75, -0.5, 0.75, 1.0, -0.75, 0.0, -0.25, -0.5, -0.75, -0.25, -0.75, 0.25, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, -1.0, 0.75, -0.75, -0.5, -1.0, 0.0, -0.5, 0.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.25, 0.75, 0.5, -0.5, -0.25, -0.25, -1.0, ]);
    
    
    const array11 = new Float32Array([-0.25, 1.0, -0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -1.0, -1.0, 0.0, 1.0, 0.75, -0.75, 0.75, 0.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.25, 1.0, 0.25, -0.25, 0.5, 0.5, 0.5, 1.0, 0.5, -0.5, -1.0, 0.5, 0.0, -1.0, 0.5, 0.5, 1.0, -0.5, -1.0, 0.5, 0.5, 0.0, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, -0.75, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, -0.5, -0.5, 0.5, 1.0, 1.0, 0.25, 0.5, 0.0, 0.75, 0.5, 0.5, -0.5, -0.5, 1.0, 0.75, -0.25, 0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, 0.5, -0.5, 0.25, 0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 1.0, -0.25, 0.25, ]);
    const array12 = new Float32Array([-0.5, 0.0, 1.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.5, 0.25, 1.0, -0.5, -1.0, 0.0, -0.5, 1.0, -0.25, 1.0, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.5, -1.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, -0.5, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, -1.0, -0.5, 0.25, 0.75, -0.25, 0.75, 0.25, -0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, 0.75, 0.25, 0.0, 1.0, 0.25, -0.75, 0.25, -0.75, 0.5, -0.25, 0.25, 0.25, -0.25, 0.5, ]);
    
    
    
    
    
    
    const array13 = new Float32Array([0.25, -0.25, 0.25, 0.5, 0.0, -0.75, -0.5, -0.75, 0.75, 1.0, 1.0, -1.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 0.75, 0.25, 0.75, 0.25, -0.25, 0.5, 0.5, 0.5, -0.5, -0.25, 0.5, 1.0, -0.75, 0.0, -0.5, 1.0, -0.25, 1.0, -0.5, 1.0, 0.25, 0.5, -1.0, 0.75, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.0, -0.25, -0.25, 1.0, 0.75, 0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, 0.25, 1.0, -0.5, 0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 0.5, 0.0, 0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -1.0, -1.0, -0.5, ]);
    
    const array14 = new Float32Array([-0.75, -1.0, 1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.25, -0.5, 0.75, 0.75, -1.0, 0.0, 1.0, 0.75, 0.75, 0.75, -0.75, 1.0, 0.0, -1.0, 0.75, -0.75, -0.75, -1.0, 0.5, 0.0, -0.25, 0.5, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, -1.0, -0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.75, -0.75, -0.5, 0.75, 1.0, -1.0, 0.25, -0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 0.25, 0.75, -1.0, 0.75, 0.0, 1.0, 0.0, ]);
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array15 = new Float32Array([0.75, -0.75, 0.5, 0.0, 0.75, 1.0, -1.0, -0.25, 0.25, -0.75, 0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 0.75, 0.0, -1.0, 1.0, 0.25, -0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, 0.5, 1.0, -1.0, 0.75, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 0.5, -0.25, -0.25, -0.75, 0.25, 0.75, 0.0, 0.5, -0.25, -0.75, 0.0, -0.75, 1.0, -0.5, 0.25, 0.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.0, -1.0, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.75, 0.75, 0.0, 1.0, 0.25, -0.5, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.destroy();
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device80.pushErrorScope("validation");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    device90.destroy();
    render_bundle_encoder800.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    render_bundle_encoder801.insertDebugMarker("marker");
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder800.popDebugGroup();
    
    
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array16 = new Float32Array([0.5, 1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 0.75, -0.75, 0.5, 0.5, -0.5, -0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.5, 0.5, 0.75, 1.0, 0.0, 0.25, -0.5, -1.0, -1.0, 0.5, -0.75, 0.5, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, 0.25, -0.5, -0.75, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, -0.5, 0.75, 0.0, 0.0, 0.25, 0.5, 0.75, 0.75, -1.0, 0.25, -0.5, 0.0, -1.0, -1.0, -0.25, 0.5, -0.75, ]);
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device50.destroy();
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array17 = new Float32Array([-1.0, -0.25, 0.25, 0.5, 1.0, -1.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.75, 1.0, 0.0, 0.5, 0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 0.5, -0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 0.0, 0.25, -0.5, -0.75, 0.5, -0.5, 0.5, 0.0, 0.25, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, -0.25, -1.0, 0.5, 1.0, 1.0, 0.75, 1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 0.0, 0.5, -0.75, 0.25, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.5, 0.75, 0.5, -0.5, -0.25, -0.5, -0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 0.25, -0.25, ]);
    
    
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device100.pushErrorScope("validation");
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    device100.queue.writeBuffer(buffer1000, 0, array13, 0, array13.length);
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device110.queue.writeBuffer(buffer1100, 0, array13, 0, array13.length);
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device100.queue.writeBuffer(buffer1000, 0, array12, 0, array12.length);
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    device100.queue.writeBuffer(buffer1001, 0, array12, 0, array12.length);
    render_bundle_encoder1000.popDebugGroup();
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    
    device100.queue.writeBuffer(buffer1001, 0, array14, 0, array14.length);
    
    device100.queue.writeBuffer(buffer1001, 0, array6, 0, array6.length);
    device110.queue.writeBuffer(buffer1100, 0, array7, 0, array7.length);
    device100.queue.writeBuffer(buffer1001, 0, array10, 0, array10.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device100.queue.writeBuffer(buffer1001, 0, array15, 0, array15.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    
    device100.queue.writeBuffer(buffer1001, 0, array2, 0, array2.length);
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array16, 0, array16.length);
    
    {
        await buffer1100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1100.unmap();
        console.log(new Float32Array(data));
    }
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    device110.queue.writeBuffer(buffer1100, 0, array7, 0, array7.length);
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device110.queue.writeBuffer(buffer1101, 0, array8, 0, array8.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    device100.queue.writeBuffer(buffer1001, 0, array14, 0, array14.length);
    device110.queue.writeBuffer(buffer1101, 0, array6, 0, array6.length);
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    device110.queue.writeBuffer(buffer1101, 0, array15, 0, array15.length);
    device110.queue.writeBuffer(buffer1100, 0, array17, 0, array17.length);
    device100.queue.writeBuffer(buffer1000, 0, array16, 0, array16.length);
    device110.queue.writeBuffer(buffer1101, 0, array1, 0, array1.length);
    device110.queue.writeBuffer(buffer1100, 0, array12, 0, array12.length);
    device110.queue.writeBuffer(buffer1100, 0, array11, 0, array11.length);
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    device100.queue.writeBuffer(buffer1000, 0, array11, 0, array11.length);
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    device110.queue.writeBuffer(buffer1100, 0, array16, 0, array16.length);
    
    device100.queue.writeBuffer(buffer1001, 0, array2, 0, array2.length);
    
    
    device110.queue.writeBuffer(buffer1101, 0, array0, 0, array0.length);
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    device110.queue.writeBuffer(buffer1100, 0, array9, 0, array9.length);
    
    
    
    device110.queue.writeBuffer(buffer1101, 0, array11, 0, array11.length);
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    device100.queue.writeBuffer(buffer1001, 0, array11, 0, array11.length);
    device100.queue.writeBuffer(buffer1001, 0, array17, 0, array17.length);
    
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    device110.queue.writeBuffer(buffer1101, 0, array7, 0, array7.length);
    device100.queue.writeBuffer(buffer1000, 0, array14, 0, array14.length);
    
    {
        await buffer1100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1100.unmap();
        console.log(new Float32Array(data));
    }
    device100.queue.writeBuffer(buffer1001, 0, array8, 0, array8.length);
    device100.queue.writeBuffer(buffer1000, 0, array5, 0, array5.length);
    const array18 = new Float32Array([-0.75, -0.75, -1.0, 1.0, -1.0, -0.25, 0.0, -0.75, -1.0, -0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -0.25, -1.0, 0.5, -0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, -0.25, 0.5, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -0.25, 0.0, 1.0, -1.0, -1.0, -0.5, 0.25, 0.5, -1.0, 0.25, 0.5, -0.5, 0.75, 0.25, 1.0, -0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 0.75, -0.25, -1.0, -0.5, 1.0, 0.25, 0.5, 0.0, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, -0.75, -0.25, 1.0, 0.75, 1.0, -0.75, 0.25, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, 0.75, 0.0, ]);
    device100.queue.writeBuffer(buffer1000, 0, array8, 0, array8.length);
    render_bundle_encoder1100.popDebugGroup();
    device110.queue.writeBuffer(buffer1101, 0, array5, 0, array5.length);
    
    {
        await buffer1001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1001.unmap();
        console.log(new Float32Array(data));
    }
    device110.queue.writeBuffer(buffer1101, 0, array13, 0, array13.length);
    
    
    device100.queue.writeBuffer(buffer1001, 0, array17, 0, array17.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.queue.writeBuffer(buffer1101, 0, array3, 0, array3.length);
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    device110.queue.writeBuffer(buffer1100, 0, array18, 0, array18.length);
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    device110.queue.writeBuffer(buffer1101, 0, array6, 0, array6.length);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}