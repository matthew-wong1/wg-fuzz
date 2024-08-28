struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_3,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_5) -> u32 {
    let var_0 = any(!select(select(vec2<bool>(true, arg_3.d), vec2<bool>(arg_3.c.a.b.c.x, arg_3.b.c.a.b.c.x), arg_3.d), vec2<bool>(any(arg_3.c.a.b.c.zx), arg_3.c.a.b.b.x), any(vec2<bool>(true, arg_3.d)) & false));
    let var_1 = abs(arg_3.c.a.a);
    var var_2 = 1000f;
    var var_3 = arg_3;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - arg_2.x), arg_2.x, !select(true, true, false)))));
    return ~arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = any(arg_0.b.b);
    let var_1 = ~func_3(reverseBits(i32(-1i) * -2147483647i), 38280u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1, 379f), 1103f, _wgslsmith_f_op_f32(arg_0.b.d * -205f)) * arg_0.b.a.yzz), Struct_5(arg_0.d.zz, Struct_4(arg_0, vec4<bool>(true, true, false, false), Struct_3(Struct_2(vec4<i32>(-1i, -45279i, 0i, u_input.c), Struct_1(vec4<f32>(arg_1, 1868f, -949f, arg_1), vec3<bool>(false, true, arg_2), vec4<bool>(var_0, true, arg_2, var_0), -1745f, false), vec4<i32>(arg_0.c.x, u_input.c, arg_0.a.x, u_input.c), vec4<u32>(4345u, 4294967295u, 0u, 4294967295u)), arg_0.b.a)), Struct_3(Struct_2(arg_0.c, arg_0.b, vec4<i32>(63611i, 17427i, -42983i, u_input.c), vec4<u32>(u_input.b, u_input.b, u_input.a, arg_0.d.x)), vec4<f32>(-372f, arg_1, arg_1, arg_0.b.d)), true, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.d.x, 58982u, arg_0.d.x), ~arg_0.d.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2053f) - 562f);
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = ~(~arg_0.a);
    let var_1 = Struct_4(arg_0, arg_0.b.c, Struct_3(Struct_2(var_0 ^ (arg_0.c & vec4<i32>(var_0.x, -9043i, -1i, u_input.c)), Struct_1(vec4<f32>(-596f, -831f, arg_0.b.a.x, arg_0.b.d), select(vec3<bool>(true, arg_0.b.b.x, arg_0.b.b.x), vec3<bool>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x), false), arg_0.b.c, _wgslsmith_f_op_f32(func_2(arg_0, -1360f, arg_0.b.e)), false), arg_0.c, firstLeadingBit(max(vec4<u32>(arg_0.d.x, 1u, 46662u, arg_0.d.x), arg_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.a) * vec4<f32>(104f, arg_0.b.d, 998f, arg_0.b.d)) * arg_0.b.a)));
    let var_2 = var_1.c;
    var var_3 = Struct_3(Struct_2(vec4<i32>(~0i & var_1.a.c.x, firstLeadingBit(min(-40118i, arg_0.c.x)), -(~u_input.c), _wgslsmith_mult_i32(firstLeadingBit(-1932i), var_1.a.a.x)), var_1.a.b, arg_0.a, ~(~vec4<u32>(u_input.b, var_2.a.d.x, 11905u, 11955u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(901f, -1000f, var_1.a.b.a.x, 101f), arg_0.b.a, select(var_1.c.a.b.c, vec4<bool>(true, false, true, true), false))))) - vec4<f32>(var_2.a.b.a.x, var_2.b.x, var_2.a.b.d, _wgslsmith_f_op_f32(var_1.a.b.d * -1000f))));
    var_3 = var_1.c;
    return var_2.a.b.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec2<bool>(all(vec2<bool>(true, true)), all(func_1(Struct_2(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), Struct_1(vec4<f32>(553f, -1379f, -482f, -145f), vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), -229f, true), vec4<i32>(-1i, -90621i, 16276i, -2147483647i), vec4<u32>(39152u, u_input.b, 0u, u_input.b))))), vec2<bool>(true, true), any(select(func_1(Struct_2(vec4<i32>(u_input.c, 12147i, -4424i, u_input.c), Struct_1(vec4<f32>(-1000f, 1958f, 760f, -1379f), vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), 1310f, true), vec4<i32>(-1i, 29266i, u_input.c, 1i), vec4<u32>(u_input.b, u_input.b, 4294967295u, 78788u))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    let var_1 = 3870u;
    var_0 = true;
    let var_2 = -_wgslsmith_mult_i32((10594i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_1, 0u), vec4<u32>(1u, 19838u, u_input.a, var_1)) % 32u)) | -(u_input.c & -1i), _wgslsmith_div_i32(-1i, u_input.c));
    var_0 = any(vec3<bool>(true, true, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-150f)), -726f, true)) == 1000f;
    var_0 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), select(false, true, true), all(vec3<bool>(false, true, true)), false), (u_input.c >> (65471u % 32u)) < ~14880i), true == !any(vec2<bool>(true, false))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -110f))));
    let var_4 = select(vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, false), select(select(vec4<bool>(false, false, true, all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, u_input.a < 1u, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, false))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, false, true), false), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(915f, var_3)) - -474f))));
}

