struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = reverseBits(select(-_wgslsmith_add_vec2_i32(~arg_0.yz, arg_1.a), -(abs(arg_0.yz) | select(vec2<i32>(0i, arg_0.x), arg_0.yz, true)), vec2<bool>(true, !select(false, false, true))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(924f, -114f)))))), vec4<bool>(true, true, true, true));
    let var_2 = -430f;
    let var_3 = all(select(var_1.b, select(var_1.b, vec4<bool>(var_1.b.x || var_1.b.x, false, true, true), vec4<bool>(var_1.b.x, false, true, false)), vec4<bool>(any(select(vec2<bool>(var_1.b.x, true), var_1.b.yx, vec2<bool>(var_1.b.x, true))), all(select(var_1.b, vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x))), var_1.b.x, var_1.b.x)));
    let var_4 = var_1.b.x;
    return 4356u;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(abs(max(-abs(vec4<i32>(2147483647i, -14371i, -18803i, -3244i)), -vec4<i32>(1i, 1i, 1i, 1i))), -(vec4<i32>(-1i) * -(~vec4<i32>(6115i, 97617i, 16071i, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-123f))), _wgslsmith_f_op_f32(ceil(-377f))), _wgslsmith_f_op_f32(exp2(1f))));
    return !vec4<bool>(!arg_1.x, arg_1.x, true, arg_1.x);
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = !vec4<bool>(true, all(vec2<bool>(true, true)), true, all(func_4(func_3(vec3<i32>(1i, -106908i, -1i), Struct_1(vec2<i32>(-34888i, 20510i), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 39873u))), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    return _wgslsmith_f_op_f32(1000f * 1230f);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(990f, -468f, -858f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, arg_2.a)) * vec3<f32>(arg_2.a, 985f, -1205f)))));
    var var_1 = Struct_1(vec2<i32>(abs(-32136i), 0i), vec4<u32>(u_input.a.x, u_input.a.x & (firstTrailingBit(4294967295u) ^ 47297u), ~63631u & ~(~u_input.a.x), u_input.a.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.x, var_0.x)))), arg_2.b);
    var_2 = Struct_2(arg_2.a, func_4(~(~var_1.b.x), select(vec2<bool>(func_4(u_input.a.x, arg_2.b.zy).x, 542f == arg_1.x), !vec2<bool>(var_2.b.x, arg_2.b.x), arg_0)));
    var var_3 = all(!var_2.b.xx);
    return Struct_3(true, Struct_1(var_1.a, var_1.b), Struct_1(-(~var_1.a), reverseBits(~(~var_1.b))), 193f);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = func_5(select(select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), vec2<bool>(arg_0, arg_1.a.x < arg_1.a.x), false), vec2<bool>(!arg_0, false), true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(firstTrailingBit(vec3<u32>(arg_1.b.x, arg_1.b.x, 0u)))), arg_2), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, -397f), false))))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(1015f - _wgslsmith_f_op_f32(step(arg_2, arg_2))))), select(!(!vec4<bool>(true, arg_0, arg_0, arg_0)), !(!vec4<bool>(arg_0, false, arg_0, arg_0)), select(arg_0, true, arg_0 || false))));
    let var_1 = func_5(!(!func_4(u_input.a.x, select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false))).zw), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(floor(var_0.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -724f) * vec2<f32>(arg_2, 1369f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, -219f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, -400f)))))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + arg_2))), vec4<bool>(arg_0, !arg_0 & true, arg_0, !var_0.a)));
    var_0 = var_1;
    var var_2 = _wgslsmith_sub_vec2_u32(~firstLeadingBit(var_0.c.b.zx), abs(~var_0.b.b.yy));
    var var_3 = var_2.x;
    return Struct_2(var_0.d, vec4<bool>(arg_0, true, any(vec3<bool>(var_0.a, func_4(var_1.b.b.x, vec2<bool>(var_1.a, arg_0)).x, true)), true));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = all(vec2<bool>(any(!select(arg_0.b.zwy, arg_0.b.wwz, arg_0.b.x)), any(arg_0.b)));
    let var_1 = func_4(1u, !func_4(~arg_2.b.x, arg_0.b.zz).zx);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(727f, 859f, 2002f, arg_0.a))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-275f, arg_0.a)) - _wgslsmith_div_f32(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) + -614f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, 317f, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-886f, arg_0.a, arg_0.a, arg_0.a))), func_4(arg_2.b.x, var_1.zy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 1000f, 925f, arg_0.a))))));
    var var_3 = func_1(any(func_4(arg_2.b.x, vec2<bool>(var_0, arg_0.b.x)).wy), arg_2, 1191f);
    let var_4 = any(!var_3.b);
    return Struct_1(vec2<i32>(~arg_1, arg_2.a.x), arg_2.b);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = func_5(select(func_1(true, func_5(func_4(u_input.a.x, vec2<bool>(arg_2.x, arg_2.x)).wz, vec2<f32>(457f, 2023f), Struct_2(-842f, vec4<bool>(true, arg_2.x, arg_2.x, false))).c, _wgslsmith_f_op_f32(f32(-1f) * -644f)).b.wy, func_1(false, func_6(Struct_2(276f, vec4<bool>(true, arg_2.x, true, arg_2.x)), min(arg_1.a.x, -2147483647i), Struct_1(vec2<i32>(arg_1.a.x, -1204i), arg_1.b), arg_1.a.x), _wgslsmith_f_op_f32(ceil(1477f))).b.wz, vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(26749i, arg_1.a.x), arg_1.a) != _wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_1(arg_2.x, arg_1, 551f).a), _wgslsmith_f_op_f32(-func_5(arg_2.yz, vec2<f32>(-1112f, -1000f), Struct_2(1022f, vec4<bool>(false, true, false, arg_2.x))).d))), func_1(!(_wgslsmith_dot_vec3_u32(arg_1.b.wxz, arg_1.b.ywx) <= (40012u << (arg_0 % 32u))), Struct_1(-func_6(Struct_2(-671f, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), -5670i, Struct_1(vec2<i32>(-24611i, arg_1.a.x), arg_1.b), 76939i).a, arg_1.b << (~arg_1.b % vec4<u32>(32u))), -1000f));
    var var_1 = var_0.c;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -614f) > func_5(!arg_2.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 868f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2262f, var_0.d))), func_1(true == arg_2.x, func_6(Struct_2(618f, vec4<bool>(var_0.a, arg_2.x, var_0.a, arg_2.x)), var_1.a.x, var_0.c, -18100i), var_0.d)).d, Struct_1(~(_wgslsmith_mod_vec2_i32(var_1.a, arg_1.a) ^ (var_1.a ^ arg_1.a)), countOneBits(func_5(vec2<bool>(true, var_0.a), vec2<f32>(-1000f, var_0.d), Struct_2(329f, vec4<bool>(true, true, arg_2.x, true))).c.b) ^ (_wgslsmith_clamp_vec4_u32(arg_1.b, var_0.b.b, var_1.b) ^ vec4<u32>(4294967295u, var_0.b.b.x, arg_0, var_0.c.b.x))), var_0.c, var_0.d);
    let var_3 = func_4(reverseBits(~(~4294967295u)) ^ ~(~(1u ^ arg_0)), vec2<bool>(var_0.a, var_0.a && false));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + 305f) - _wgslsmith_div_f32(-1000f, var_0.d)))), !(!vec4<bool>(var_0.d == var_2.d, false, var_3.x, !arg_2.x)));
    return Struct_3(var_2.a, func_6(func_1((true == var_4.b.x) | false, func_6(func_1(var_4.b.x, arg_1, 735f), 57606i, Struct_1(vec2<i32>(-33136i, var_0.b.a.x), var_1.b), -2147483647i), -1532f), ~(-2147483647i), func_6(Struct_2(406f, select(vec4<bool>(false, false, false, var_3.x), vec4<bool>(arg_2.x, false, var_4.b.x, var_0.a), vec4<bool>(arg_2.x, var_0.a, var_2.a, var_2.a))), _wgslsmith_dot_vec2_i32(-var_0.b.a, vec2<i32>(arg_1.a.x, -1i) >> (var_1.b.yy % vec2<u32>(32u))), Struct_1(_wgslsmith_add_vec2_i32(var_0.c.a, vec2<i32>(var_1.a.x, var_1.a.x)), vec4<u32>(var_1.b.x, arg_0, arg_0, 4294967295u)), var_1.a.x << (4531u % 32u)), -5376i), func_5(var_4.b.yx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, var_0.d) + vec2<f32>(683f, 1026f))))), Struct_2(_wgslsmith_f_op_f32(func_2(~arg_1.b.zyw)), var_3)).b, var_2.d);
}

