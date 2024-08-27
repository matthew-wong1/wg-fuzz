struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global0 = countOneBits(abs(~vec4<u32>(global0.x, select(8738u, global0.x, true), global0.x, max(global0.x, 34093u))));
    var var_0 = vec2<f32>(1744f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1030f)), _wgslsmith_f_op_f32(f32(-1f) * -1052f)) * 684f))));
    var var_1 = -277f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(sign(var_0.x)), ~global0.x < global0.x)));
    var var_2 = Struct_3(-22925i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1591f, -1483f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 157f, -855f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 211f, var_0.x) * vec4<f32>(var_0.x, var_0.x, 519f, -942f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -360f, -571f, var_0.x), vec4<f32>(274f, 479f, var_0.x, var_0.x), vec4<bool>(false, true, false, true))))))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(408f, _wgslsmith_f_op_f32(var_0.x + -797f), 135f, -1444f)))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-3131i, reverseBits(2147483647i), 1i), abs(u_input.a), vec3<i32>(u_input.a.x ^ (u_input.a.x & 68038i), -1i, u_input.a.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, var_0.x, var_0.x, var_0.x)))))));
    return _wgslsmith_f_op_f32(-var_2.e.b.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_3(firstTrailingBit(-u_input.a.x), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-254f, -168f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2072f, 392f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, 1321f)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2722f, -517f, -151f, -600f) + vec4<f32>(-103f, -599f, 239f, -1000f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(376f, 1258f, 1582f, -241f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_f32(f32(-1f) * -1315f)), vec4<f32>(-239f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-636f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1049f)) + -493f))), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(45680i, u_input.a.x, 7641i, -2147483647i), ~vec4<i32>(1i, u_input.a.x, u_input.a.x, 33057i)), 21685i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -50957i, u_input.a.x), -60411i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, -404f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, 1575f, 400f, 1396f) + vec4<f32>(-282f, -1000f, -575f, 994f)))))));
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~select(~vec4<u32>(48773u, 4294967295u, 1u, global0.x), reverseBits(vec4<u32>(global0.x, 59022u, 1u, global0.x)), all(vec3<bool>(true, true, true))), select(firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), ~vec4<u32>(global0.x, 1u, 23820u, global0.x), true) >> (~(~vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % vec4<u32>(32u))), global0.x, 1u, 77889u);
    var var_1 = Struct_1(var_0.e.b.zz, vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.a.x), 1000f, -303f, _wgslsmith_f_op_f32(-1698f - var_0.c.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.a.x))))), var_0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))) + _wgslsmith_f_op_f32(abs(var_0.c.b.x)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1504f, -186f, true)) * _wgslsmith_f_op_f32(646f - _wgslsmith_f_op_f32(round(var_0.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.b.x, -441f)), var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(433f + -1677f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.zwz) - vec3<f32>(_wgslsmith_f_op_f32(trunc(760f)), -512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-447f * var_0.e.a.x))))));
    return 14818i;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_4(Struct_3(countOneBits(select(-1i, u_input.a.x << (1u % 32u), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, 457f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2203f, 758f, 994f, -2016f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1000f - -1568f), -588f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(672f, 210f, 2287f, 826f)))), ~vec3<i32>(arg_0 << (arg_1 % 32u), arg_2.x ^ -19693i, _wgslsmith_add_i32(-31674i, arg_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -1899f, -650f, -1668f)))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(228f, -659f, -845f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1781f, 989f, 1330f), vec3<f32>(-222f, -1954f, 987f), false)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1111f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2430f, -1114f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, 186f))), all(vec3<bool>(false, true, true)))), arg_2.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1643f, -168f) * vec3<f32>(2542f, -568f, -324f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, -1000f)))), ~(~(~1i))));
    var_0 = Struct_4(Struct_3(_wgslsmith_mod_i32(~(-1i), ~14553i) ^ func_2(), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b.b.x, var_0.a.b.b.x)), -483f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a.e.b), vec4<f32>(var_0.c.a.x, var_0.b.b.x, 494f, var_0.b.a.x)))), var_0.a.b, vec3<i32>(var_0.b.c, _wgslsmith_mod_i32(-11714i, 3080i), ~(-24692i)), var_0.a.b), var_0.c, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1051f, var_0.c.a.x, var_0.c.a.x), var_0.c.a), vec3<f32>(1119f, var_0.a.e.a.x, var_0.c.b.x), all(vec2<bool>(false, true)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-287f - 2143f), _wgslsmith_f_op_f32(step(var_0.b.b.x, 2208f)))), var_0.c.a.yz, _wgslsmith_div_i32(firstLeadingBit(var_0.b.c | arg_0), _wgslsmith_mult_i32(0i | var_0.b.c, -1i))));
    var_0 = Struct_4(Struct_3(~firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0.a.d.zx, u_input.a.xz)), var_0.a.c, var_0.a.c, arg_2, Struct_1(var_0.a.b.b.zw, var_0.a.b.b)), var_0.b, Struct_2(var_0.c.a, vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.a.e.a.x)), 1i));
    var var_1 = !(!vec4<bool>(false != all(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, false)), false, true));
    let var_2 = var_0.b;
    return ~0u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_1, 4294967295u, 1u) | vec4<u32>(79542u, 4294967295u, global0.x, 1u), ~vec4<u32>(73358u, arg_1, arg_1, 63106u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = ~vec4<u32>(~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, global0.x, global0.x), ~4294967295u, global0.x), ~vec3<u32>(global0.x, global0.x, 4294967295u)), ~4294967295u);
    let var_0 = arg_1.b.x;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    global0 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 0u, global0.x, global0.x)), ~vec4<u32>(4294967295u, global0.x, global0.x, global0.x))) ^ vec4<u32>(func_4(_wgslsmith_sub_i32(u_input.a.x | 1i, func_2()), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(global0.x, 4294967295u), global0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 1i, 1i), u_input.a, u_input.a) << (global0.yxz % vec3<u32>(32u))), 62971u, ~40289u, 75626u | _wgslsmith_add_u32(_wgslsmith_div_u32(global0.x, 64495u), global0.x >> (global0.x % 32u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.ww, vec2<f32>(-1400f, _wgslsmith_f_op_f32(floor(-791f)))) + vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_2 + 716f))), _wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.b)));
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    global0 = vec4<u32>(countOneBits(~(~(~global0.x))), global0.x, ~_wgslsmith_dot_vec2_u32(global0.yy, global0.yx) << (17608u % 32u), global0.x);
    global0 = vec4<u32>(~global0.x, abs(~func_4(-13388i, 0u & global0.x, _wgslsmith_div_vec3_i32(u_input.a, u_input.a))), abs(global0.x), global0.x);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 367f, arg_0.a.x) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.x, -652f), vec3<f32>(arg_0.b.x, 215f, -220f))) - func_1(u_input.a.x, func_1(u_input.a.x, Struct_1(vec2<f32>(1320f, 1000f), arg_0.b))).b.yyw) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.yww))), func_1(u_input.a.x, func_1(_wgslsmith_div_i32(-u_input.a.x, u_input.a.x << (143229u % 32u)), arg_0)).a, reverseBits(2147483647i));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(func_3()));
    var var_2 = global0.x > firstTrailingBit(0u);
    return select(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38096u, global0.x, global0.x, 4294967295u), vec4<u32>(4294967295u, 0u, 2981u, 4294967295u) & vec4<u32>(global0.x, global0.x, global0.x, 1u)), firstLeadingBit(vec4<u32>(4294967295u, global0.x, global0.x, 4294967295u))), vec4<u32>(1u, 8742u, _wgslsmith_dot_vec2_u32(countOneBits(global0.zx), ~vec2<u32>(17836u, 45702u)), ~1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.x, 4294967295u, ~1u), vec4<u32>(27606u, reverseBits(1u >> (global0.x % 32u)), firstLeadingBit(_wgslsmith_add_u32(global0.x, global0.x)), 4294967295u)), any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 2857u), vec4<u32>(64564u, 73401u, global0.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, global0.x), vec4<u32>(global0.x, 0u, 53948u, global0.x), vec4<u32>(global0.x, 0u, 1u, global0.x))), func_5(func_1(-17308i, Struct_1(vec2<f32>(-256f, -1000f), vec4<f32>(-902f, 748f, 1397f, 1593f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-453f, 372f, 1853f) - vec3<f32>(1053f, -335f, 1351f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, -180f, 464f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2161f, -217f) - vec3<f32>(-1210f, -937f, -1904f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(u_input.a.x, Struct_1(vec2<f32>(574f, -1554f), vec4<f32>(1333f, 1328f, 750f, 1000f))).a.x, _wgslsmith_div_f32(-685f, -363f)) * vec2<f32>(-279f, -205f))), 20384i);
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, ~var_0.x, 4294967295u), ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, var_0.x, 27862u, 17573u) ^ vec4<u32>(54640u, 10967u, 13229u, var_0.x)), ~vec4<u32>(0u, 0u, 56324u, global0.x), select(vec4<u32>(82846u, var_0.x, var_0.x, 45266u) | vec4<u32>(var_0.x, 1u, 0u, 30502u), ~vec4<u32>(var_0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true))));
    let var_2 = 55559u;
    var var_3 = vec3<bool>(!any(vec3<bool>(true, true, true)), false, !select(any(vec3<bool>(true, true, true)), false, !any(vec2<bool>(true, false))));
    let var_4 = -26483i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(_wgslsmith_div_u32(var_2, 36172u) | var_2)), max(_wgslsmith_mod_i32(-max(-10884i, u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zz), 0i)), ~0i | func_2()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -704f, -2124f)), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(abs(var_1.c), abs(var_1.c & -2147483647i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 1000f, var_1.b.x) + vec3<f32>(-1195f, var_1.b.x, -246f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, -194f, var_1.a.x), var_1.a)))))));
}

