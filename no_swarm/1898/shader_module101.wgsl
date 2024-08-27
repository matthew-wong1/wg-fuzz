struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(51817u, firstLeadingBit(arg_0), ~(-(~vec4<i32>(arg_0, 0i, 0i, 1i)) | -select(vec4<i32>(u_input.c.x, arg_0, 220i, u_input.c.x), vec4<i32>(u_input.b, arg_0, 20673i, 1i), false)), 1f);
    let var_1 = ~(-17157i);
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = Struct_1(abs(var_0.a), var_2.b, var_2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + var_2.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - 614f), _wgslsmith_f_op_f32(f32(-1f) * -593f))) + var_0.d));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.d, 2101f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1150f, var_2.d), vec2<f32>(var_3.d, 2751f), true)), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1088f, var_2.d))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1006f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, var_0.d))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, 927f)));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-2147483647i, vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1882f, -293f)))))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, reverseBits(~(~1i)), _wgslsmith_clamp_i32(1i, u_input.b, u_input.b), -2147483647i), firstLeadingBit(-vec4<i32>(u_input.b, u_input.b, -1i, -2147483647i)) ^ min(countOneBits(vec4<i32>(0i, u_input.b, 1i, u_input.b)), (vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -1i) & vec4<i32>(-2147483647i, 2147483647i, u_input.b, 9036i)) >> (~u_input.d % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -620f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(903f, var_0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(560f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + -1042f))) - _wgslsmith_f_op_f32(f32(-1f) * -1495f))));
    var var_3 = min(vec4<i32>(~_wgslsmith_sub_i32(1i, 2147483647i), 1i, u_input.c.x, abs(-max(u_input.b, 2147483647i))), ~(~var_1));
    var var_4 = Struct_1(~_wgslsmith_clamp_u32(~35197u, select(~u_input.d.x, 4294967295u, true), u_input.a.x), abs(~var_1.x | _wgslsmith_sub_i32(-var_3.x, abs(u_input.b))), vec4<i32>(var_1.x | select(-1i, u_input.b, true), -1i, -32837i << (_wgslsmith_clamp_u32(u_input.d.x, ~u_input.d.x, 4294967295u) % 32u), ~0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_2.x * 185f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-1736f, -1641f)))))));
    return _wgslsmith_clamp_vec4_i32(var_4.c & vec4<i32>(_wgslsmith_sub_i32(var_4.b, var_1.x), u_input.b, i32(-1i) * -1i, ~var_3.x), (vec4<i32>(-1i) * -var_1) << (u_input.d % vec4<u32>(32u)), ~abs(-vec4<i32>(u_input.c.x, 36725i, -15570i, -17269i))) | ~abs(vec4<i32>(u_input.b, var_4.b, -2147483647i, 2289i) & -vec4<i32>(4985i, var_1.x, 0i, -2147483647i));
}

fn func_1() -> vec4<i32> {
    var var_0 = -abs(-func_2());
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.b >> (u_input.a.x % 32u), -1i, -21208i, var_0.x), reverseBits(func_2()));
    var_0 = -(vec4<i32>(-10262i, -8737i >> (~u_input.a.x % 32u), firstLeadingBit(var_0.x) ^ _wgslsmith_sub_i32(u_input.c.x, 0i), 2147483647i >> ((42629u ^ u_input.a.x) % 32u)) << (u_input.d % vec4<u32>(32u)));
    var_0 = func_2();
    var var_1 = u_input.d.zyy;
    return (-(~vec4<i32>(-9873i, u_input.b, var_0.x, u_input.c.x)) & ~select(vec4<i32>(-52889i, u_input.c.x, 9616i, u_input.b) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-31749i, -12428i, 46011i, -2147483647i), vec4<i32>(var_0.x, u_input.b, var_0.x, -1i)), vec4<bool>(false, true, false, true))) << (u_input.d % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -2147483647i;
    let var_2 = u_input.d.x;
    var var_3 = Struct_1(~var_2, ~1i, vec4<i32>(var_1, ~var_1, 27237i, select(u_input.b, 20630i, true)) & func_1(), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(447f, 152f))), _wgslsmith_f_op_f32(-790f - _wgslsmith_div_f32(-270f, 266f)), select(!var_0, false, !var_0))))));
    let var_4 = 2147483647i;
    var_3 = Struct_1(var_3.a, ~var_4, max(vec4<i32>(reverseBits(1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 2662i), abs(vec2<i32>(var_3.b, var_1))), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), var_1)), func_2()), var_3.d);
    let var_5 = firstTrailingBit(~var_4);
    let var_6 = Struct_1(min(_wgslsmith_clamp_u32(~21371u, _wgslsmith_dot_vec4_u32(vec4<u32>(10948u, u_input.d.x, 0u, var_2) >> (vec4<u32>(21927u, var_3.a, 26113u, 36451u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_3.a, u_input.d.x, 0u, 41102u))), _wgslsmith_clamp_u32(u_input.a.x, ~var_2, _wgslsmith_dot_vec3_u32(u_input.d.yzz, vec3<u32>(1u, var_3.a, 19930u)))), max(firstLeadingBit(34245u), var_2)), -1i, _wgslsmith_mult_vec4_i32(var_3.c, abs(_wgslsmith_div_vec4_i32(var_3.c, ~var_3.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-914f * var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, firstLeadingBit(var_2)), vec3<u32>(1u, _wgslsmith_add_u32((var_3.a >> (var_6.a % 32u)) >> (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u), u_input.a.x), ~u_input.a.x));
}

