struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_3;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.b.b)))));
    global0 = 8826u;
    global0 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(global1.a.a.x, u_input.b.x));
    let var_1 = 1u;
    let var_2 = -1331f;
    return _wgslsmith_f_op_f32(f32(-1f) * -419f);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    global0 = ~global1.a.b.d;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2388f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x)) - _wgslsmith_f_op_f32(trunc(arg_1))))));
    var var_0 = -9825i;
    global2 = -1241f;
    var var_1 = Struct_2(((min(vec3<u32>(arg_3.b.a, 4294967295u, arg_3.b.a), u_input.b) << ((vec3<u32>(23530u, global1.a.b.a, 0u) | vec3<u32>(45152u, 1u, u_input.b.x)) % vec3<u32>(32u))) >> (vec3<u32>(~arg_2.a, global1.a.b.d | 18224u, countOneBits(u_input.b.x)) % vec3<u32>(32u))) ^ vec3<u32>(arg_3.a.x >> ((global1.a.b.d ^ 4294967295u) % 32u), _wgslsmith_div_u32(global1.a.b.d, arg_3.b.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(4669u, 74698u, 19693u, 1u), select(vec4<u32>(u_input.b.x, 0u, 51450u, 1u), vec4<u32>(arg_3.a.x, arg_2.d, arg_2.d, 51967u), false))), arg_2, any(select(!vec4<bool>(arg_3.b.c.x, true, false, true), select(vec4<bool>(arg_3.c, false, arg_3.b.c.x, false), !vec4<bool>(true, true, global1.a.b.c.x, arg_3.c), arg_3.b.b == arg_2.b), false)));
    return vec3<bool>(var_1.c, var_1.a.x == ~arg_3.a.x, !(!(arg_3.b.d >= 1u)) && true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    return arg_2.a.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global1.a);
    global0 = min(var_0.a.b.a, 0u);
    let var_1 = func_4(select(func_2(u_input.a, global1.a.b.b, global1.a.b, Struct_2(vec3<u32>(49197u, u_input.b.x, var_0.a.a.x), Struct_1(1u, global1.a.b.b, var_0.a.b.c, 7723u), global1.a.c)), global1.a.b.c, var_0.a.c), Struct_1(4294967295u, _wgslsmith_f_op_f32(-global1.a.b.b), !vec3<bool>(false, global1.a.b.c.x, var_0.a.c), ~(u_input.b.x | u_input.b.x)), var_0) == firstTrailingBit(global1.a.a.x);
    var var_2 = _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(countOneBits(1u), u_input.b.x)), ~4294967295u);
    var_2 = _wgslsmith_add_u32(1u, global1.a.a.x);
    return Struct_1(~(~1u << (~firstTrailingBit(34365u) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.b.b, -322f)) - _wgslsmith_f_op_f32(round(global1.a.b.b))), -578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a.b.b, var_0.a.b.b)))), var_1)), var_0.a.b.c, reverseBits(~_wgslsmith_sub_u32(global1.a.a.x, global1.a.b.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 56793u >> (global1.a.b.d % 32u);
    let var_0 = global1.a;
    let var_1 = Struct_2(vec3<u32>(~var_0.b.a, 0u ^ global1.a.b.a, 1u), func_1(), _wgslsmith_f_op_f32(func_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 32303i, u_input.a.x, 0i)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-305f, _wgslsmith_f_op_f32(global1.a.b.b + var_0.b.b)))));
    let var_2 = -(~abs(u_input.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(~(var_1.b.d ^ 0u), ~reverseBits(119472u)), u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.b.d, var_0.b.d), select(61696u, 51807u, global1.a.b.c.x)), ~countOneBits(var_0.b.a), var_1.a.x), abs(~(86285u ^ var_1.b.a))), 702f);
}

