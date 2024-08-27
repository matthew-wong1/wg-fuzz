struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec4<f32>(195f, arg_2.e.x, arg_0, _wgslsmith_f_op_f32(abs(arg_0))), 1u, vec4<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(66886u, arg_2.b) >> (vec2<u32>(u_input.b.x, arg_2.b) % vec2<u32>(32u))) | vec2<u32>(arg_2.b, arg_2.c.x), ~arg_2.c.zz), ~arg_2.b, ~_wgslsmith_dot_vec2_u32(u_input.a.yz, ~arg_2.c.xw), _wgslsmith_mod_u32(arg_2.b, 26119u)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.wxy) - _wgslsmith_f_op_vec3_f32(exp2(arg_2.a.wyy))));
    var var_1 = !(_wgslsmith_dot_vec4_u32(arg_2.c << (max(vec4<u32>(0u, 14771u, 39530u, u_input.b.x), u_input.d) % vec4<u32>(32u)), vec4<u32>(~1u, 0u, ~1u, _wgslsmith_div_u32(var_0.c.x, arg_2.b))) < ~var_0.b);
    var_1 = any(vec4<bool>(((u_input.c | u_input.c) == (23306i >> (var_0.b % 32u))) & arg_1, any(vec4<bool>(!arg_1, true, true, any(vec3<bool>(var_0.d, var_0.d, var_0.d)))), !var_0.d, all(!(!vec2<bool>(var_0.d, var_0.d)))));
    let var_2 = arg_0;
    var_1 = any(!select(!select(vec2<bool>(false, false), vec2<bool>(var_0.d, true), false), select(!vec2<bool>(false, arg_1), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(arg_1, true), var_0.d), !arg_2.d), false || arg_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f));
}

