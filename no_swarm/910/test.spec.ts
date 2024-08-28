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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.5, 0.75, -0.25, -0.25, -0.5, -0.75, -0.25, -0.5, -1.0, 1.0, -0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, -0.75, -0.25, -0.5, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, -0.25, 0.5, -0.75, 0.75, -1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 0.25, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, 0.75, -1.0, -0.25, 1.0, -0.5, 1.0, 0.75, -0.75, -1.0, 0.75, -0.25, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.5, -0.5, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.25, -0.75, -0.5, 0.25, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device00.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    texture100.destroy();
    device10.destroy();
    const array1 = new Float32Array([-0.75, 0.75, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 0.5, 0.25, -0.25, 0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, -0.5, 0.0, 0.5, 0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 0.5, 0.0, -1.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.0, -0.75, 1.0, -0.75, 0.0, 0.75, -1.0, -0.5, 0.75, 0.75, -0.5, 0.0, -0.25, 1.0, -0.75, -1.0, 0.75, -0.25, -1.0, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.25, -1.0, 1.0, -0.75, 0.25, -0.75, -0.5, 0.0, 0.75, -0.25, -0.75, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, 0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.25, ]);
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.75, 0.5, -0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.0, 0.5, 0.5, -0.5, -1.0, 1.0, 0.25, 0.0, 0.75, 0.5, 0.75, -1.0, -0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, 0.25, -1.0, -0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 0.25, -0.75, 0.5, -0.25, -0.75, 0.75, 0.5, 0.75, ]);
    
    
    
    
    const array3 = new Float32Array([-0.25, 0.0, 0.25, -0.75, 0.5, -0.5, -0.5, -0.75, 0.0, 0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.0, 0.0, -1.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.75, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, -0.5, -0.5, 0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 1.0, 0.5, 0.25, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, 0.0, 1.0, -1.0, 1.0, 1.0, -1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 1.0, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    
    
    const array4 = new Float32Array([1.0, 1.0, -0.75, 1.0, -0.5, 1.0, 1.0, -0.75, -0.5, 0.75, -1.0, 0.25, 0.75, -0.5, 1.0, 1.0, -0.5, -0.25, 0.25, 0.0, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.75, -0.75, 0.75, 0.5, -0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -1.0, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, 1.0, -1.0, 0.75, 0.5, -0.75, 0.25, -0.5, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 0.75, 0.75, 0.0, 0.0, 0.75, 0.0, 0.0, 0.75, -0.25, 0.75, 0.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.5, -0.25, -0.25, -0.5, 0.0, -0.5, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 0.0, 0.5, 0.25, 1.0, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, 0.25, -0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -0.25, -0.5, 0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 0.75, 0.5, -0.5, -0.25, 1.0, -0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, 0.75, 0.75, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, 1.0, 1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.25, 0.75, 0.25, -0.5, 1.0, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.75, 0.75, 0.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, -1.0, 0.5, -0.25, -0.25, -1.0, -1.0, 0.5, 0.0, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 0.0, 0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.0, -0.75, 1.0, 0.75, 0.75, -1.0, 0.75, -0.25, -0.5, -0.25, 0.25, 1.0, 0.0, -0.75, 0.75, 0.25, -0.5, -0.5, 1.0, -0.25, -0.75, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, -1.0, -0.75, 1.0, -0.75, 1.0, -0.5, -0.75, -0.5, ]);
    
    
    
    
    
    
    
    
    const array7 = new Float32Array([0.75, -1.0, -0.25, -1.0, 1.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 0.5, 0.25, -0.75, -0.75, 0.25, 0.75, -0.25, -0.25, 0.75, 1.0, 0.25, 0.0, 0.25, 0.25, -0.5, 0.0, 0.25, -0.5, -1.0, 0.5, -1.0, 0.75, -1.0, 0.0, -1.0, -0.5, 1.0, -0.25, 0.75, 0.5, 0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 0.25, -0.25, 0.75, -1.0, 0.5, 0.25, -0.5, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 1.0, -1.0, 0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.0, -0.75, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, 0.5, 1.0, 0.25, 1.0, -1.0, 0.75, -0.25, -1.0, ]);
    
    
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.pushErrorScope("internal");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    device50.destroy();
    
    
    const array8 = new Float32Array([-0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 0.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.0, 1.0, 0.75, 0.0, 0.25, -1.0, 0.0, -0.5, -0.5, -1.0, 1.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.25, -0.75, -0.25, 0.5, 0.25, -0.75, 0.0, 1.0, -0.5, -0.25, -1.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.5, -0.75, 0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.0, 0.0, -0.25, -0.25, 0.0, -0.75, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 0.75, 0.75, -0.5, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([0.5, 0.5, 0.75, -0.25, -0.5, -0.5, -0.5, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, -1.0, 1.0, 0.75, 0.75, 0.0, 1.0, -0.5, 0.0, -1.0, 0.25, -0.25, -1.0, 1.0, -0.75, 1.0, -1.0, 0.5, 0.5, 0.25, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.25, 0.5, -0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -0.5, -0.25, 0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.75, 0.5, 0.75, 1.0, 0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.25, 0.5, -1.0, 0.25, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array10 = new Float32Array([0.5, -0.25, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, -1.0, 0.75, -1.0, -0.25, 0.5, -1.0, -0.5, -0.25, 1.0, -1.0, 0.0, 0.25, -1.0, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, -0.75, 0.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, -0.75, 1.0, -0.5, -0.25, 0.25, -1.0, 0.0, -0.75, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, -0.75, 0.75, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, -0.75, 0.75, -0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.75, 0.75, 0.5, 0.0, -0.75, 0.5, -0.5, -0.5, 0.5, -0.5, 0.0, -1.0, 0.75, -1.0, -0.75, 0.0, ]);
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    query600.destroy()
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    buffer600.destroy()
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture602.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
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
    const array11 = new Float32Array([0.75, -0.75, -0.75, -0.25, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -0.75, -0.75, 1.0, 0.75, 0.25, 0.5, 0.25, 0.25, 1.0, 0.5, 0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.75, 1.0, 0.0, -0.25, -0.5, 0.5, -0.75, 0.0, 1.0, -1.0, 0.5, -0.25, -1.0, -1.0, -0.25, -0.5, 0.75, -0.75, 0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 1.0, -1.0, 0.5, -0.25, 1.0, 0.25, 0.25, 0.75, -0.5, 0.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.5, 0.75, -0.25, 0.25, 0.0, 1.0, -0.75, 0.5, 0.75, -0.25, 0.25, -0.75, 0.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.75, -0.5, 0.75, 0.0, 0.5, 0.5, ]);
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.pushErrorScope("validation");
    
    
    query600.destroy()
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    
    
    
    
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    texture603.destroy();
    
    
    texture601.destroy();
    
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const array12 = new Float32Array([0.75, -0.75, 0.5, 0.5, -0.75, 0.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.0, 0.75, -0.25, -0.5, 0.25, -0.5, 0.25, 0.5, -0.25, 0.25, 0.5, 0.25, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, 0.0, 1.0, 0.0, -0.75, 0.75, 0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, -1.0, -0.25, 0.0, 0.0, 0.75, -0.5, 1.0, 0.0, 0.75, 0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.75, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 0.0, 0.5, 0.5, 0.5, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, -1.0, -1.0, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, ]);
    texture600.destroy();
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
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const array13 = new Float32Array([-0.25, 1.0, 1.0, 0.75, 0.0, 0.5, 0.0, -0.25, -0.25, 0.5, -0.25, -0.5, -1.0, -0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -1.0, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, 1.0, -0.25, -0.5, 1.0, 0.0, -1.0, 0.0, 1.0, 0.25, 0.25, 0.75, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 1.0, -0.75, -0.5, -0.25, 0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.5, 0.75, -1.0, -0.25, -0.5, 0.75, -0.25, -0.5, -0.5, -0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.25, 1.0, -0.5, -0.5, -1.0, 0.75, 0.0, 0.25, 0.75, 0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 0.75, ]);
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    device60.pushErrorScope("validation");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array14 = new Float32Array([-0.75, 0.0, 0.5, -0.5, -0.75, 0.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.5, 0.25, 0.0, -0.75, -0.75, 1.0, -1.0, 0.0, -1.0, -0.25, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, 0.75, 1.0, 0.5, -0.25, 0.25, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.25, 0.0, -1.0, -0.75, 0.25, 0.5, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, 0.25, 0.75, 0.5, -0.75, 0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.5, 0.25, 0.75, 0.25, 0.25, 0.0, -0.75, -1.0, 0.75, 1.0, 1.0, 0.5, 0.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -1.0, 0.0, ]);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    query601.destroy()
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    query600.destroy()
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query601
    });
    
    render_pass_encoder6000.executeBundles([])
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query602.destroy()
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout604,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout606,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout607,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6012,
            },
        ],
        occlusionQuerySet: query602
    });
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout601,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setPipeline(render_pipeline603);
    
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder6010.setPipeline(render_pipeline603);
    render_pass_encoder6000.setStencilReference(1);
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout603,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    query600.destroy()
    
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout601,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout601,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout602,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout603,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const compute_pipeline6046 = device60.createComputePipeline({
        label: "compute_pipeline6046",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const compute_pipeline6047 = device60.createComputePipeline({
        label: "compute_pipeline6047",
        layout: pipeline_layout607,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6048 = device60.createComputePipeline({
        label: "compute_pipeline6048",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6049 = device60.createComputePipeline({
        label: "compute_pipeline6049",
        layout: pipeline_layout602,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6050 = device60.createComputePipeline({
        label: "compute_pipeline6050",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6051 = device60.createComputePipeline({
        label: "compute_pipeline6051",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6052 = device60.createComputePipeline({
        label: "compute_pipeline6052",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    const compute_pipeline6053 = device60.createComputePipeline({
        label: "compute_pipeline6053",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6054 = device60.createComputePipeline({
        label: "compute_pipeline6054",
        layout: pipeline_layout607,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6055 = device60.createComputePipeline({
        label: "compute_pipeline6055",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6056 = device60.createComputePipeline({
        label: "compute_pipeline6056",
        layout: pipeline_layout606,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline6057 = device60.createComputePipeline({
        label: "compute_pipeline6057",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline6058 = device60.createComputePipeline({
        label: "compute_pipeline6058",
        layout: pipeline_layout600,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline6059 = device60.createComputePipeline({
        label: "compute_pipeline6059",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline6060 = device60.createComputePipeline({
        label: "compute_pipeline6060",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.insertDebugMarker("marker");
    const compute_pipeline6061 = device60.createComputePipeline({
        label: "compute_pipeline6061",
        layout: pipeline_layout601,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6012,
            },
        ],
        occlusionQuerySet: query601
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module601,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module601,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline6062 = device60.createComputePipeline({
        label: "compute_pipeline6062",
        layout: pipeline_layout605,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6063 = device60.createComputePipeline({
        label: "compute_pipeline6063",
        layout: pipeline_layout601,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder6020.setStencilReference(1);
    const compute_pipeline6064 = device60.createComputePipeline({
        label: "compute_pipeline6064",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6065 = device60.createComputePipeline({
        label: "compute_pipeline6065",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6066 = device60.createComputePipeline({
        label: "compute_pipeline6066",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6067 = device60.createComputePipeline({
        label: "compute_pipeline6067",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    const compute_pipeline6068 = device60.createComputePipeline({
        label: "compute_pipeline6068",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6069 = device60.createComputePipeline({
        label: "compute_pipeline6069",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setStencilReference(1);
    render_pass_encoder6020.setStencilReference(1);
    const compute_pipeline6070 = device60.createComputePipeline({
        label: "compute_pipeline6070",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query602.destroy()
    const compute_pipeline6071 = device60.createComputePipeline({
        label: "compute_pipeline6071",
        layout: pipeline_layout604,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline6072 = device60.createComputePipeline({
        label: "compute_pipeline6072",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout602]
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const array15 = new Float32Array([-0.25, 0.25, 0.75, 0.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 0.25, 1.0, 0.75, -0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 0.75, 1.0, 0.0, 1.0, 0.0, 0.75, -0.75, 0.25, 0.5, -0.25, -0.25, -1.0, 1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, 0.75, -1.0, -1.0, -0.25, 0.0, 0.0, 0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.75, 0.5, -0.25, -0.25, 0.25, -1.0, 0.75, -0.25, -0.75, -0.75, -0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, 1.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.0, -0.75, -0.5, ]);
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const compute_pipeline6073 = device60.createComputePipeline({
        label: "compute_pipeline6073",
        layout: pipeline_layout602,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const pipeline_layout6014 = device60.createPipelineLayout({ 
        label: "pipeline_layout6014",
        bindGroupLayouts: [bind_group_layout603]
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6074 = device60.createComputePipeline({
        label: "compute_pipeline6074",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const pipeline_layout6015 = device60.createPipelineLayout({ 
        label: "pipeline_layout6015",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6075 = device60.createComputePipeline({
        label: "compute_pipeline6075",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline6076 = device60.createComputePipeline({
        label: "compute_pipeline6076",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline6077 = device60.createComputePipeline({
        label: "compute_pipeline6077",
        layout: pipeline_layout604,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    query604.destroy()
    render_pass_encoder6020.setPipeline(render_pipeline600);
    const compute_pipeline6078 = device60.createComputePipeline({
        label: "compute_pipeline6078",
        layout: pipeline_layout609,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6012,
            },
        ],
        occlusionQuerySet: query602
    });
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group600);
    const compute_pipeline6079 = device60.createComputePipeline({
        label: "compute_pipeline6079",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6080 = device60.createComputePipeline({
        label: "compute_pipeline6080",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline6081 = device60.createComputePipeline({
        label: "compute_pipeline6081",
        layout: pipeline_layout6013,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6082 = device60.createComputePipeline({
        label: "compute_pipeline6082",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout6016 = device60.createPipelineLayout({ 
        label: "pipeline_layout6016",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6083 = device60.createComputePipeline({
        label: "compute_pipeline6083",
        layout: pipeline_layout607,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6084 = device60.createComputePipeline({
        label: "compute_pipeline6084",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6085 = device60.createComputePipeline({
        label: "compute_pipeline6085",
        layout: pipeline_layout609,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pipeline6086 = device60.createComputePipeline({
        label: "compute_pipeline6086",
        layout: pipeline_layout602,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6087 = device60.createComputePipeline({
        label: "compute_pipeline6087",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const compute_pipeline6088 = device60.createComputePipeline({
        label: "compute_pipeline6088",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6089 = device60.createComputePipeline({
        label: "compute_pipeline6089",
        layout: pipeline_layout609,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6090 = device60.createComputePipeline({
        label: "compute_pipeline6090",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6091 = device60.createComputePipeline({
        label: "compute_pipeline6091",
        layout: pipeline_layout6014,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline6092 = device60.createComputePipeline({
        label: "compute_pipeline6092",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6093 = device60.createComputePipeline({
        label: "compute_pipeline6093",
        layout: pipeline_layout607,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline6094 = device60.createComputePipeline({
        label: "compute_pipeline6094",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.setStencilReference(1);
    const compute_pipeline6095 = device60.createComputePipeline({
        label: "compute_pipeline6095",
        layout: pipeline_layout6015,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6096 = device60.createComputePipeline({
        label: "compute_pipeline6096",
        layout: pipeline_layout604,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module604,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module604,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group601);
    render_pass_encoder6020.setStencilReference(1);
    const compute_pipeline6097 = device60.createComputePipeline({
        label: "compute_pipeline6097",
        layout: pipeline_layout6013,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline6098 = device60.createComputePipeline({
        label: "compute_pipeline6098",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setPipeline(render_pipeline604);
    const compute_pipeline6099 = device60.createComputePipeline({
        label: "compute_pipeline6099",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline60100 = device60.createComputePipeline({
        label: "compute_pipeline60100",
        layout: pipeline_layout602,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline60101 = device60.createComputePipeline({
        label: "compute_pipeline60101",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60102 = device60.createComputePipeline({
        label: "compute_pipeline60102",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline60103 = device60.createComputePipeline({
        label: "compute_pipeline60103",
        layout: pipeline_layout606,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    query600.destroy()
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline60104 = device60.createComputePipeline({
        label: "compute_pipeline60104",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    const compute_pipeline60105 = device60.createComputePipeline({
        label: "compute_pipeline60105",
        layout: pipeline_layout605,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline60106 = device60.createComputePipeline({
        label: "compute_pipeline60106",
        layout: pipeline_layout606,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60107 = device60.createComputePipeline({
        label: "compute_pipeline60107",
        layout: pipeline_layout6014,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const compute_pipeline60108 = device60.createComputePipeline({
        label: "compute_pipeline60108",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline60109 = device60.createComputePipeline({
        label: "compute_pipeline60109",
        layout: pipeline_layout607,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline60110 = device60.createComputePipeline({
        label: "compute_pipeline60110",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline60111 = device60.createComputePipeline({
        label: "compute_pipeline60111",
        layout: pipeline_layout603,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6000.pushDebugGroup("group_marker");
    query605.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const compute_pipeline60112 = device60.createComputePipeline({
        label: "compute_pipeline60112",
        layout: pipeline_layout609,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const pipeline_layout6017 = device60.createPipelineLayout({ 
        label: "pipeline_layout6017",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline60113 = device60.createComputePipeline({
        label: "compute_pipeline60113",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline60114 = device60.createComputePipeline({
        label: "compute_pipeline60114",
        layout: pipeline_layout605,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60115 = device60.createComputePipeline({
        label: "compute_pipeline60115",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline60116 = device60.createComputePipeline({
        label: "compute_pipeline60116",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline60117 = device60.createComputePipeline({
        label: "compute_pipeline60117",
        layout: pipeline_layout609,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline60118 = device60.createComputePipeline({
        label: "compute_pipeline60118",
        layout: pipeline_layout6013,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline60119 = device60.createComputePipeline({
        label: "compute_pipeline60119",
        layout: pipeline_layout603,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder6020.pushDebugGroup("group_marker");
    const compute_pipeline60120 = device60.createComputePipeline({
        label: "compute_pipeline60120",
        layout: pipeline_layout6014,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
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
    const compute_pipeline60121 = device60.createComputePipeline({
        label: "compute_pipeline60121",
        layout: pipeline_layout6017,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.popDebugGroup();
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group602);
    render_pass_encoder6020.popDebugGroup();
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group603);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}