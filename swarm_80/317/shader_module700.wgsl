struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(i32(-2147483648), 36330i), vec2<i32>(25232i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-108388i, 773i), vec2<i32>(1i, 1i), vec2<i32>(9675i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(2696i, -7871i), vec2<i32>(-30643i, 36511i), vec2<i32>(2147483647i, -1i), vec2<i32>(29758i, i32(-2147483648)), vec2<i32>(-1i, -51654i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(77988i, 14207i), vec2<i32>(-19212i, 2147483647i), vec2<i32>(i32(-2147483648), 24453i), vec2<i32>(-9602i, -66234i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 3130i), vec2<i32>(38884i, -23009i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -24854i), vec2<i32>(-45132i, 36447i), vec2<i32>(22702i, -1i), vec2<i32>(-42828i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -21579i), vec2<i32>(3452i, 19039i), vec2<i32>(0i, 17443i), vec2<i32>(0i, -1i), vec2<i32>(1i, -1i));

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 6>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_2(false), !(!vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(70359u, 11u)], false, global0[_wgslsmith_index_u32(u_input.a, 11u)], true)), false, true, true)));
    var var_1 = vec4<i32>(reverseBits(1i), -(~(~(-1i))), _wgslsmith_mult_i32(~_wgslsmith_add_i32(54532i, -1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 26389i), global1[_wgslsmith_index_u32(u_input.a, 31u)] ^ vec2<i32>(2147483647i, 0i))) & 1i, -26480i);
    let var_2 = vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(1u, 4294967295u, u_input.a), min(vec3<u32>(85131u, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, u_input.a)))), 4294967295u, 38118u);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    global2 = _wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x)), _wgslsmith_f_op_f32(round(-1000f))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2489f)), _wgslsmith_f_op_f32(floor(var_3.x))));
}

fn func_2() -> vec4<u32> {
    global0 = array<bool, 11>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3()), -407f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-233f)), _wgslsmith_f_op_f32(f32(-1f) * -1677f)))))), vec4<u32>(~(~u_input.a), ~u_input.a, 4294967295u, 1u) ^ ~select(firstLeadingBit(vec4<u32>(35906u, u_input.a, 0u, 31659u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, 5834u), global0[_wgslsmith_index_u32(u_input.a, 11u)]), firstTrailingBit(~(~vec3<i32>(-34838i, 2147483647i, 2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(669f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(692f * 222f), _wgslsmith_f_op_f32(sign(794f))))), -1331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f), 430f)), vec2<bool>(true, true));
    let var_1 = var_0.a.x;
    global2 = _wgslsmith_f_op_f32(-var_1);
    let var_2 = true;
    return var_0.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~(~arg_1.b.x) ^ ~arg_0.x, 31u)];
    var var_1 = _wgslsmith_div_vec2_i32(select(firstLeadingBit(_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(arg_0.x, 31u)], vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<i32>(arg_1.c.x, var_0.x))), abs(vec2<i32>(var_0.x, var_0.x)), !select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true), vec2<bool>(true, false), arg_1.e)), ~reverseBits(-vec2<i32>(var_0.x, arg_1.c.x))) & min(global1[_wgslsmith_index_u32(min(arg_1.b.x & ~arg_1.b.x, _wgslsmith_mult_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.x, arg_1.b.x, 1u), vec4<u32>(4294967295u, arg_0.x, arg_1.b.x, 4294967295u)))), 31u)], global1[_wgslsmith_index_u32(~1u, 31u)]);
    global2 = -735f;
    var_0 = arg_1.c.zy;
    var var_2 = (~abs(_wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(arg_1.b.x, 31u)], vec2<i32>(-41274i, arg_1.c.x))) & arg_1.c.xx) << ((arg_0.xy | vec2<u32>(_wgslsmith_add_u32(arg_1.b.x | u_input.a, ~4294967295u), 17084u)) % vec2<u32>(32u));
    return arg_1.b;
}

fn func_1() -> Struct_2 {
    global3 = array<vec4<f32>, 6>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(681f + 664f), _wgslsmith_f_op_f32(abs(-515f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1957f), _wgslsmith_f_op_f32(-1230f * 1296f)), ~func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 50368u, 18546u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)) & func_2(), Struct_1(vec3<f32>(1f, 1f, 1f), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), min(vec3<i32>(2147483647i, -1i, 45396i), vec3<i32>(-17089i, -13274i, 42476i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, 592f, 327f)), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(51041u, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(26797u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * 573f))), vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(abs(~global1[_wgslsmith_index_u32(u_input.a, 31u)]), -global1[_wgslsmith_index_u32(u_input.a, 31u)] | vec2<i32>(-2147483647i, -8488i)), abs(-_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-278f)), _wgslsmith_f_op_f32(select(625f, -443f, global0[_wgslsmith_index_u32(1u, 11u)]))), -1375f, 1000f)), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a, 11u)] & (~0u < _wgslsmith_clamp_u32(u_input.a, 32102u, u_input.a)), all(select(vec4<bool>(global0[_wgslsmith_index_u32(15766u, 11u)], false, global0[_wgslsmith_index_u32(42604u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 11u)], false, true, true), false | global0[_wgslsmith_index_u32(22246u, 11u)]))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(min(func_4(var_0.b << (var_0.b % vec4<u32>(32u)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -592f)).x, _wgslsmith_dot_vec2_u32(select(var_0.b.yz, var_0.b.zw, var_0.e), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 38404u), vec2<u32>(var_0.b.x, 0u)))), 16066u), 7850u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 12223u), 18117u), var_0.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, -738f) + var_0.d))), _wgslsmith_f_op_vec3_f32(abs(var_0.d))));
    var var_3 = func_4(var_0.b, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -433f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - -148f), _wgslsmith_f_op_f32(-var_2.x)))).x < _wgslsmith_mult_u32(1u, ~min(~u_input.a, u_input.a));
    return Struct_2(-(~(-16588i) << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u)) == var_0.c.x);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> StorageBuffer {
    global2 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1))))) + 1000f), arg_1));
    let var_1 = arg_0.a.a;
    global3 = array<vec4<f32>, 6>();
    global1 = array<vec2<i32>, 31>();
    return StorageBuffer(arg_1, vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 13641i, -36013i, -6763i), vec4<i32>(-2147483647i, 22667i, -33061i, 40811i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 39828i, -1735i), vec4<i32>(-1i, 9637i, -19682i, 39509i)))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-10534i, 32409i, 0i), firstTrailingBit(48053i)), reverseBits(2147483647i))), min(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(33337i, 0i, -1i), vec3<i32>(-1i, 1i, 0i)), vec3<i32>(1i, -18357i, 1i)), max(vec3<i32>(1i, -8902i, 0i), vec3<i32>(3469i, 46550i, -47211i)) << (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, 12647u, 38937u)), vec3<u32>(u_input.a, 0u, 0u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_3(func_1(), select(select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 11u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 11u)], true, global0[_wgslsmith_index_u32(1u, 11u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)], true, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(100974u, 11u)], global0[_wgslsmith_index_u32(26220u, 11u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]))), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 11u)], true || global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], any(vec3<bool>(global0[_wgslsmith_index_u32(55883u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], false))), !(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a, 11u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(889f + -628f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1045f)))), 1u);
}

