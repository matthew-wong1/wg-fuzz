struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 28110u;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: vec3<i32> = vec3<i32>(1i, 85180i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = global2.a;
    let var_1 = u_input.a;
    var var_2 = Struct_1(global1.a, vec3<bool>(global2.b.x, true, (arg_1 & 34157u) != abs(min(1870u, 5090u))), 37216u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(global1.a.x + global2.a.x), _wgslsmith_f_op_f32(-632f * var_0.x)))), global2.b, reverseBits(~global1.c));
    let var_4 = Struct_2(var_3);
    return var_2.b.x;
}

fn func_2() -> Struct_1 {
    global0 = 4294967295u;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1008f, 297f, 609f, 2281f) + vec4<f32>(global2.a.x, global1.a.x, global1.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, global1.a.x, global1.a.x, -2106f)), vec4<bool>(global1.b.x, true, true, global2.b.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -984f, global2.a.x, -139f))))))) + vec4<f32>(1867f, _wgslsmith_f_op_f32(f32(-1f) * -2640f), 1000f, -1606f));
    let var_1 = global2.b.x;
    global0 = ~_wgslsmith_mult_u32(global1.c, ~0u) | global1.c;
    let var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global2.a.x)), global1.a.x, global1.b.x)), 152f, -609f), !vec3<bool>(global2.b.x, false, global1.a.x == 479f), select(global1.c, ~countOneBits(u_input.b), _wgslsmith_f_op_f32(trunc(var_0.x)) >= _wgslsmith_f_op_f32(step(-147f, global2.a.x)))));
    return Struct_1(var_0.xzw, select(!(!var_2.a.b), vec3<bool>(global2.b.x || func_3(global1.c, global2.c, -50327i), true, !(!global1.b.x)), !(!all(global2.b))), global2.c);
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var_0 = true;
    var var_1 = _wgslsmith_div_u32(global1.c, 111551u);
    var var_2 = func_2();
    var_0 = global1.b.x;
    return Struct_2(Struct_1(global2.a, global1.b, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, global1.b, 1u);
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(641f, 1u, global3.x, ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.a.c, var_0.c, global1.c, 0u)), ~(~vec4<u32>(1u, global1.c, 36454u, 84930u))), vec4<i32>(u_input.c >> (4294967295u % 32u), ~1i, ~(-31832i), min(global3.x, -u_input.a)));
}

