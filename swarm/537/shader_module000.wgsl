struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(!vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), u_input.b.x, Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)))));
    global0 = any(var_0.a.xyx);
    let var_1 = min(vec3<i32>(u_input.b.x, ~var_0.b, var_0.b), u_input.a.zxy);
    var var_2 = vec2<u32>(u_input.c.x, reverseBits(u_input.c.x));
    let var_3 = Struct_1(select(select(!vec2<bool>(var_0.c.a.x, false), vec2<bool>(true, u_input.c.x <= 0u), var_0.c.a), !var_0.a.xx, !(!(!vec2<bool>(var_0.a.x, var_0.d.a.x)))));
    return !(!select(!(!var_0.a), !select(vec4<bool>(var_0.c.a.x, true, false, true), vec4<bool>(false, true, var_0.a.x, true), var_0.a), var_3.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = -1677f;
    let var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(0i), ~arg_2.x, ~max(arg_2.x, u_input.a.x)), firstLeadingBit(~arg_2.www));
    let var_2 = ~u_input.c.ywx;
    global0 = all(vec3<bool>(arg_1.c.a.x, all(!vec2<bool>(true, arg_1.c.a.x)), any(select(select(vec3<bool>(arg_1.c.a.x, true, true), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, false), vec3<bool>(true, false, true)), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, true), !vec3<bool>(arg_1.c.a.x, true, arg_1.c.a.x)))));
    let var_3 = Struct_2(func_3(), -u_input.b.x, arg_1.c, arg_1.c);
    return 18401u;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-398f, arg_0, false)) * _wgslsmith_f_op_f32(1598f * arg_0)))));
    let var_1 = 7709u;
    global0 = arg_1.x;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, ~4294967295u), max(3490u << (func_2(arg_0, Struct_3(vec3<f32>(-1000f, arg_0, arg_0), arg_0, Struct_1(vec2<bool>(arg_1.x, false))), u_input.a) % 32u), ~(var_1 | u_input.c.x))) | ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1, u_input.c.x, 0u, 19053u), u_input.c, false) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 21074u, u_input.c.x, 0u), u_input.c), u_input.c);
    global0 = true;
    return Struct_2(vec4<bool>(true, true, !any(func_3()), arg_1.x), -u_input.b.x, Struct_1(!(!select(arg_1.zy, vec2<bool>(true, false), arg_1.yx))), Struct_1(!vec2<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> f32 {
    global0 = arg_1.a.x;
    global0 = (_wgslsmith_sub_u32(countOneBits(u_input.c.x), reverseBits(u_input.c.x >> (1u % 32u))) > 16300u) || any(arg_1.a.yzz);
    global0 = true;
    global0 = !(!((u_input.b.x & -18130i) <= 39412i));
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-534f, 743f), vec2<f32>(-1434f, -764f)))) * vec2<f32>(1183f, arg_0))))));
    return 2073f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-908f, -1769f, 324f, -439f), vec4<f32>(-756f, -720f, 392f, -1055f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1256f, -1466f, -949f, -1166f)))))) - vec4<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-172f, -1949f)), _wgslsmith_f_op_f32(1871f + 943f)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -108f), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-825f, Struct_2(vec4<bool>(true, false, false, false), u_input.a.x, Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true))))) - -564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(507f, -125f, true)))), _wgslsmith_f_op_f32(-1f)));
    global0 = !(all(vec3<bool>(true, true, true)) && any(vec3<bool>(false, true, false))) && false;
    var var_1 = _wgslsmith_sub_i32(max(u_input.a.x, 5760i), _wgslsmith_dot_vec3_i32(u_input.a.ywz, abs(u_input.a.yxw)));
    global0 = false;
    var_1 = ~func_1(925f, vec3<bool>(true, !(5994u == u_input.c.x), select(false, true, true))).b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(321f)));
    var var_3 = all(func_3().wz);
    let x = u_input.a;
    s_output = StorageBuffer(55007i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(-2012f, Struct_2(vec4<bool>(false, false, false, false), u_input.a.x, Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)))))))));
}

