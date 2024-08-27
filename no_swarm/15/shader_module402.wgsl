struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = Struct_1(true);
    var var_1 = Struct_3(Struct_1(var_0.a), u_input.a, Struct_1(var_0.a), arg_1.d);
    var_1 = arg_1;
    let var_2 = arg_1;
    global0 = ~countOneBits(select(-1i, min(i32(-1i) * -1i, ~2147483647i), select(u_input.a.x, u_input.a.x, false) <= _wgslsmith_mult_u32(arg_1.b.x, var_2.b.x)));
    return vec2<u32>(~arg_1.b.x, (reverseBits(var_2.b.x) & ~4294967295u) ^ var_1.b.x) | abs(_wgslsmith_sub_vec2_u32(select(~var_2.b.ww, ~var_1.b.xx, true), vec2<u32>(u_input.a.x, 0u)));
}

fn func_2() -> vec4<u32> {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(1u, reverseBits(4294967295u))), u_input.a.zw, ~func_3(49602i, Struct_3(Struct_1(false), u_input.a, Struct_1(true), true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(-1092f - -1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f * 303f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-291f, 169f))) * vec2<f32>(-1562f, 1000f)))), vec4<bool>(true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true)), u_input.b.x < u_input.b.x, (~34885i == min(u_input.b.x, u_input.b.x)) | true), Struct_1(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))));
    global0 = 1i;
    var var_2 = vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)))) * -507f), var_1.a.x, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_2.x) * _wgslsmith_f_op_f32(round(-1232f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_2.x))) * var_2.x));
    return ~u_input.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2() ^ _wgslsmith_add_vec4_u32(vec4<u32>(func_3(-2147483647i, Struct_3(Struct_1(false), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(false), false)).x & 1u, 2300u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.a.yx), u_input.c.x)), firstLeadingBit(u_input.c));
    let var_1 = false;
    var var_2 = ~(~(_wgslsmith_add_u32(~var_0.x, ~4294967295u) >> ((1u | (var_0.x ^ var_0.x)) % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -147f, arg_0) - vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(921f, 511f, 550f))))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(1049f * -1353f), all(vec3<bool>(true, var_1, true)))), _wgslsmith_f_op_f32(min(arg_0, -718f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1256f + 104f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2083f + 1000f)))), 1179f), vec3<bool>(false, var_1, true)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yy) * vec2<f32>(-267f, 538f))) - vec2<f32>(-2016f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-571f, 1083f)))), !select(!vec4<bool>(var_1, var_1, var_1, false), !vec4<bool>(false, true, var_1, true), vec4<bool>(true | var_1, true, u_input.b.x == 29907i, var_1)), Struct_1(var_1));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    let var_0 = arg_1.b.xx;
    var var_1 = arg_1.b.wwz;
    let var_2 = func_1(arg_0.x).c;
    let var_3 = u_input.b.x;
    let var_4 = Struct_1(!(!(var_0.x & true) & var_1.x));
    return !any(select(arg_1.b.xw, func_1(-936f).b.xx, select(!var_0, func_1(arg_1.a.x).b.zz, func_1(arg_1.a.x).b.wy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (true && (false | func_4(vec3<f32>(2395f, -227f, -1790f), func_1(2146f)))) & (!select(false, true, true) & true);
    var var_1 = vec3<i32>(u_input.b.x, -(~2147483647i), -2147483647i);
    global0 = select(~1i, ~var_1.x, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1882f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1293f - _wgslsmith_f_op_f32(floor(-1456f))), -1106f, true))));
    let var_4 = func_1(651f).b.xw;
    let var_5 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, -1505f)))).c;
    var var_6 = vec3<bool>(!(!var_5.a & var_0) && all(!select(var_4, var_4, var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1152f - _wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)))) == 216f, false);
    var_6 = vec3<bool>(false, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c.zx), 22439i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-974f, _wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(var_3.x - var_3.x))))), _wgslsmith_mod_u32(~(~func_3(-64005i, Struct_3(Struct_1(true), u_input.c, var_5, var_4.x)).x), u_input.c.x), vec3<u32>(1u, 1u, select(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(13419u, u_input.a.x), u_input.a.yy), !(!var_0))));
}