fn func_2() -> vec4<f32> {
    var var_0 = 25576u;
    var_0 = 4294967295u;
    let var_1 = 640i;
    var_0 = u_input.a.x & u_input.d.x;
    var var_2 = Struct_2(~(_wgslsmith_mult_vec2_u32(vec2<u32>(38282u, 0u), ~u_input.b.yx) | ~vec2<u32>(8194u, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(420f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(658f, true, Struct_1(vec4<f32>(944f, -2064f, -1573f, -1208f), 4294967295u, u_input.d, false, vec3<f32>(-777f, -449f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1648f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f - -892f)) + _wgslsmith_div_f32(-365f, -897f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(214f)), _wgslsmith_f_op_f32(547f * 163f))))), _wgslsmith_f_op_f32(func_3(296f, all(vec2<bool>(true, false)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1000f, 575f, -1150f), vec4<f32>(381f, 427f, -143f, -111f))), u_input.b.x ^ u_input.a.x, ~vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.b.x), any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1118f, 1843f, -1213f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, 118f, 195f, -1939f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 562f, 1419f, 849f))))), _wgslsmith_div_u32(4294967295u >> (u_input.a.x % 32u), ~_wgslsmith_mult_u32(u_input.b.x, u_input.d.x)), _wgslsmith_add_vec4_u32(u_input.d, u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -968f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(320f, 397f)), -1216f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(704f, -1000f, -592f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -412f, 385f))))), !(max(min(var_1, u_input.c), 1i) < firstTrailingBit(0i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1065f, var_2.b.x, var_2.b.x, var_2.c.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 549f, 644f, var_2.c.e.x), vec4<f32>(var_2.c.a.x, var_2.b.x, var_2.b.x, var_2.b.x)))), !select(var_2.d, var_2.c.d, var_2.c.d))) + var_2.c.a));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_dot_vec4_u32(min(reverseBits(u_input.d), ~(~vec4<u32>(u_input.b.x, 3053u, arg_1.b, 77570u))), ~(u_input.d << (_wgslsmith_add_vec4_u32(u_input.d, u_input.d) % vec4<u32>(32u)))), 1u, ~u_input.b.x, _wgslsmith_mod_u32(arg_1.b, u_input.a.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(74706u, 71430u, ~((61427u << (u_input.b.x % 32u)) ^ _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 121943u, u_input.a.x, u_input.a.x))), u_input.d.x), func_4(u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), abs(~u_input.b.x), vec4<u32>(u_input.d.x | 35316u, countOneBits(0u), ~26777u, 22357u), select(select(true, true, true), true, all(vec4<bool>(true, true, false, false))), vec3<f32>(arg_0, -997f, _wgslsmith_div_f32(976f, arg_0))), vec4<i32>(-2147483647i, ~_wgslsmith_div_i32(-248i, u_input.c), -u_input.c >> (u_input.d.x % 32u), min(~u_input.c, u_input.c))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1854f)))));
    var_0 = 1u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * var_2), 216f, _wgslsmith_f_op_f32(min(-305f, -174f)), _wgslsmith_f_op_f32(589f - 821f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-212f, 596f, arg_0, 1987f), vec4<f32>(arg_0, arg_0, 364f, var_2))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1519f - var_2), _wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(select(295f, arg_0, true)), var_2)))), 39126u, _wgslsmith_add_vec4_u32(~u_input.d, u_input.d), true, vec3<f32>(var_2, var_2, 1308f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_3.a.x, -448f, 1820f)) + vec4<f32>(var_3.e.x, 405f, var_3.a.x, arg_0)))), ~18873u, vec4<u32>(u_input.a.x, 1u, _wgslsmith_sub_u32(~(~39253u), max(~1u, firstLeadingBit(u_input.d.x))), ~1u), any(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, var_3.d), var_3.e.x > -691f), !(!vec3<bool>(false, false, var_3.d)), var_3.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.e + var_3.a.xyy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -461f, var_2)))) * var_3.a.yzw));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.x, ~_wgslsmith_dot_vec2_u32(arg_0.c.c.xz, vec2<u32>(1u, u_input.b.x))), vec2<u32>(~(~u_input.b.x), min(min(0u, u_input.a.x), arg_0.a.x >> (10935u % 32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_0.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(func_1(-1041f).a.x, _wgslsmith_f_op_f32(arg_1 * -1000f))), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1257f, -2487f), -140f)), _wgslsmith_f_op_vec4_f32(func_2()).x), arg_0.c.c.x, vec4<u32>(~(~u_input.b.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(3342u, 37329u, 7108u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 44248u))), select(reverseBits(7918u), _wgslsmith_add_u32(u_input.a.x, 0u), arg_1 >= arg_1), ~1u), select(true, (false && arg_0.d) && true, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.b.yzx * arg_0.b.yzx)))), true);
    let var_1 = vec2<bool>(var_0.d, var_0.c.d);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f))) + arg_0.b.x));
    let var_3 = any(!vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -10906i)) > (u_input.c & 0i), ~1u >= max(73747u, u_input.a.x), !any(vec4<bool>(arg_0.d, arg_0.d, var_1.x, true)), !arg_0.d));
    var var_4 = _wgslsmith_f_op_f32(max(-609f, _wgslsmith_f_op_f32(-arg_1)));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) * _wgslsmith_div_f32(-1104f, arg_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(vec2<u32>(0u, 0u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f + 1419f)), _wgslsmith_f_op_f32(round(403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1412f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2247f, 831f)), 2330f)), func_1(_wgslsmith_f_op_f32(-615f - _wgslsmith_f_op_f32(f32(-1f) * -442f))), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), all(vec3<bool>(true, false, true))))), -562f);
    let var_1 = func_5(Struct_2(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 20684u), _wgslsmith_mod_vec2_u32(var_0.c.xw, vec2<u32>(u_input.d.x, var_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * -417f), _wgslsmith_f_op_f32(var_0.e.x * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.e.x, var_0.e.x)) * _wgslsmith_f_op_f32(var_0.e.x - var_0.a.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1223f - var_0.a.x), true, func_1(-1890f)))), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.e.x, var_0.a.x))))), true), 562f);
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(u_input.c, u_input.c)), firstLeadingBit(vec2<i32>(u_input.c, 41756i) ^ vec2<i32>(1i, 2147483647i))), 1i >> (~u_input.b.x % 32u)) & vec2<i32>(u_input.c, -24802i);
    var_0 = var_1;
    var var_3 = var_0.e;
    var_3 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(firstLeadingBit(_wgslsmith_sub_i32(2147483647i, u_input.c)), var_2.x), -1i), _wgslsmith_f_op_vec2_f32(-var_3.yz));
}

