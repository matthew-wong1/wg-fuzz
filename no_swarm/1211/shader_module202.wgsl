struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -974f;

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(2190f, 572f, 153f, -733f), vec2<i32>(-50176i, 307i), Struct_1(true), vec4<bool>(false, true, true, true), 31687u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<i32>(-_wgslsmith_mult_i32(-_wgslsmith_add_i32(5343i, -2147483647i), -_wgslsmith_mod_i32(global2.b.x, u_input.a)), _wgslsmith_dot_vec4_i32(max(abs(abs(vec4<i32>(2147483647i, 13785i, 1i, 2147483647i))), vec4<i32>(5961i, u_input.a, ~u_input.a, select(2147483647i, -24021i, global3.d.x))), vec4<i32>(2147483647i, ~(i32(-1i) * -4612i), global2.b.x, abs(global3.b.x) ^ (u_input.a | -77739i))), ~(~(-4432i)));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(~(~49588u), 2212u), global3.e, ~max(1u, 5087u)) & _wgslsmith_add_vec3_u32(vec3<u32>(max(1u, ~27861u), ~(~global2.e), 1040u), ~(vec3<u32>(global3.e, global3.e, 35818u) | u_input.b.wxx) >> (abs(vec3<u32>(24764u, 51870u, 4294967295u)) % vec3<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(trunc(-743f));
    let var_2 = global2.c;
    var var_3 = select(!global2.d.yyw, !global2.d.yyy, var_2.a);
    return vec3<bool>(any(vec2<bool>(!all(vec4<bool>(var_3.x, false, var_3.x, false)), (332f >= global3.a.x) & true)), true, global2.c.a);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(round(1213f));
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.a.x, global2.a.x), _wgslsmith_f_op_f32(step(417f, 679f)), _wgslsmith_f_op_f32(select(700f, 190f, global3.d.x)), _wgslsmith_f_op_f32(min(-394f, 594f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -677f), -430f, -1042f, _wgslsmith_f_op_f32(-540f * global3.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a.x, global2.a.x, global3.a.x, 355f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) - _wgslsmith_div_f32(global3.a.x, global2.a.x)), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1717f))), global2.a)));
    var var_1 = any(func_3());
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1478f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))));
    global1 = array<vec4<u32>, 4>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1643f, _wgslsmith_f_op_f32(abs(global2.a.x)), global3.a.x, -259f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(global2.a)))), select(global3.c.a | true, all(global3.d.xxy), global3.c.a)))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.b.x, -16831i, 758i, 1i), vec4<i32>(9536i, 2147483647i, global2.b.x, u_input.a)), abs(vec4<i32>(16907i, -14284i, 2147483647i, u_input.a))), -2261i) | firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(global3.b, global3.b), u_input.a)), Struct_1(true), !select(global2.d, vec4<bool>(global3.a.x >= 546f, any(vec3<bool>(global2.c.a, false, true)), !global3.d.x, true), true), ~(~1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = -629f;
    var_0 = _wgslsmith_f_op_f32(trunc(1108f));
    var var_1 = Struct_2(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global3.a.x, -764f))))), arg_3.x, _wgslsmith_div_f32(func_2(u_input.b).a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(133f - arg_0.a.x))))), -(~global2.b), Struct_1(func_2(u_input.b).d.x), arg_0.d, 27263u);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(global3.a + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1007f - global2.a.x))), _wgslsmith_f_op_f32(1000f + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x))))), var_1.b, global3.c, select(vec4<bool>(func_2(~global1[_wgslsmith_index_u32(83057u, 4u)]).d.x, func_2(global1[_wgslsmith_index_u32(arg_0.e, 4u)]).d.x, arg_0.b.x >= _wgslsmith_clamp_i32(global3.b.x, u_input.a, 0i), true), vec4<bool>(!func_3().x, any(vec2<bool>(true, global2.c.a)) && global2.c.a, arg_0.d.x, false), arg_3.x <= -694f), arg_0.e);
    let var_2 = Struct_3(arg_2.x, ~(~(~u_input.c)));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a.x - 1635f), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec2_f32(-global3.a.zx), vec2<bool>(~global3.e == ~global3.e, true))), global2.a.ww));
    global3 = func_4(func_2(global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 58012u, arg_0.b.x, u_input.c.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.e, 4294967295u), vec3<u32>(1u, 57864u, 4294967295u)), countOneBits(0u), ~global2.e, _wgslsmith_clamp_u32(7909u, 13021u, arg_3.e)))).d, arg_3.a.zwz, vec2<f32>(681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a.x * -693f))) - _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(-415f + -343f)))));
    global3 = func_2(~(~(~(~vec4<u32>(arg_0.b.x, global2.e, arg_0.b.x, u_input.c.x)))));
    global0 = -486f;
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.a + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.x, var_0.x, -2139f, 1000f))))), vec2<i32>(_wgslsmith_div_i32(-2147483647i, firstLeadingBit(arg_1)), -30567i) ^ vec2<i32>(_wgslsmith_mod_i32(abs(29999i), select(-37058i, 13392i, arg_3.c.a)), _wgslsmith_mult_i32(-173i & arg_3.b.x, -12318i)), global2.c, vec4<bool>(any(!vec2<bool>(false, arg_3.c.a)), global3.d.x, global2.c.a, !(true | global3.d.x)), func_2(u_input.b).e);
    return func_2(global1[_wgslsmith_index_u32(~(~(~func_2(u_input.b).e)), 4u)]).c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(461f, 207f, -1349f, _wgslsmith_f_op_f32(trunc(1722f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_0.a, 630f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(855f, global3.a.x, arg_0.a, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, -1000f, -551f) - vec4<f32>(107f, global2.a.x, -212f, arg_2.x)), !vec4<bool>(global3.c.a, true, false, true))))), global2.b, func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, -1000f, 1005f, arg_0.a) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, -137f, 545f, 968f)))), ~global2.b, global3.c, func_4(func_4(Struct_2(global2.a, vec2<i32>(global3.b.x, 40562i), global2.c, global3.d, u_input.b.x), vec4<bool>(false, false, global3.c.a, arg_1.a), vec3<f32>(global3.a.x, arg_2.x, 573f), global3.a.zz), select(global2.d, vec4<bool>(false, true, global3.c.a, true), true), vec3<f32>(-1007f, arg_0.a, arg_0.a), global2.a.ww).d, _wgslsmith_dot_vec2_u32(~arg_0.b.zy, select(u_input.c.yx, u_input.c.yy, global2.d.wx))), select(select(!global2.d, func_4(Struct_2(global2.a, vec2<i32>(u_input.a, -3109i), arg_1, global3.d, arg_0.b.x), vec4<bool>(arg_1.a, global2.c.a, arg_1.a, false), arg_2, global2.a.xx).d, !global2.d), func_4(func_2(u_input.b), select(global2.d, vec4<bool>(global3.c.a, true, global3.d.x, true), global2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1531f, -1000f, global2.a.x)), global3.a.wy).d, true), _wgslsmith_f_op_vec3_f32(global3.a.www * global2.a.yxz), global2.a.yx).c, !vec4<bool>(!(4294967295u <= arg_0.b.x), true, global2.d.x, u_input.a >= (u_input.a ^ global2.b.x)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.b.x ^ arg_0.b.x, ~927u), 4294967295u));
    let var_0 = u_input.c.x << (u_input.b.x % 32u);
    global3 = func_4(func_2(select(global1[_wgslsmith_index_u32(min(~global2.e, var_0), 4u)], vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b.x, u_input.c.x), u_input.c), select(1u, var_0, false), _wgslsmith_add_u32(global3.e, 22311u), global2.e | 19761u), true)), select(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, -2248f, arg_0.a, arg_2.x) + global3.a), global3.b, func_1(Struct_3(-629f, vec3<u32>(20132u, global3.e, arg_0.b.x)), 1i, Struct_1(true), Struct_2(vec4<f32>(global2.a.x, arg_0.a, -618f, 1000f), global2.b, global3.c, global3.d, 4294967295u)), func_4(Struct_2(vec4<f32>(-250f, 1639f, 144f, global2.a.x), vec2<i32>(1547i, -2147483647i), Struct_1(global3.d.x), global2.d, global3.e), global2.d, global2.a.xzw, global2.a.yw).d, ~4294967295u), global3.d, arg_2, _wgslsmith_f_op_vec2_f32(sign(global3.a.xx))).d, !global2.d, select(!global3.d, func_2(global1[_wgslsmith_index_u32(22625u, 4u)]).d, func_4(func_4(Struct_2(global3.a, global2.b, Struct_1(arg_1.a), vec4<bool>(false, global2.d.x, true, false), 4294967295u), vec4<bool>(global2.d.x, arg_1.a, true, true), vec3<f32>(global3.a.x, 387f, global3.a.x), vec2<f32>(global3.a.x, arg_2.x)), vec4<bool>(false, global2.d.x, true, global2.c.a), vec3<f32>(arg_0.a, -645f, arg_0.a), vec2<f32>(-1000f, 1000f)).d)), _wgslsmith_f_op_vec3_f32(round(func_4(Struct_2(global2.a, vec2<i32>(u_input.a, u_input.a), func_2(vec4<u32>(arg_0.b.x, 4294967295u, 0u, 4294967295u)).c, global3.d, ~u_input.c.x), global3.d, _wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(247f, arg_2.x, arg_0.a), vec3<f32>(514f, 1694f, global3.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))).a.xzw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.wx, _wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, -1885f), global2.a.zy))));
    let var_1 = ~arg_0.b;
    var var_2 = _wgslsmith_add_vec2_u32(firstTrailingBit(arg_0.b.yx), vec2<u32>(~(~(~var_1.x)), 81006u));
    return Struct_2(global2.a, global3.b, arg_1, !global3.d, 111745u);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_u32(func_4(func_2(~(~global1[_wgslsmith_index_u32(global2.e, 4u)])), vec4<bool>(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.e, 1u), 4u)]).c.a, !(false || arg_0.d.x), global2.c.a, false), global2.a.yxy, _wgslsmith_f_op_vec2_f32(-global2.a.wz)).e, ~24221u);
    global3 = arg_0;
    let var_1 = u_input.c;
    var var_2 = arg_0.d.wwx;
    global0 = func_4(func_2(abs(u_input.b)), !select(!global2.d, vec4<bool>(global2.a.x < 1286f, !global2.d.x, false, func_2(vec4<u32>(4294967295u, 24603u, arg_2.x, arg_1)).d.x), !global2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, 1311f, -662f))) + vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1632f)), _wgslsmith_div_f32(arg_0.a.x, -1475f))), global3.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -445f))).a.x;
    return vec3<i32>(609i, -11577i, arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(global3.b.x, u_input.a), global2.b.x, 0i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, -1i, global3.b.x), ~vec3<i32>(global2.b.x, 7106i, global2.b.x)) ^ func_6(func_5(Struct_3(global3.a.x, vec3<u32>(global2.e, 4294967295u, global3.e)), func_1(Struct_3(-1658f, u_input.c), 1i, Struct_1(global2.d.x), Struct_2(global3.a, global2.b, global2.c, vec4<bool>(false, false, global2.d.x, global2.c.a), 1u)), vec3<f32>(556f, global2.a.x, -1040f)), 36873u, firstLeadingBit(vec3<u32>(global2.e, 0u, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

