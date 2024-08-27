struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-105f)) - 977f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, -705f, 1200f, -1502f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(538f, 811f, -2248f, -911f) - vec4<f32>(-220f, 1000f, -891f, -215f)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.c, 55161u) | vec2<u32>(u_input.c, u_input.c)), vec2<u32>(~u_input.c, u_input.c)), _wgslsmith_f_op_f32(-1f), vec3<f32>(1f, 1f, 1f)), !(any(vec2<bool>(true, true)) | true), vec4<i32>(~25546i, ~1i, 8404i, -u_input.d) | -abs(-vec4<i32>(40664i, u_input.d, -1i, 4701i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(-1000f)))));
    let var_1 = true;
    let var_2 = vec2<i32>(var_0.c.x, u_input.d);
    return vec4<f32>(-563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(143f, -1000f, 311f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1712f, 2703f, 500f), vec3<f32>(-1000f, -520f, -626f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-241f, -525f, -310f), vec3<f32>(-1013f, 992f, 256f), vec3<bool>(arg_1, arg_1, true)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1149f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1491f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1243f, var_0.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(-141f)), 1f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-617f + 1135f), _wgslsmith_f_op_f32(f32(-1f) * -652f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec4_f32(func_3()), firstLeadingBit(countOneBits(~(vec2<u32>(u_input.c, 69418u) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(972f + var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_1.x, -503f), vec3<f32>(1392f, var_0.x, var_0.x), vec3<bool>(true, arg_1, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 511f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 355f, var_0.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 282f), vec3<f32>(-783f, var_0.x, 732f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3()).zyy), all(!vec3<bool>(arg_1, true, arg_1)))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.x - -201f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(486f, 1556f, 1227f, -1567f))), var_2.b), var_2.c << (~vec2<u32>(4294967295u, var_2.c.x) % vec2<u32>(32u)), 487f, var_2.e), ~_wgslsmith_mod_u32(abs(~32049u), ~u_input.c & u_input.c), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, -u_input.b), -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i))), _wgslsmith_clamp_i32(select(i32(-1i) * -7151i, _wgslsmith_mult_i32(arg_0.x, -24812i), var_2.a != var_2.e.x), 0i, _wgslsmith_dot_vec3_i32(max(arg_0, arg_0), _wgslsmith_div_vec3_i32(arg_0, vec3<i32>(arg_0.x, arg_0.x, u_input.d))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(-552f + _wgslsmith_f_op_f32(trunc(505f))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.e.x, var_2.b.x)) + _wgslsmith_f_op_f32(select(622f, var_0.x, arg_1))), _wgslsmith_f_op_f32(-var_0.x), var_1.x), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(106f + 382f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))))));
    var var_4 = Struct_4(!vec3<bool>(arg_1, firstLeadingBit(arg_0.x) >= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), u_input.a), _wgslsmith_f_op_f32(-var_1.x) >= 1797f), vec3<u32>(_wgslsmith_mult_u32(countOneBits(var_2.c.x), ~(~84953u)), ~var_2.c.x, 36169u), !(!select(vec4<bool>(true, arg_1, arg_1, true), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, arg_1)), !vec4<bool>(arg_1, false, arg_1, arg_1))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 131f) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f - var_3.a.b.x) - var_0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(604f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(abs(-522f))) * 1f));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -935f);
    var var_1 = u_input.c;
    var_1 = _wgslsmith_sub_u32(30977u, u_input.c);
    let var_2 = Struct_1(var_0, _wgslsmith_f_op_vec4_f32(func_2(arg_0.zyy, true)), vec2<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 4294967295u, 40007u), vec3<u32>(u_input.c, u_input.c, 65792u), arg_1.x), select(reverseBits(vec3<u32>(u_input.c, 107743u, u_input.c)), vec3<u32>(71280u, u_input.c, 4294967295u), arg_1.x))), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -823f, 994f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, -758f, var_0), vec3<f32>(var_0, 234f, var_0), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1149f, var_0, var_0) * _wgslsmith_div_vec3_f32(vec3<f32>(809f, var_0, var_0), vec3<f32>(1000f, -686f, 1051f))))));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~(22327u & u_input.c), 0u), 0u), vec2<u32>(3331u, countOneBits(u_input.c)));
    return Struct_3(var_2, _wgslsmith_clamp_u32(0u, var_2.c.x, var_2.c.x), -44432i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * _wgslsmith_f_op_f32(var_2.e.x * var_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 2378f, -1000f, var_0) * vec4<f32>(var_2.e.x, var_2.d, -300f, var_0)) * _wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_mod_vec2_u32(reverseBits(var_2.c & var_2.c), var_2.c), _wgslsmith_f_op_f32(var_2.e.x + var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(var_2.b.x, -288f, var_2.a)) - var_2.b.yww)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = Struct_1(func_1(vec4<i32>(firstLeadingBit(reverseBits(u_input.a.x)), -_wgslsmith_sub_i32(arg_1.c, u_input.a.x), u_input.b, ~(-arg_1.c)), !arg_0.c.wxz).d.e.x, vec4<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1515f, 1000f))))), -424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(1664f * arg_1.d.a)) - arg_1.a.d), -748f), ~(~arg_1.d.c), _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_vec3_f32(arg_1.d.e - arg_1.a.e));
    var var_1 = any(arg_0.c.xx);
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 38573i, arg_1.c), vec3<i32>(-2147483647i, 60702i, _wgslsmith_div_i32(-2147483647i, ~1i)));
    var_0 = func_1(_wgslsmith_mult_vec4_i32(abs(~(-vec4<i32>(2147483647i, -2454i, 67905i, 0i))), vec4<i32>(~arg_1.c | _wgslsmith_mult_i32(-22905i, var_2.x), firstTrailingBit(-2147483647i), -1i, abs(-11724i << (1u % 32u)))), select(arg_0.c.yxz, select(arg_0.c.xyy, vec3<bool>(false, arg_0.a.x | true, false), arg_0.c.x), all(arg_0.a.yy))).d;
    return 67316u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(u_input.c, ~countOneBits(1u), abs(u_input.c), func_4(Struct_4(vec3<bool>(false, false, true), vec3<u32>(u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, true, true)), func_1(vec4<i32>(-1i, u_input.b, u_input.a.x, 46314i), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(2176f - -796f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) * _wgslsmith_f_op_f32(abs(1381f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f - _wgslsmith_f_op_f32(step(-597f, 785f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f + 343f)) * -906f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1547f * _wgslsmith_f_op_f32(round(300f)))), _wgslsmith_f_op_f32(-107f * -1084f)), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c >> (45897u % 32u), 1u), abs(var_0.zz)), -1502f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, 898f, -4093f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(firstTrailingBit(reverseBits(11493u >> (0u % 32u))), var_0.x), vec4<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.d, 2147483647i), vec3<i32>(u_input.b, -2147483647i, -11945i)), ~vec3<i32>(u_input.d, u_input.b, 2147483647i)), firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 6430i), u_input.a)), _wgslsmith_add_i32(~_wgslsmith_sub_i32(-2147483647i, -17899i), -16443i), _wgslsmith_div_i32(u_input.b, ~u_input.d) | -(~u_input.d)), u_input.d << (_wgslsmith_add_u32(var_0.x, abs(~1u)) % 32u));
}

