struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> vec2<f32> {
    var var_0 = select(true && select(false, arg_0.d, false), all(vec2<bool>(any(vec3<bool>(true, arg_2, true)) || false, false)), false);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1000f, -2249f), arg_0.b.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(704f)), _wgslsmith_f_op_f32(-arg_1.x)) - arg_1.yz), arg_0.b));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(abs(-2147483647i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-246f, 1579f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1115f, -724f)))))), reverseBits(vec3<i32>(1i, 1i, 1i)), !any(vec4<bool>(true, true, true, true)) & select(false, all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), -13168i);
    var var_1 = abs(1u);
    var var_2 = ~u_input.a.x;
    let var_3 = ~(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.e, var_0.a, 44185i, var_0.e), vec4<i32>(var_0.e, var_0.a, var_0.a, var_0.c.x)));
    let var_4 = !select(vec3<bool>(!(-1487f < var_0.b.x), true | (false | var_0.d), all(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(false, false), var_0.d))), !vec3<bool>(true, select(true, false, false), true), true);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-326f, 1000f, var_0.b.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-859f, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1059f, var_0.b.x, -127f), vec3<f32>(1217f, 1105f, 173f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(472f, -253f, _wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x), 1755f))))), select(var_4, !vec3<bool>(!var_4.x, var_4.x, var_4.x), !(!select(vec3<bool>(true, false, var_0.d), vec3<bool>(var_0.d, var_4.x, true), var_4)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(arg_1.b.x + 1000f));
    var var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.a, arg_2.e, -2147483647i, 0i), abs(vec4<i32>(arg_2.c.x, arg_2.e, arg_1.c.x, -6852i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.x, 2147483647i, -56697i, arg_1.e), firstLeadingBit(vec4<i32>(-2147483647i, 0i, -1i, -1i)))) | -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, -66031i, 24531i, arg_1.e)), ~vec4<i32>(arg_2.a, arg_2.e, arg_2.a, arg_1.e)), countOneBits(vec4<i32>(2147483647i, arg_1.e, arg_2.c.x, arg_1.a) >> (vec4<u32>(1u, 0u, 15722u, u_input.a.x) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(-1f)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.b.x) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 391f), vec2<f32>(1281f, arg_0), vec2<bool>(arg_2.d, true)))) * arg_2.b)) + _wgslsmith_f_op_vec2_f32(func_1(Struct_1(~var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.b, arg_2.b)) - _wgslsmith_f_op_vec2_f32(round(arg_1.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, var_1.x), select(arg_2.c, vec3<i32>(2147483647i, var_1.x, var_1.x), vec3<bool>(true, arg_1.d, true)), arg_1.c), true, -1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3()))), any(!vec3<bool>(false, arg_1.d, true)) != all(select(vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(arg_2.d, true), vec2<bool>(false, false))))));
    return all(vec4<bool>(arg_1.d, arg_1.d, false, all(!vec2<bool>(arg_2.d, arg_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-375f, 625f)), 1336f), _wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(1i, vec2<f32>(414f, -1237f), vec3<i32>(-54332i, -18949i, -1i), false, -2624i), _wgslsmith_div_vec3_f32(vec3<f32>(1091f, 356f, -1012f), vec3<f32>(-1305f, 675f, 695f)), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, 387f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 285f))))), func_2(-539f, Struct_1(-19768i, vec2<f32>(1853f, 153f), vec3<i32>(17507i, 23582i, 55481i), true, -30845i), Struct_1(28378i, vec2<f32>(1842f, -207f), vec3<i32>(1i, 2147483647i, 2147483647i), false, 32699i)) & true)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(761f, -214f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-293f, -2143f)))))))));
    var var_1 = Struct_1(abs(countOneBits(2147483647i)), _wgslsmith_f_op_vec2_f32(sign(var_0)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-55133i >> (u_input.a.x % 32u), 1i, 12579i), select(min(vec3<i32>(54096i, 6113i, 0i), vec3<i32>(0i, -45808i, 13723i)), firstTrailingBit(vec3<i32>(-59410i, 2147483647i, 0i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-25910i, -59699i), vec2<i32>(-37226i, 0i)), ~vec2<i32>(30248i, -1i)), 8490i)), false, abs(_wgslsmith_sub_i32(1i, -_wgslsmith_add_i32(-37531i, -1i))));
    var_1 = Struct_1(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(var_1.c.zx, vec2<i32>(var_1.e, 9184i)) ^ ~reverseBits(var_1.a), -1i), var_0, var_1.c, var_1.d, min(~_wgslsmith_mult_i32(-2147483647i, var_1.a), var_1.e));
    var var_2 = Struct_1(-21963i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))), ~(-(~(vec3<i32>(-67370i, var_1.c.x, -1i) ^ var_1.c))), true, min(var_1.c.x, -var_1.c.x ^ -6227i) >> (u_input.a.x % 32u));
    let var_3 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.e), var_1.b.x, vec4<u32>(u_input.a.x, ~(~abs(73096u)), countOneBits(~(~u_input.a.x)), ~_wgslsmith_mult_u32(countOneBits(1u), 4294967295u)), u_input.a.x);
}

