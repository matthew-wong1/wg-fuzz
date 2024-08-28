struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(37206u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 14705u), vec2<u32>(28659u, 79207u));

var<private> global2: vec2<u32> = vec2<u32>(57672u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.xy;
    global1 = array<vec2<u32>, 5>();
    let var_1 = ~u_input.b.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.c.xw), u_input.d.x, var_0.x & 0u) << ((u_input.c.x << (98209u % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-855f)), 776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1154f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1816f, 635f, -1085f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-673f, 385f, -714f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, 1253f, 790f)))), true)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), abs(0u)), 0u, global2.x, ~_wgslsmith_add_u32(global2.x, u_input.d.x)) ^ u_input.d);
}