fn func_8(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = func_1(arg_0.a, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1055f, 360f, !func_1(arg_0.a, Struct_1(arg_3.a, arg_1.b), 563f).b.x)), -733f));
    var var_1 = func_1(var_0.b.x, func_7(~(~1u), Struct_1(vec2<i32>(arg_0.b.a.x, -arg_1.a.x), firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_0.b.b, arg_3.b))), func_1(!arg_0.a, arg_1, _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(abs(1347f)))).b.xyw).c, -587f);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(27635i, arg_1.a.x, -16276i), -vec3<i32>(arg_3.a.x & 0i, firstTrailingBit(arg_1.a.x), -arg_1.a.x)), ~(~arg_1.a.x), abs(firstLeadingBit(countOneBits(1i))));
    var var_3 = Struct_2(var_1.a, select(func_1(true, Struct_1(func_5(vec2<bool>(var_1.b.x, var_0.b.x), vec2<f32>(var_0.a, var_0.a), var_0).c.a, vec4<u32>(19040u, u_input.a.x, 100000u, arg_3.b.x)), _wgslsmith_f_op_f32(-func_7(0u, arg_0.b, vec3<bool>(var_0.b.x, true, true)).d)).b, vec4<bool>(true, arg_0.a, func_1(true, func_6(Struct_2(824f, vec4<bool>(true, false, false, var_1.b.x)), 2147483647i, Struct_1(var_2.yy, vec4<u32>(arg_3.b.x, arg_1.b.x, 1u, 1u)), arg_0.c.a.x), _wgslsmith_f_op_f32(-var_1.a)).b.x, (161212u << (arg_2.x % 32u)) < u_input.a.x), var_1.b));
    var var_4 = -vec3<i32>(0i, min(1i, -2147483647i), -_wgslsmith_dot_vec2_i32(var_2.zz, vec2<i32>(2147483647i, -41361i))) >> (arg_2 % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(func_2(select(arg_1.b.zzw, vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1.b, arg_0.b.b), 1u, arg_0.c.b.x), !select(vec3<bool>(false, true, true), var_3.b.ywz, select(var_0.b.wyz, var_3.b.yxz, var_0.b.zyy)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = 17935u;
    var_1 = u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_8(func_7(4294967295u, func_6(func_1(true, Struct_1(vec2<i32>(4468i, -99335i), vec4<u32>(1u, u_input.a.x, 66291u, 4294967295u)), -2216f), max(-30839i, -5022i), func_5(vec2<bool>(false, true), vec2<f32>(-698f, -979f), Struct_2(1106f, vec4<bool>(var_0, true, true, true))).c, _wgslsmith_div_i32(0i, 57521i)), func_1(u_input.a.x > 4294967295u, Struct_1(vec2<i32>(1i, -10574i), vec4<u32>(4294967295u, u_input.a.x, 83024u, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1556f)).b.wwy), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-71753i, 44323i), vec2<i32>(17311i, -5716i), vec2<bool>(false, var_0))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 48712u, 6217u))), vec3<u32>(132096u, u_input.a.x, u_input.a.x), Struct_1(vec2<i32>(-2147483647i, func_7(27311u, Struct_1(vec2<i32>(41367i, -2147483647i), vec4<u32>(u_input.a.x, u_input.a.x, 43241u, u_input.a.x)), vec3<bool>(false, false, var_0)).c.a.x), ~(vec4<u32>(54740u, 0u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 41325u, 0u, u_input.a.x) % vec4<u32>(32u)))))), !func_4(1u, !vec2<bool>(false, var_0)));
    let var_3 = func_1(!(!var_0), func_6(Struct_2(var_2.a, vec4<bool>(var_2.b.x, !var_0, true, true)), abs(func_5(vec2<bool>(var_2.b.x, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(1561f, -587f) * vec2<f32>(var_2.a, 777f)), Struct_2(-309f, var_2.b)).c.a.x), Struct_1(max(vec2<i32>(24465i, 1i), ~vec2<i32>(-10712i, 0i)), ~select(vec4<u32>(9479u, 9919u, u_input.a.x, 12710u), vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), false)), i32(-1i) * -(i32(-1i) * -18800i)), var_2.a).b;
    var_1 = _wgslsmith_add_u32(firstTrailingBit(1u), ~(~(u_input.a.x ^ u_input.a.x))) ^ func_7(u_input.a.x, Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -1i)), -vec2<i32>(0i, 0i)), func_5(vec2<bool>(var_2.b.x, var_2.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, var_2.a) + vec2<f32>(1000f, var_2.a)), func_1(var_3.x, Struct_1(vec2<i32>(1i, 1i), vec4<u32>(4294967295u, 21869u, 88202u, u_input.a.x)), -1150f)).c.b), func_1(var_3.x, func_7(u_input.a.x, Struct_1(vec2<i32>(0i, 3803i), vec4<u32>(72043u, 29236u, 1u, 51050u)), !var_3.yzw).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1138f, var_2.a))).b.zzx).b.b.x;
    var_1 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(var_2.b.x, Struct_1(-vec2<i32>(35159i, 21143i), abs(vec4<u32>(9580u, 49925u, 0u, 4294967295u))), var_2.a).b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -451f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))))), func_1(false, func_6(Struct_2(var_2.a, vec4<bool>(true, var_2.b.x, var_0, true)), 2147483647i, Struct_1(vec2<i32>(7225i, -16581i), vec4<u32>(u_input.a.x, 1826u, u_input.a.x, u_input.a.x)), -2147483647i << (u_input.a.x % 32u)), var_2.a)).c.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)))))));
}

