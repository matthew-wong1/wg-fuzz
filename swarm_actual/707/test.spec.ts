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
    const array0 = new Float32Array([1.0, 0.5, -1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.5, -1.0, -0.5, 0.5, 0.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.25, -0.75, 0.25, 0.75, -0.5, -0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 0.25, -0.25, 1.0, 0.75, 0.75, -1.0, -0.5, -1.0, -0.25, -1.0, 0.5, -0.5, 1.0, 0.5, 1.0, 0.5, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.0, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.25, 1.0, 0.75, -0.75, -0.75, 0.75, 0.75, 0.0, 0.25, -1.0, 0.5, 1.0, 0.75, 0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 0.0, ]);
    const array1 = new Float32Array([-0.5, 0.25, -0.25, -0.75, 0.25, -0.5, -1.0, 0.75, 0.5, 1.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 0.25, 0.75, -0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, 0.75, -1.0, 0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, 0.5, 0.5, -0.25, 0.25, 0.25, -1.0, 1.0, 0.0, -0.5, 1.0, -0.25, 0.0, 0.75, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, -0.5, -0.75, -0.5, -0.75, -0.5, 0.75, 0.25, 0.75, -0.75, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, 1.0, -0.25, -0.5, ]);
    
    const array2 = new Float32Array([0.0, 0.25, -0.5, 1.0, -0.75, -0.75, 0.25, -0.75, -0.5, -0.75, -0.75, -0.25, 0.5, -0.5, 1.0, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, -0.75, 0.25, -0.5, 0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.0, 0.75, 0.5, -0.5, 1.0, 0.75, -0.75, -0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.5, 0.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, -0.25, ]);
    
    const array3 = new Float32Array([-0.75, -0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, -0.5, -0.75, -1.0, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.0, 0.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.5, -0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, 0.25, -0.25, 0.25, -0.75, 0.75, 0.25, 0.5, -0.75, -1.0, 0.25, 0.75, -0.75, -0.25, -0.5, -1.0, -0.75, -0.5, -1.0, 1.0, -0.75, -0.5, 1.0, 0.25, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 0.0, 0.5, 1.0, -0.75, 0.5, ]);
    const array4 = new Float32Array([-0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 0.75, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, -0.25, -0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.75, 0.5, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, 0.75, -0.5, -0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 0.75, -1.0, -0.75, 0.25, -0.25, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, -0.75, -0.75, -0.5, -0.75, 1.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -1.0, -0.25, 0.25, 0.5, -0.25, 1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.5, -0.75, -0.75, -1.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, -0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([0.75, 0.25, -0.75, -0.25, -0.25, -0.5, 1.0, -0.25, 0.25, -0.75, 0.5, 0.5, -0.75, 0.25, 0.0, -1.0, 0.25, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, 0.0, 0.0, 0.0, -0.5, 1.0, 1.0, -0.25, 0.0, -0.75, 0.25, 0.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.5, -0.25, 0.25, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.5, -1.0, -0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, 0.5, ]);
    
    const array6 = new Float32Array([-1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.25, -0.75, 0.5, -0.5, 0.25, 0.75, -0.5, 0.75, -1.0, -1.0, 0.25, 1.0, -1.0, -0.75, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -1.0, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 1.0, 1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, -0.25, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, 0.75, -1.0, 0.0, 0.5, 0.0, -0.5, -0.75, 0.5, -0.75, -0.25, -0.75, -0.5, -0.75, 0.0, 0.25, -0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 1.0, 0.5, -1.0, 0.5, -0.25, -0.5, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.25, 0.75, -0.25, -1.0, 0.5, 0.5, -0.75, -1.0, 0.0, -0.5, ]);
    const array7 = new Float32Array([0.5, 0.25, -0.75, -1.0, -0.5, -0.5, 0.75, -0.5, -0.5, -0.25, -0.25, 1.0, 0.0, 1.0, 0.0, 0.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 0.5, 0.75, -0.25, 0.0, -0.5, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, -1.0, 0.5, -0.25, -0.25, 1.0, -0.75, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, -0.75, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 1.0, 0.0, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const array8 = new Float32Array([0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -0.5, -0.5, 0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -1.0, 0.5, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, 0.25, 0.25, 0.75, 0.5, -1.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.0, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 1.0, -1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, 1.0, 0.5, -0.25, 0.0, -1.0, -0.75, -0.5, 0.25, 0.0, -1.0, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, 0.0, 0.25, -0.5, 0.25, 0.25, -0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const array9 = new Float32Array([0.75, 0.75, 0.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.75, 0.25, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, 0.5, 1.0, 0.75, 1.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, 0.75, 0.25, 0.0, -0.75, 0.75, 0.5, 0.75, -0.25, -0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, -1.0, -0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 0.75, 0.75, -0.75, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 1.0, 0.25, 0.25, -0.25, -0.5, 0.0, 0.0, -1.0, 1.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array10 = new Float32Array([-0.25, -0.25, -0.75, 1.0, -0.5, 1.0, 1.0, -0.75, 1.0, 0.0, -0.75, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, 0.75, 1.0, 0.75, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, -0.25, 0.25, -0.5, -0.25, -1.0, -0.5, 0.25, 0.25, 0.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.0, -0.25, 0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.25, 1.0, 0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 0.75, -0.75, -1.0, -0.75, -0.25, 0.75, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.5, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const array11 = new Float32Array([0.0, 0.25, 0.0, 1.0, -0.75, -0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.5, 0.25, -0.25, 0.75, 0.5, -0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -0.75, -0.75, -0.5, 0.5, 0.75, 0.5, 0.25, -0.75, -1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 0.0, 1.0, 0.0, 0.75, -0.5, 1.0, 0.75, -0.5, -0.5, 1.0, 0.0, 1.0, 1.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.75, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 0.0, 0.25, 0.25, -0.25, -0.75, -1.0, -0.25, -0.25, -0.5, -0.75, -1.0, -0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -1.0, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    texture000.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    const array12 = new Float32Array([0.75, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.25, -1.0, 0.5, -1.0, 0.5, -0.75, -0.5, -0.75, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 0.5, -0.25, -0.75, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -1.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.0, 0.5, -0.5, -1.0, -0.5, -0.25, -0.5, -1.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.5, 0.5, 0.75, 0.5, -0.75, -0.5, -0.5, 1.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.5, 1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -0.75, -0.75, 0.25, 0.5, -0.75, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.0, 0.5, -0.25, -0.25, -1.0, 0.5, 1.0, ]);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture201.destroy();
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    texture002.destroy();
    const array13 = new Float32Array([-0.75, 0.25, -0.25, -0.5, -0.5, -0.75, -0.5, 0.25, 1.0, 0.25, -0.5, -0.75, 0.25, 0.0, -0.5, 0.5, 1.0, 0.25, -0.5, 0.25, 0.75, 0.75, -1.0, 0.0, 0.5, 1.0, 0.0, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, -1.0, 0.5, 0.75, 0.75, -0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, -0.5, -0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 0.25, -0.5, 1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.25, 0.0, -0.5, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 0.0, 0.25, -0.75, 0.75, -0.75, -0.75, 0.0, -0.5, ]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
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
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    texture301.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture100.destroy();
    const sampler009 = device00.createSampler( { label: "sampler009" } );
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    
    texture003.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array14 = new Float32Array([-1.0, -0.25, 0.0, -1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, -0.75, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, 1.0, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, 0.25, -0.75, 0.0, -0.75, -0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.25, 1.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, 0.0, -0.25, -0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 1.0, -0.5, -0.75, 0.75, -0.75, 0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.75, 0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, -1.0, -0.5, 1.0, 0.0, -1.0, -0.25, 0.25, -0.25, 0.5, -0.25, 0.25, ]);
    
    texture303.destroy();
    const array15 = new Float32Array([1.0, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.25, 1.0, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, 0.75, 0.25, -0.75, -0.25, 0.75, -0.5, -1.0, 0.0, -0.5, 0.25, -0.5, -0.25, -0.5, 1.0, 0.0, -0.5, 0.0, 0.75, -1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.75, 0.25, -0.25, -1.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.5, 0.75, 0.5, 1.0, 0.5, -0.75, 0.25, -0.25, 0.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, 0.5, -0.25, 0.75, -1.0, -1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -1.0, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
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
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    texture400.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const array16 = new Float32Array([-1.0, 0.5, 0.75, 1.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 0.5, 1.0, 0.0, -1.0, 0.25, -0.75, -1.0, 0.5, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.25, 1.0, 0.25, -0.25, 1.0, -0.25, 0.5, -0.75, -0.25, -0.5, -0.75, 1.0, 1.0, -0.25, 0.75, -0.5, 0.25, -0.25, -1.0, -0.25, -0.75, -1.0, -0.75, -0.5, -0.75, -0.25, 0.75, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, -0.5, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, 0.0, 0.25, 0.25, -1.0, -0.25, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
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
    texture004.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture300.destroy();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    texture401.destroy();
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
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    texture101.destroy();
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const texture_view3043 = texture304.createView({ label: "texture_view3043" });
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    texture305.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    const array17 = new Float32Array([1.0, -0.5, 1.0, 0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.75, -1.0, 0.0, 0.5, 1.0, 1.0, -0.5, -0.75, 0.25, -0.5, -0.75, 0.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 0.0, -0.75, 1.0, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, -0.75, -0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.5, -1.0, 0.0, 1.0, 0.0, 1.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.5, 1.0, -0.5, -1.0, -0.25, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, 0.0, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.5, -1.0, 0.75, 0.5, 0.25, 0.75, -0.75, 0.5, -0.25, 0.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -1.0, 0.25, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout004]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    texture501.destroy();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    texture602.destroy();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
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
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array18 = new Float32Array([0.75, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, -0.25, 0.0, 0.75, 0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.0, -0.5, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, 0.5, 0.0, 0.0, 0.75, 0.75, 0.0, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 0.75, -0.25, 0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.25, -0.5, 0.25, -1.0, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, -1.0, -0.75, 0.25, 0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 1.0, -0.75, -1.0, -1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.5, -1.0, -0.75, -1.0, 0.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
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
    texture005.destroy();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    texture500.destroy();
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    texture304.destroy();
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture601.destroy();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout604]
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    texture307.destroy();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    texture007.destroy();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture_view6031 = texture603.createView({ label: "texture_view6031" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture308.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout003]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    texture603.destroy();
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout604]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    texture800.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    texture306.destroy();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    texture102.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout604]
    });
    const array19 = new Float32Array([0.25, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 0.75, 1.0, -0.5, 1.0, -0.25, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -0.5, 0.5, -1.0, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -1.0, 1.0, 0.25, 1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, 1.0, -1.0, -1.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.5, 0.25, 0.75, -0.5, 0.0, -1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 0.0, 0.25, 1.0, 0.0, 1.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 1.0, 0.5, 0.0, ]);
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout604]
    });
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    texture502.destroy();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    texture403.destroy();
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout006]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout604]
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
    const texture_view30100 = texture3010.createView({ label: "texture_view30100" });
}