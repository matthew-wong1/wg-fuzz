struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-2229f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(119f * -1303f))), _wgslsmith_f_op_f32(abs(-136f))), vec3<f32>(598f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(772f)), 1008f), -908f))), min(u_input.c.yy, (-vec2<i32>(u_input.c.x, 1i) | u_input.c.yz) << (_wgslsmith_mult_vec2_u32(global1.yy << (global1.zz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(6757u, u_input.a.x))) % vec2<u32>(32u))), u_input.c);
}

