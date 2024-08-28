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
    
    
    
    const array0 = new Float32Array([-0.75, -0.5, -0.25, -1.0, -0.75, -1.0, -1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.5, -0.75, 0.75, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 1.0, -0.5, -0.75, -0.75, 1.0, -0.5, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, -0.75, -0.25, -1.0, -0.75, 1.0, -0.25, -1.0, -1.0, -0.25, -1.0, 0.5, -0.5, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, -0.5, 0.75, 0.75, -0.5, -1.0, -0.5, 1.0, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, -0.75, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.pushErrorScope("out-of-memory");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const array1 = new Float32Array([1.0, -0.75, 0.75, 0.25, -0.75, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, -0.75, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -1.0, 1.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.0, -1.0, -0.5, 0.5, 1.0, 1.0, -0.25, 0.75, 0.75, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, 0.75, -0.25, 0.25, 0.0, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, -0.25, 0.25, 0.5, 0.75, -0.5, -1.0, 0.0, 0.5, 1.0, 0.25, -0.75, -0.5, -1.0, 1.0, 0.0, -0.75, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
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
    buffer101.destroy()
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const array2 = new Float32Array([-0.75, 1.0, -1.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, 0.75, -0.75, -0.75, 1.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, -0.25, 0.0, -0.25, -0.75, 1.0, 0.75, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 0.5, 0.25, 0.75, 1.0, 1.0, 0.5, 0.5, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, 0.0, 1.0, 0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    query101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder100.popDebugGroup();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 0.25, 0.25, 0.0, 0.5, 0.25, 1.0, -0.25, -0.25, -0.25, 0.0, 0.25, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, -0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, -0.75, 0.0, 0.25, 0.0, -0.75, 0.0, -0.25, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 0.5, 0.75, 0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.75, 0.5, 0.5, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 1.0, 1.0, 1.0, -1.0, 0.0, -1.0, 0.0, 0.75, -1.0, 0.75, -1.0, 0.0, 0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.75, 0.0, -0.25, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, 0.5, -1.0, 0.0, ]);
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    buffer102.destroy()
    buffer103.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query101.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-1.0, 0.25, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, -0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 1.0, 1.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.25, 0.25, -0.5, 0.0, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, -0.5, 0.25, 0.25, -1.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.0, -0.25, -1.0, -0.75, -1.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.75, 1.0, -0.25, -0.25, 1.0, 0.25, 0.25, -0.5, -0.5, -0.25, -0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.75, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    device20.destroy();
    
    
    buffer100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    
    
    render_bundle_encoder101.popDebugGroup();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    const array5 = new Float32Array([-0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, -0.75, -0.5, 0.75, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 1.0, -0.75, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, 1.0, -0.5, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.75, -0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -0.75, 0.25, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 1.0, -0.5, 0.75, 0.0, -0.25, -1.0, -1.0, -1.0, -0.25, 0.0, -0.25, ]);
    query101.destroy()
    
    
    
    
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.popDebugGroup();
    
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    const array6 = new Float32Array([0.0, 0.5, 1.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.5, 1.0, 0.5, -0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, -1.0, 0.25, -0.5, -0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, 1.0, 0.0, 1.0, 1.0, 1.0, -0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 1.0, -0.75, -0.5, -0.5, -0.75, -0.25, 0.5, 0.0, 0.0, 1.0, 0.75, 0.5, -0.5, 0.75, 0.75, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, -0.75, -0.5, -0.5, -0.5, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 1.0, 0.5, 0.5, 1.0, -0.75, 0.5, -0.75, 0.75, 0.0, 0.75, 0.5, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, -1.0, -1.0, -0.75, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query101.destroy()
    
    var shader_module1017_code = "";
    try {
        shader_module1017_code = await fs.readFile(__dirname + '/shader_module1017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1017 = await device10.createShaderModule({ label: "shader_module1017", code: shader_module1017_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    var shader_module1018_code = "";
    try {
        shader_module1018_code = await fs.readFile(__dirname + '/shader_module1018.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1018 = await device10.createShaderModule({ label: "shader_module1018", code: shader_module1018_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    render_bundle_encoder102.popDebugGroup();
    var shader_module1019_code = "";
    try {
        shader_module1019_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1019 = await device10.createShaderModule({ label: "shader_module1019", code: shader_module1019_code })
    
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
    
    
    query100.destroy()
    
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query101.destroy()
    var shader_module1020_code = "";
    try {
        shader_module1020_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1020 = await device10.createShaderModule({ label: "shader_module1020", code: shader_module1020_code })
    
    var shader_module1021_code = "";
    try {
        shader_module1021_code = await fs.readFile(__dirname + '/shader_module1021.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1021 = await device10.createShaderModule({ label: "shader_module1021", code: shader_module1021_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("validation");
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    buffer105.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    
    var shader_module1022_code = "";
    try {
        shader_module1022_code = await fs.readFile(__dirname + '/shader_module1022.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1022 = await device10.createShaderModule({ label: "shader_module1022", code: shader_module1022_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module1023_code = "";
    try {
        shader_module1023_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1023 = await device10.createShaderModule({ label: "shader_module1023", code: shader_module1023_code })
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module1024_code = "";
    try {
        shader_module1024_code = await fs.readFile(__dirname + '/shader_module1024.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1024 = await device10.createShaderModule({ label: "shader_module1024", code: shader_module1024_code })
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
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module1025_code = "";
    try {
        shader_module1025_code = await fs.readFile(__dirname + '/shader_module1025.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1025 = await device10.createShaderModule({ label: "shader_module1025", code: shader_module1025_code })
    const array7 = new Float32Array([0.25, -0.5, -0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.75, 0.0, 0.0, -0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -1.0, -1.0, -1.0, -1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.5, -0.25, 0.75, 0.25, -0.75, -0.5, 0.0, -0.5, -1.0, -0.25, 0.0, 0.75, -0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.0, 0.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.25, 0.75, -1.0, -0.5, 1.0, -0.25, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, -1.0, 0.75, -0.75, 0.75, 1.0, -0.25, -0.5, 0.25, 0.25, ]);
    
    var shader_module1026_code = "";
    try {
        shader_module1026_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1026 = await device10.createShaderModule({ label: "shader_module1026", code: shader_module1026_code })
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query100.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    query400.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    buffer500.destroy()
    
    
    
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    
    
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout404]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer104.destroy()
    var shader_module1027_code = "";
    try {
        shader_module1027_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1027 = await device10.createShaderModule({ label: "shader_module1027", code: shader_module1027_code })
    buffer400.destroy()
    query102.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    query102.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
    
    query500.destroy()
    
    query401.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout404]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer106.destroy()
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
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    query103.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    buffer107.destroy()
    render_bundle_encoder102.popDebugGroup();
    
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    query102.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    query103.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    query104.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    query100.destroy()
    
    
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query501.destroy()
    
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query502.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout405]
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module1028_code = "";
    try {
        shader_module1028_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1028 = await device10.createShaderModule({ label: "shader_module1028", code: shader_module1028_code })
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder500.popDebugGroup();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    query500.destroy()
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    query103.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer401.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder401.popDebugGroup();
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    query102.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    device60.destroy();
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device90.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const array8 = new Float32Array([0.75, -0.25, -0.5, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.25, -0.5, 0.75, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, -1.0, 0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.25, -1.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 0.25, -0.75, 0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -1.0, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 0.75, 0.5, 0.75, 0.5, -0.5, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.75, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, -0.75, ]);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    query103.destroy()
    
    query101.destroy()
    
    
    
    
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    query400.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    query501.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    query105.destroy()
    
    
}