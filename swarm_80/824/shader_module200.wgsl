struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1850f;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(-445f, -410f, 505f, -1239f)), 2147483647i, vec3<i32>(2147483647i, -1i, 1i), -8832i, Struct_1(vec4<f32>(834f, 283f, -306f, 171f))), Struct_2(Struct_1(vec4<f32>(1058f, -199f, 1679f, -519f)), 2147483647i, vec3<i32>(0i, -3572i, -1i), 10871i, Struct_1(vec4<f32>(443f, 671f, 165f, -940f))), vec2<bool>(false, true), false);

var<private> global2: array<Struct_4, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    return global1.b;
}

fn func_3() -> u32 {
    global0 = func_1().a.a.x;
    var var_0 = func_1();
    var var_1 = Struct_3(global1.b, global1.a, vec2<bool>(global1.d, any(select(vec4<bool>(global1.d, false, global1.d, global1.d), select(vec4<bool>(true, true, false, global1.d), vec4<bool>(false, global1.d, false, global1.d), false), select(global1.c.x, global1.c.x, false)))), global1.c.x);
    global2 = array<Struct_4, 14>();
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e.a.x)), 760f, 117f))));
    return _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(countOneBits(~1u), min(u_input.b.x, ~u_input.b.x), ~_wgslsmith_div_u32(~38341u, 52165u), u_input.b.x));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mod_u32(~1u, func_3());
    var var_1 = Struct_3(global1.b, global1.a, vec2<bool>(true, u_input.b.x < _wgslsmith_sub_u32(reverseBits(u_input.b.x), 51219u)), false);
    let var_2 = global1.b.e;
    let var_3 = global1.b.e;
    global2 = array<Struct_4, 14>();
    return !(true | !all(!vec3<bool>(var_1.d, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 14>();
    global1 = Struct_3(func_1(), Struct_2(func_1().e, ~(~(-46401i)), vec3<i32>(global1.b.b, -(-2147483647i >> (u_input.b.x % 32u)), u_input.a), 1i, global1.b.e), global1.c, global1.c.x);
    let var_0 = Struct_3(func_1(), global1.b, !(!vec2<bool>(!global1.d, func_2())), !all(!vec3<bool>(global1.d, true, true)));
    let var_1 = vec2<f32>(var_0.a.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1920f))));
    let var_2 = func_1().e;
    let x = u_input.a;
    s_output = StorageBuffer(44482u | u_input.b.x);
}

