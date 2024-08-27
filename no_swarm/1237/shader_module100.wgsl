struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(global0.x, true, global0.x, all(!select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, global0.x, true, true)))), select(!(!vec4<bool>(false, global0.x, true, false)), vec4<bool>(global0.x, true, global0.x, true), true), !select(!(!vec4<bool>(true, false, global0.x, true)), vec4<bool>(global0.x, false && global0.x, global0.x & global0.x, global0.x | true), !select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, false, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(-32202i, _wgslsmith_mod_i32(-66230i, 685i), 0i)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~(~vec2<u32>(1u, 1u)));
}

