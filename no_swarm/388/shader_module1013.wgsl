struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-292f, 755f, -1529f);

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global1.b;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * -618f)));
    let var_2 = -695f;
    var var_3 = abs(u_input.b << (abs(_wgslsmith_div_vec3_u32(global1.a.b, ~vec3<u32>(global1.c, u_input.e, u_input.e))) % vec3<u32>(32u)));
    let var_4 = 7601i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2, var_1.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d.x, 16425u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(min(u_input.d.yy, vec2<u32>(global1.c, global1.a.b.x)), select(u_input.d.zy, vec2<u32>(0u, 53516u), global1.a.c.xw)), ~u_input.d.zw)), global1.a.b.x, -447f);
}

