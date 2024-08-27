struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.e;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.e)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e, 153f))) + -181f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(960f - arg_1.e)))))));
    let var_2 = Struct_4(177f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(338f, arg_1.e) * vec2<f32>(arg_1.e, 176f)), vec2<f32>(arg_1.e, arg_1.e)))))));
    let var_3 = ~10913u;
    var var_4 = Struct_1(0u, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_div_i32(-56126i, -1i)), arg_0.x, any(vec3<bool>(false, all(vec4<bool>(arg_1.d, arg_1.d, arg_1.d, arg_1.d)), arg_1.b >= 70008i)) == any(!vec4<bool>(arg_1.d, arg_1.d, arg_1.d, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e)))));
    return var_4.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_2(0u, firstTrailingBit(arg_0.a << (~_wgslsmith_sub_u32(7249u, arg_0.a) % 32u)));
    var_0 = Struct_2(var_0.b, var_0.a);
    var var_1 = Struct_4(arg_2, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1606f, -267f, !arg_0.d)) + arg_2), _wgslsmith_f_op_f32(-arg_2)));
    var_0 = Struct_2(abs(3971u), _wgslsmith_div_u32(reverseBits(arg_0.a), _wgslsmith_mod_u32(var_0.a, reverseBits(24218u)) >> (~(4294967295u | arg_0.a) % 32u)));
    var_0 = Struct_2(_wgslsmith_sub_u32(~(~(~75835u)), max(_wgslsmith_clamp_u32(1u, 1u, var_0.a & 19228u), var_0.a)), var_0.a);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, var_1.b.x, 241f) - vec3<f32>(-1639f, 221f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(floor(-1094f)))))), vec3<f32>(_wgslsmith_f_op_f32(802f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -685f)))), arg_3.x, _wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(281f, 715f)))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1638f))))), 1183f);
    var var_1 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), -799f);
    let var_2 = Struct_1(27232u, u_input.a.x, min(i32(-1i) * -1i, u_input.a.x), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))));
    var var_3 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(~(~min(arg_2.b, 1u)), _wgslsmith_sub_i32(14660i, ~_wgslsmith_add_i32(-1i, 0i)), -func_3(vec2<i32>(u_input.a.x, -2147483647i) & vec2<i32>(var_2.c, -51887i), var_2), (var_0.c <= _wgslsmith_f_op_f32(round(var_1.b))) & !(!var_2.d), 1f), all(vec4<bool>(1000f < var_1.b, arg_1, 0u > firstLeadingBit(arg_2.a), false)), -145f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-725f, 1925f), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(616f - 182f), 598f, all(vec4<bool>(true, false, false, true)))), 661f), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), !(var_2.d & arg_1))))));
    var_1 = Struct_3(Struct_2(~arg_0, var_1.a.a), 1812f, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(floor(var_0.c))));
    return all(vec3<bool>(-1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e + var_2.e)), !(!(arg_1 && false)), arg_1));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1679f, arg_0.b)) - arg_0.c), arg_1.b);
    let var_1 = vec4<bool>(true, all(!vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, false)))), func_2(1u, all(vec2<bool>(true, true)), arg_0.a), arg_0.a.b < ~(~(~35868u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(-1000f, -1642f))))))));
    var var_3 = arg_0.a;
    var var_4 = 580f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(~(~27686u)), abs(-(-u_input.a.x & firstLeadingBit(u_input.a.x))), 1i | ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, -1i), 2147483647i), func_1(Struct_3(Struct_2(_wgslsmith_div_u32(914u, 4294967295u), 1u), -751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-424f, -698f)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -550f))), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(542f))) - _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.e, -1000f), var_0.e))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(step(-1449f, 923f))))));
    var var_2 = select(!var_0.d, true, !(!any(vec2<bool>(var_0.d, true)) | var_0.d));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, 385f, var_0.d)) - _wgslsmith_f_op_f32(max(-1112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))));
    var var_4 = Struct_3(Struct_2(~var_0.a, var_0.a), -1096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - var_1.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e + 187f)))));
    let var_5 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a - var_0.e), -271f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_0.e), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(var_4.a.a, u_input.a.x, 0i, false, 730f), var_0.e != var_1.b.x, _wgslsmith_f_op_f32(max(var_4.c, var_1.a)), vec2<f32>(831f, var_1.b.x))).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.x, 406f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(237f, var_1.b.x), var_1.b)) * var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.c, abs(~0i << (var_4.a.b % 32u)), u_input.a.x), var_4.c, var_4.b, vec3<i32>(-7807i, -max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-30493i, var_0.c, u_input.a.x))), u_input.a.x));
}

