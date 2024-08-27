struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-149f, -143f);

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 2>;

var<private> global3: array<vec4<bool>, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global0 = array<f32, 2>();
    let var_0 = Struct_3(Struct_2(all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(28497u, 2u)], true), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 2u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(21256u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)])))), global2[_wgslsmith_index_u32(~47463u, 2u)]), Struct_1(any(vec4<bool>(true, !global2[_wgslsmith_index_u32(17273u, 2u)], global2[_wgslsmith_index_u32(76600u, 2u)] || true, false)), ~u_input.a == u_input.a), vec2<u32>(34449u, _wgslsmith_mult_u32(abs(reverseBits(u_input.a)), _wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(0u, u_input.a)))));
    var var_1 = true;
    var var_2 = 4294967295u;
    var var_3 = -149f;
    return select(global3[_wgslsmith_index_u32(0u, 7u)], !vec4<bool>(all(!global3[_wgslsmith_index_u32(1u, 7u)]), false || var_0.b.b, select(!var_0.b.b, var_0.a.a, all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], var_0.a.a, false, true))), false), global3[_wgslsmith_index_u32(0u, 7u)]);
}

fn func_2() -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -636f, 1682f), vec4<f32>(-627f, -1019f, 159f, 1000f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(191f, global0[_wgslsmith_index_u32(0u, 2u)], 2010f, global0[_wgslsmith_index_u32(51796u, 2u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(20215u, 2u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1044f, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(49779u, 2u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 755f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1457f, 188f, global0[_wgslsmith_index_u32(0u, 2u)], 1174f))))))), vec2<u32>(~firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a), Struct_2(u_input.a <= ~max(u_input.a, u_input.a), true && (true || (global2[_wgslsmith_index_u32(4294967295u, 2u)] && global2[_wgslsmith_index_u32(u_input.a, 2u)]))), func_3(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.x, u_input.b), global1.x)));
    let var_1 = vec4<bool>(!all(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 2u)], var_0.d.x), var_0.d.yyz, !vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 2u)], false, global2[_wgslsmith_index_u32(u_input.a, 2u)]))), !(global0[_wgslsmith_index_u32(u_input.a, 2u)] > -1210f), !(!(!(!global2[_wgslsmith_index_u32(u_input.a, 2u)]))), -109f > _wgslsmith_div_f32(-1615f, var_0.a.x));
    global1 = ~max(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, -1i, 48133i), vec3<i32>(-12223i, u_input.c, u_input.c)), ~vec3<i32>(global1.x, -1i, -32646i)), vec3<i32>(-25684i, -17456i, max(u_input.b, 2147483647i))), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, -2147483647i) ^ vec3<i32>(global1.x, -1i, 49607i), _wgslsmith_add_vec3_i32(vec3<i32>(-14277i, global1.x, global1.x), vec3<i32>(global1.x, -32147i, 2147483647i)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x * global0[_wgslsmith_index_u32(32716u, 2u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1510f * global0[_wgslsmith_index_u32(12487u, 2u)]))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, 531f, global0[_wgslsmith_index_u32(22325u, 2u)], -752f) - arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 180f, arg_1.x, -286f) * arg_1), 2147483647i == global1.x)) - arg_2)), reverseBits(vec2<u32>(0u, ~(~u_input.a))), Struct_2(!arg_0, any(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 54568u), vec2<u32>(18974u, u_input.a)), 7u)])), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(min(1u, u_input.a), u_input.a ^ 53648u), 7u)]);
    let var_1 = vec4<u32>(4294967295u, min(124384u, _wgslsmith_mult_u32(firstLeadingBit(18356u), var_0.b.x)), 1u | (8572u ^ (abs(u_input.a) << (1u % 32u))), ~u_input.a);
    global3 = array<vec4<bool>, 7>();
    var var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(floor(arg_2.x)) <= var_0.a.x, false, !((true | all(vec2<bool>(false, false))) & select(arg_0, all(var_0.d.xww), false)));
    var var_3 = Struct_4(var_0.a, ~var_0.b, var_0.c, !vec4<bool>(abs(u_input.b) >= max(-14304i, 8022i), func_3(_wgslsmith_clamp_i32(u_input.c, u_input.b, 1i)).x, !arg_0, !(!arg_0)));
    return Struct_2(false, var_2.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(true, global2[_wgslsmith_index_u32(~u_input.a, 2u)]);
    var var_1 = func_4(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 1210f, global0[_wgslsmith_index_u32(0u, 2u)], 873f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, global0[_wgslsmith_index_u32(u_input.a, 2u)], 252f, global0[_wgslsmith_index_u32(u_input.a, 2u)]))))), vec4<f32>(-1189f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 2u)] * _wgslsmith_f_op_f32(func_2())), 131f, -653f));
    let var_2 = Struct_3(Struct_2(false, !all(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(arg_0, var_0.b), var_0.a))), Struct_1(var_0.a, !var_1.a), reverseBits(vec2<u32>(_wgslsmith_add_u32(reverseBits(4294967295u), u_input.a), abs(u_input.a))));
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) != global0[_wgslsmith_index_u32(33113u, 2u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(476f, global0[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(u_input.a, 2u)], 813f, global0[_wgslsmith_index_u32(~0u, 2u)])))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(465f + global0[_wgslsmith_index_u32(var_2.c.x, 2u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_2.c.x, 2u)] + global0[_wgslsmith_index_u32(~4294967295u, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1030f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), global0[_wgslsmith_index_u32(var_2.c.x, 2u)]), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(var_2.c.x, 2u)]))), _wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(83279u, 2u)])), global0[_wgslsmith_index_u32(u_input.a, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] + global0[_wgslsmith_index_u32(3421u, 2u)]) * _wgslsmith_f_op_f32(func_2()))), !(!global3[_wgslsmith_index_u32(~26558u, 7u)]))));
    var var_4 = Struct_3(var_3, var_2.b, firstTrailingBit(vec2<u32>(~firstTrailingBit(u_input.a), _wgslsmith_clamp_u32(u_input.a, select(89391u, 0u, false), ~45676u))));
    return var_2.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    return ~u_input.a;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = !(!vec4<bool>(!any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], true)), arg_1.b, arg_1.a, !global2[_wgslsmith_index_u32(32063u, 2u)]));
    let var_1 = func_4(select(true, -763f < _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, arg_0, 32431u), vec4<u32>(60157u, 4294967295u, 19812u, arg_0)), 2u)], global0[_wgslsmith_index_u32(~4687u, 2u)])), !all(select(vec3<bool>(false, arg_1.b, global2[_wgslsmith_index_u32(u_input.a, 2u)]), var_0.wyy, global2[_wgslsmith_index_u32(1u, 2u)]))), vec4<f32>(586f, global0[_wgslsmith_index_u32(u_input.a, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(378f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 2u)])), -584f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 127f, -259f))))));
    var var_2 = Struct_2(arg_1.b, all(select(!var_0.xz, !(!var_0.zx), false)));
    let var_3 = Struct_1(var_2.b, true);
    var var_4 = 1u == arg_0;
    return Struct_3(var_1, func_1(var_3.a), _wgslsmith_mult_vec2_u32(vec2<u32>(33409u, 4294967295u), min(vec2<u32>(~u_input.a, firstLeadingBit(arg_0)), ~(~vec2<u32>(29716u, arg_0)))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global2 = array<bool, 2>();
    global1 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(~u_input.c, ~global1.x, ~(-47474i))), -vec3<i32>(_wgslsmith_mult_i32(-u_input.c, -2147483647i << (arg_2.c.x % 32u)), reverseBits(~global1.x), global1.x));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(firstLeadingBit(38129u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 2u)]))), !all(vec3<bool>(arg_0.b, global2[_wgslsmith_index_u32(0u, 2u)], true))))));
    var_0 = global0[_wgslsmith_index_u32(~(~abs(arg_2.c.x) & 64450u), 2u)];
    let var_1 = abs(arg_2.c);
    return Struct_2(func_4(true & ((u_input.b ^ u_input.b) == u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(29107u, 2u)], 1333f, global0[_wgslsmith_index_u32(var_1.x, 2u)], -1462f) + vec4<f32>(global0[_wgslsmith_index_u32(arg_1.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -189f, global0[_wgslsmith_index_u32(arg_1.c.x, 2u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1006f, global0[_wgslsmith_index_u32(3255u, 2u)], global0[_wgslsmith_index_u32(51549u, 2u)], 337f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, global0[_wgslsmith_index_u32(4294967295u, 2u)], -261f, -807f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.c.x, 2u)] - -475f), _wgslsmith_f_op_f32(min(-1407f, global0[_wgslsmith_index_u32(61030u, 2u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(82369u, 2u)]), _wgslsmith_f_op_f32(max(376f, global0[_wgslsmith_index_u32(arg_1.c.x, 2u)]))))).b, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1097f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] * global0[_wgslsmith_index_u32(56342u, 2u)])))), vec2<f32>(-272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(15789u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])) - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 2u)])))))));
    global3 = array<vec4<bool>, 7>();
    let var_1 = func_7(Struct_1(false, -42088i >= (~(-31542i) ^ u_input.b)), func_6(func_5(vec3<f32>(_wgslsmith_f_op_f32(314f - 779f), -897f, _wgslsmith_f_op_f32(f32(-1f) * -1754f)), ~(vec3<i32>(4574i, u_input.b, 17284i) | vec3<i32>(-13597i, -2147483647i, -9156i)), Struct_2(global2[_wgslsmith_index_u32(abs(29074u), 2u)], true), func_1(global1.x > u_input.b)), Struct_1(true, true), firstTrailingBit(~(-vec2<i32>(u_input.c, 0i)))), func_6(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, 230f))), (vec3<i32>(u_input.b, global1.x, u_input.c) & vec3<i32>(28158i, u_input.c, global1.x)) & (vec3<i32>(global1.x, u_input.c, -57506i) & vec3<i32>(0i, global1.x, u_input.b)), Struct_2(global2[_wgslsmith_index_u32(select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 2u)]), 2u)], true), func_6(~4294967295u, func_1(global2[_wgslsmith_index_u32(130544u, 2u)]), global1.xz ^ vec2<i32>(global1.x, 2147483647i)).b), Struct_1(false, global2[_wgslsmith_index_u32(~(58678u & u_input.a), 2u)]), global1.yz));
    let var_2 = Struct_2(true, func_6(u_input.a, func_1(true), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yy)).b.a);
    global1 = abs(-(~vec3<i32>(select(29519i, -77226i, var_1.a), max(global1.x, -27180i), ~(-58332i))));
    global3 = array<vec4<bool>, 7>();
    global1 = vec3<i32>(reverseBits(u_input.b) << ((countOneBits(u_input.a) << (firstLeadingBit(u_input.a) % 32u)) % 32u), 1i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, global1.x, 51099i), vec4<i32>(u_input.c, 5691i, -5009i, global1.x)))) & ((firstLeadingBit(-vec3<i32>(u_input.c, -13694i, 1i)) | vec3<i32>(-global1.x, 1i, abs(1i))) | _wgslsmith_div_vec3_i32(vec3<i32>(-global1.x, 29936i, global1.x), vec3<i32>(-1i, firstTrailingBit(u_input.b), reverseBits(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), var_1.b & true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] + global0[_wgslsmith_index_u32(u_input.a, 2u)])), func_3(-10649i).x)), -477f), ~vec3<u32>(27002u, u_input.a << (min(1u, u_input.a) % 32u), ~select(24730u, u_input.a, global2[_wgslsmith_index_u32(29206u, 2u)])), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(18910u, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)), 2u)]), _wgslsmith_f_op_f32(exp2(var_0.x)), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -140f, -993f, 997f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-875f, 529f, -711f, var_0.x) - vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 2u)], -1473f, -827f, global0[_wgslsmith_index_u32(u_input.a, 2u)]) * vec4<f32>(-2051f, var_0.x, 188f, -1100f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(252f, var_0.x, global0[_wgslsmith_index_u32(26195u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, var_0.x, 1723f, var_0.x) * vec4<f32>(-620f, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, -1405f, -1245f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2363f, global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0.x, 1190f) * vec4<f32>(195f, 1709f, -360f, -1653f))))));
}

