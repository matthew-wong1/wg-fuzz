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
    const array0 = new Float32Array([-1.0, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -0.25, -0.5, -1.0, 0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 1.0, -0.5, -0.75, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, 0.0, -0.75, -1.0, 0.0, 0.25, 0.5, 0.0, -0.75, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.75, -0.75, 0.75, -0.25, 1.0, -0.25, 0.0, 0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, ]);
    
    const array1 = new Float32Array([0.25, 0.75, 0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -0.5, -0.25, 1.0, -0.5, -0.25, 0.25, 0.25, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, 0.5, 1.0, -0.25, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.5, -0.25, 0.25, -0.5, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.25, -0.25, 0.5, -1.0, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, 0.75, -0.75, 0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 0.5, 1.0, 0.0, -1.0, 1.0, -1.0, 0.5, 0.75, -0.75, -0.25, 0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.0, 0.5, -0.75, 0.5, ]);
    const array2 = new Float32Array([0.0, -0.5, 0.5, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, 0.5, 1.0, 0.0, 0.5, 0.25, 0.5, 0.0, 0.0, -1.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, -0.5, -0.25, -0.75, 0.5, 0.5, 0.0, 0.5, -1.0, 0.5, 0.25, -1.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.5, 0.75, 0.5, 0.5, 0.25, 0.75, 0.25, 0.5, -0.5, 1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.75, 0.25, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, 0.5, 0.75, 1.0, 0.25, 0.75, -1.0, 0.25, 1.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 0.5, -0.75, 0.75, ]);
    
    
    
    
    
    
    
    const array3 = new Float32Array([1.0, -0.5, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 0.0, -1.0, 0.5, 0.5, 0.25, -0.75, -0.5, -0.5, -0.75, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, 0.0, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, 0.5, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.25, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, 0.75, 0.75, -0.5, -0.5, -1.0, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.0, 0.5, 0.25, 0.25, -1.0, -0.75, 0.25, 0.5, 0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -0.5, -0.5, -0.25, -0.5, 1.0, -1.0, -0.75, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, 0.5, ]);
    
    
    
    const array4 = new Float32Array([0.5, -0.25, -1.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.75, -0.25, -0.5, 0.25, 0.0, 0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 0.25, 0.5, 0.25, -0.25, 0.75, -0.75, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, -1.0, -0.5, -1.0, 0.0, 0.0, 0.75, 0.75, -0.75, 0.25, 1.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.5, 1.0, 1.0, 1.0, -1.0, -0.25, 1.0, -1.0, -0.5, 0.5, -0.75, 1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, -0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 0.0, -0.5, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array5 = new Float32Array([0.0, 1.0, 0.5, -1.0, 0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.75, -0.5, 0.5, -0.5, -0.75, 1.0, -1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.25, 1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 1.0, 0.75, 0.75, 0.0, 0.0, -0.75, 0.25, -0.75, 0.25, -1.0, -1.0, 0.5, 0.75, 0.5, -0.25, 0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 0.5, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.75, 0.0, 0.5, 0.25, -1.0, 0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, 0.0, 1.0, -0.75, -0.5, -0.75, 0.5, ]);
    const array6 = new Float32Array([1.0, -0.25, -0.25, 0.5, 0.25, -0.75, -0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.5, -0.5, 0.5, 1.0, 0.5, 0.75, 0.0, 1.0, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 0.75, 1.0, -0.25, -0.25, -0.5, -0.5, -0.25, -0.75, 0.75, 0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, -1.0, -0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 0.0, -0.75, -0.25, 0.25, -0.5, 0.5, 1.0, 0.25, 0.0, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -0.75, -0.25, -0.75, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.25, 0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array7 = new Float32Array([-0.75, -0.75, -1.0, 1.0, 0.75, -0.25, 0.25, 0.5, 0.5, -1.0, -0.25, -0.25, -0.5, -0.25, 1.0, 0.5, 0.0, -0.25, -1.0, -0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -0.5, 0.75, 0.25, 0.25, 0.0, 0.0, 0.75, 0.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.0, 0.0, -1.0, 0.0, -0.25, 0.25, 0.25, -0.5, -0.75, -1.0, -0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, 0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, -0.25, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 0.5, 0.75, 0.75, -0.75, 0.25, 0.25, -0.25, 1.0, -0.5, -0.75, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 0.5, 0.5, -1.0, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.25, 0.25, 0.25, 1.0, 0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.0, 1.0, 0.75, 0.25, -0.25, 1.0, -0.25, 0.25, 0.0, -0.25, 0.75, 0.75, 0.5, -0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, 0.0, 0.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, -1.0, 0.75, -1.0, 0.25, -0.5, -0.75, -0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, -0.75, 0.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.5, -0.25, -0.5, ]);
    
    
    
    device20.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
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
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer700.destroy()
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array9 = new Float32Array([1.0, 0.25, -0.25, 1.0, 1.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.5, -1.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.25, -0.75, 0.25, 0.5, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 1.0, 0.5, 0.5, 1.0, -0.5, 0.0, -1.0, 0.5, 0.5, 0.0, -0.5, 0.0, 0.25, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, -0.75, 0.75, -0.75, -0.25, 0.75, 1.0, 0.75, 0.75, 0.75, -0.75, -0.5, 0.0, -0.75, 0.5, -0.25, -0.25, 0.75, 0.75, -1.0, 1.0, -0.25, 1.0, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, ]);
    device40.pushErrorScope("out-of-memory");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array10 = new Float32Array([0.5, 0.0, -0.75, 0.0, 0.25, 1.0, -0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -1.0, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.5, 0.75, 0.75, 1.0, 0.5, 1.0, 0.75, 0.0, -0.75, -0.25, -0.5, 0.75, -1.0, -0.25, 1.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.75, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -0.75, -0.75, -1.0, 0.75, 0.0, 0.0, -0.5, 1.0, 0.25, -0.75, -0.25, 0.5, -0.5, 1.0, -0.25, 0.5, 0.25, -0.25, -0.25, -0.25, -0.5, 0.25, 1.0, -0.25, -0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, -1.0, 0.75, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, -0.5, -0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.0, -0.75, -0.5, 1.0, 1.0, 1.0, ]);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    texture800.destroy();
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
    
    
    texture801.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder801.insertDebugMarker("mymarker");
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
    command_encoder800.insertDebugMarker("mymarker");
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const array11 = new Float32Array([-0.75, 0.0, -0.75, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.25, -0.5, 0.25, 0.75, -0.25, 0.0, 0.5, -0.5, -0.75, 0.0, 0.5, 0.75, 0.0, -0.25, 0.0, 0.5, 0.0, 0.0, -1.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.75, 1.0, -0.25, -1.0, 0.0, 1.0, -0.75, -0.25, 0.25, -0.25, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.25, 0.5, -1.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.0, 0.25, -1.0, 0.25, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.75, 0.25, 1.0, -1.0, -0.25, -0.25, 1.0, -1.0, -1.0, ]);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    device70.pushErrorScope("validation");
    render_pass_encoder4000.executeBundles([])
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    
    query700.destroy()
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const command_buffer800 = command_encoder800.finish();
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    buffer800.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    command_encoder701.popDebugGroup()
    render_pass_encoder4000.beginOcclusionQuery(0)
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.setPipeline(render_pipeline502);
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder501.setPipeline(render_pipeline503);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    texture802.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer700 = command_encoder700.finish();
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder4000.setStencilReference(1);
    
    
    const command_buffer701 = command_encoder701.finish();
    const array12 = new Float32Array([1.0, 0.75, -1.0, -0.75, 0.5, -1.0, -1.0, 1.0, 0.5, 0.25, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, -1.0, -1.0, 0.75, 0.5, -0.25, -1.0, -1.0, -0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.75, -0.5, -0.75, -0.25, 1.0, 0.5, 0.5, 0.25, -0.5, -0.75, 0.75, 1.0, -0.25, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, 0.0, 1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.75, 1.0, -1.0, 1.0, 0.5, ]);
    query502.destroy()
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query700.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4000.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder702.insertDebugMarker("mymarker");
    compute_pass_encoder5010.popDebugGroup()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture402 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    query500.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    device50.pushErrorScope("validation");
    buffer400.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query500.destroy()
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder8010.popDebugGroup()
    command_encoder600.insertDebugMarker("mymarker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
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
    render_pass_encoder4000.setStencilReference(1);
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
    render_pass_encoder4000.endOcclusionQuery()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    query501.destroy()
    texture700.destroy();
    buffer502.destroy()
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture803.destroy();
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder4000.executeBundles([])
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    device70.queue.writeTexture({ texture: texture701 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    command_encoder702.insertDebugMarker("mymarker");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder702.copyBufferToTexture(
        {
            buffer: buffer701
        },
        {
            texture: texture701
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer503.destroy()
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer701.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    command_encoder502.insertDebugMarker("mymarker");
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder8010.setPipeline(compute_pipeline800);
    render_pass_encoder4000.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.pushErrorScope("validation");
    const command_buffer802 = command_encoder802.finish();
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
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
    compute_pass_encoder5000.popDebugGroup()
    texture500.destroy();
    
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture402.destroy();
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    texture401.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    texture400.destroy();
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    const render_pass_encoder8030 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array13 = new Float32Array([0.25, 0.5, 0.0, -1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.25, 1.0, -1.0, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, 0.75, 1.0, -0.25, 0.75, -1.0, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, -1.0, 0.0, -0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 0.5, 0.5, 0.5, -0.5, 0.5, 0.0, -0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 0.0, 0.0, 1.0, 0.5, 0.5, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.75, -0.25, -1.0, -0.75, 0.25, ]);
    buffer101.destroy()
    texture701.destroy();
    
    
    render_pass_encoder8030.setStencilReference(1);
    const command_buffer702 = command_encoder702.finish();
    buffer401.destroy()
    buffer504.destroy()
    const command_buffer804 = command_encoder804.finish();
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder8030.setStencilReference(1);
    device70.pushErrorScope("out-of-memory");
    texture600.destroy();
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
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
    
    compute_pass_encoder5000.dispatchWorkgroups(100);
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    render_bundle_encoder502.setVertexBuffer(0, buffer500);
    const command_buffer503 = command_encoder503.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
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
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group800);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    buffer802.destroy()
    const array14 = new Float32Array([-1.0, 0.25, -0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.5, 0.5, -0.25, 0.0, 0.75, 0.75, 0.25, 0.25, 0.0, 0.0, -0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, -1.0, -1.0, 0.5, -0.25, 1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, 1.0, -0.5, 1.0, 0.25, 0.75, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, 0.5, -0.25, -0.5, 1.0, -1.0, -0.75, -0.75, 1.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.25, 0.25, 0.75, 0.25, -0.75, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    device50.pushErrorScope("out-of-memory");
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    
    buffer501.destroy()
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.setPipeline(compute_pipeline502);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group502);
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.executeBundles([])
    
    buffer505.destroy()
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder8030.setStencilReference(1);
    
    
    render_pass_encoder8030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder8030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    query503.destroy()
    texture101.destroy();
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    
    render_pass_encoder8030.pushDebugGroup("group_marker");
    
    device80.pushErrorScope("validation");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder504.pushDebugGroup("mygroupmarker")
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder800.popDebugGroup();
    query400.destroy()
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group503);
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder8010.insertDebugMarker("marker")
    
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer803, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer803, 0);
    compute_pass_encoder5000.end();
    const command_buffer805 = command_encoder805.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.popDebugGroup()
    render_pass_encoder8030.popDebugGroup();
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group504);
    device50.queue.submit([command_buffer503, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group505);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device80.queue.submit([command_buffer804, command_buffer805, ]);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5020.end();
    command_encoder504.popDebugGroup()
    command_encoder502.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8010.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5010.end();
    compute_pass_encoder8010.end();
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    const command_buffer801 = command_encoder801.finish();
    const command_buffer501 = command_encoder501.finish();
}