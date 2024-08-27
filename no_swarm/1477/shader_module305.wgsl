struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(23823i, -7312i, 16952i), Struct_1(vec3<f32>(-1976f, -527f, -310f)));

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(1379f, 702f, 764f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1021f)) + _wgslsmith_f_op_f32(trunc(global0.b.a.x))), -474f, _wgslsmith_f_op_f32(-1081f + global0.b.a.x));
    let var_1 = Struct_2(u_input.a, global2[_wgslsmith_index_u32(u_input.e, 1u)]);
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let var_2 = u_input.e;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f - var_0.x))), var_0.x, -543f));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 1>();
    let var_0 = global0.a.xz;
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_sub_u32(u_input.e, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 38371u), vec2<u32>(4294967295u, 0u))) & u_input.e, 1u));
    return Struct_2(u_input.c, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = true;
    let var_1 = func_2();
    var var_2 = u_input.a.x;
    let var_3 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(24749u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(13854u, u_input.b, var_3, u_input.e), ~vec4<u32>(56380u, 1u, var_3, 1u))), vec2<i32>(u_input.d.x, u_input.a.x));
}

