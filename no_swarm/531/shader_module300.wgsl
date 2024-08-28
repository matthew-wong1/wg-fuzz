struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = vec4<bool>(_wgslsmith_div_i32(u_input.a.x, -791i) <= _wgslsmith_add_i32(u_input.a.x, ~u_input.a.x), true, any(select(vec2<bool>(all(vec2<bool>(false, false)), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), all(vec4<bool>(true, true, false, false)));
    var_0 = vec4<bool>(all(vec3<bool>(true && (false != var_0.x), var_0.x, !any(vec3<bool>(true, var_0.x, false)))), !((all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) & true) & all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), all(vec4<bool>(all(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, var_0.x, true), false)), !var_0.x, true, !(u_input.c == 4294967295u))), var_0.x);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 260f) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * -482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(sign(1296f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-313f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-532f)))), _wgslsmith_f_op_f32(trunc(-771f))))));
    var var_2 = Struct_1(var_1.a);
    var var_3 = all(vec2<bool>(any(select(vec4<bool>(true, false, var_0.x, false), !vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), !(!any(vec3<bool>(var_0.x, true, var_0.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) * var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1790f), var_1.a.x, 1397f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, u_input.b.x), u_input.b.zy));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_1.a.x, arg_0.x, -1635f))))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-638f, var_1.x), 590f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(var_0.x)).x, -392f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, var_1.x, var_1.x, 442f) - vec4<f32>(808f, arg_1.a.x, -1165f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_1.a.x, -1287f, 1000f, 1000f))))), arg_1.a));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.b, ~_wgslsmith_add_vec3_u32(~u_input.b, ~u_input.e.yzz)), reverseBits(7979u));
    let var_3 = _wgslsmith_sub_vec2_i32(~abs(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy)), _wgslsmith_sub_vec2_i32(-u_input.a.yx, ~((vec2<i32>(1i, -2147483647i) << (var_0 % vec2<u32>(32u))) & vec2<i32>(u_input.a.x, arg_2))));
    return -1657f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-769f, -1113f, -1654f, -400f), vec4<f32>(-162f, -290f, -581f, 349f), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-316f, -623f, -1865f, 573f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, 820f, 1750f, -822f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(875f)) + _wgslsmith_div_f32(-525f, -1833f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1289f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(u_input.c)), Struct_1(vec4<f32>(1005f, 1572f, 509f, 618f)), -43776i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-878f))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(arg_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(873f, 337f, var_0.a.x, var_0.a.x), var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1000f, var_0.a.x, 737f)) + _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, var_0.a.x, 448f, var_0.a.x))), true)), any(vec4<bool>(true, true, false, true)) == true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-776f, 150f, var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-224f, var_0.a.x, var_0.a.x, -295f))))))));
    var_0 = var_1;
    let var_2 = reverseBits(u_input.d.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.a, vec4<f32>(830f, var_0.a.x, var_0.a.x, 917f))) + _wgslsmith_div_vec4_f32(var_1.a, var_0.a))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-283f, _wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(0i, 2801i, 15173i, u_input.a.x), select(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 14124i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), true)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(43389i, 2147483647i, u_input.a.x, u_input.a.x) >> (u_input.e % vec4<u32>(32u))), reverseBits(vec4<i32>(21943i, u_input.a.x, u_input.a.x, 1i)))), u_input.a.x);
    var var_2 = vec3<f32>(arg_0, 269f, 1394f);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1931f, _wgslsmith_f_op_f32(ceil(1786f)), -301f, _wgslsmith_f_op_f32(arg_0 + -826f)) - _wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(-698f, -835f, var_2.x, -1732f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, arg_2.x, arg_0, -691f))) * func_2(u_input.d).a)));
    return func_2(firstLeadingBit(abs(u_input.b.yz)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-977f))))), func_2(vec2<u32>(~2710u, u_input.c << (17296u % 32u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1533f, _wgslsmith_f_op_f32(sign(-278f)), _wgslsmith_f_op_f32(sign(-831f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-935f, -796f)), 247f, -422f), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), func_2(~u_input.b.zy));
    var var_1 = func_5(var_0.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-112f, -358f, var_0.a.x), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), func_2(~(~vec2<u32>(0u, 4294967295u) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))))).a.x;
    var var_2 = var_0;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -1117f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -704f), select(35835i, 0i, false) < -42782i)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-240f, var_0.a.x, false)))));
    let var_4 = func_5(var_0.a.x, func_5(-1266f, Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2711f, var_3.a.x, var_0.a.x, 855f)))), _wgslsmith_f_op_vec3_f32(-var_0.a.zxy), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)), Struct_1(var_3.a), vec3<f32>(_wgslsmith_div_f32(1968f, var_2.a.x), _wgslsmith_f_op_f32(trunc(-272f)), _wgslsmith_f_op_f32(-var_2.a.x)), func_5(var_3.a.x, func_5(var_2.a.x, var_0, var_2.a.wwx, Struct_1(vec4<f32>(var_0.a.x, var_2.a.x, -1069f, var_2.a.x))), var_0.a.yzw, func_2(vec2<u32>(16702u, u_input.d.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + 1302f), _wgslsmith_f_op_f32(abs(var_3.a.x)), _wgslsmith_f_op_f32(2498f - -1600f)), var_0.a.xxy)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_3.a)))));
    return func_5(var_0.a.x, func_5(func_2(abs(vec2<u32>(u_input.c, 34613u))).a.x, var_4, vec3<f32>(var_0.a.x, 350f, _wgslsmith_f_op_f32(sign(498f))), var_4), var_4.a.ywz, func_2(_wgslsmith_add_vec2_u32(abs(max(vec2<u32>(u_input.c, 47510u), vec2<u32>(u_input.e.x, 45699u))), vec2<u32>(30698u, 33987u))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 6395i;
    var var_1 = select(true, true, true);
    var_1 = any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)))));
    var_1 = any(vec2<bool>(true, all(vec2<bool>(true, true))));
    var var_2 = select(vec4<bool>(!(arg_2.a.x != arg_1), ((var_0 | 37272i) ^ ~2147483647i) >= ~68782i, _wgslsmith_f_op_f32(f32(-1f) * -1202f) == arg_1, !(countOneBits(u_input.b.x) == 4294967295u)), select(select(vec4<bool>(any(vec2<bool>(true, false)), true, false, any(vec3<bool>(true, true, false))), vec4<bool>(true, any(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, true, true)), true), true), vec4<bool>(true, true, true, true), !vec4<bool>(true, select(false, false, false), select(true, false, false), any(vec4<bool>(true, true, false, false)))), all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))));
    return arg_0;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.a.yx;
    let var_1 = func_6(arg_3, func_6(Struct_1(arg_3.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1295f) * arg_1.a.x))), Struct_1(arg_1.a), arg_3).a.x, arg_1, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-func_2(vec2<u32>(4294967295u, u_input.d.x)).a.x), var_0.x, _wgslsmith_f_op_vec4_f32(func_3(~u_input.b.x)).x, arg_3.a.x)));
    var var_2 = Struct_1(arg_3.a);
    var_2 = func_5(_wgslsmith_div_f32(var_1.a.x, 1245f), Struct_1(arg_1.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_3.a.zxw), _wgslsmith_f_op_vec3_f32(round(var_2.a.xww)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, arg_1.a.x, var_0.x, arg_1.a.x)) - vec4<f32>(var_0.x, var_1.a.x, 2160f, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 768f, var_0.x, var_2.a.x)))))));
    let var_3 = func_6(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(822f, -693f)), func_5(var_1.a.x, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a.yzy))), func_2(u_input.b.xy)), arg_3);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-func_1(vec3<i32>(-arg_2.x, 1i, _wgslsmith_clamp_i32(arg_0, -39833i, arg_2.x)), vec4<i32>(-50156i, 1i, arg_0, arg_2.x) << (~u_input.e % vec4<u32>(32u))).a));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec2<bool>(true, 1u > u_input.b.x)), vec2<bool>(all(vec2<bool>(true, true)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), -824f > arg_3.x);
    let var_1 = 21671i;
    let var_2 = ~(-(~vec4<i32>(_wgslsmith_mod_i32(27610i, 8637i), 0i, var_1, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    let var_3 = func_1(_wgslsmith_sub_vec3_i32(min(~vec3<i32>(var_1, 0i, u_input.a.x), vec3<i32>(1i, -14405i, -44721i)), firstTrailingBit(-vec3<i32>(u_input.a.x, 0i, var_2.x))), countOneBits(vec4<i32>(u_input.a.x, var_2.x, abs(var_1), _wgslsmith_mult_i32(u_input.a.x, var_1) >> (~u_input.c % 32u))));
    let var_4 = abs(select(var_2.zwx, vec3<i32>(-(~(-1i)), _wgslsmith_sub_i32(var_1, ~var_1), var_1), select(select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), all(var_0)), vec3<bool>(all(var_0), true, false), select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(true, false, var_0.x), false))));
    return !vec2<bool>(var_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_8(func_7(-min(-11328i, u_input.a.x), func_6(func_1(u_input.a, vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(sign(946f)), func_5(2549f, Struct_1(vec4<f32>(1508f, -648f, -1120f, -335f)), vec3<f32>(1293f, -1300f, -1090f), Struct_1(vec4<f32>(-693f, -1085f, 2442f, -1381f))), Struct_1(vec4<f32>(-121f, -1175f, 358f, 1134f))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x), func_1(~vec3<i32>(u_input.a.x, -1i, 15430i), -vec4<i32>(u_input.a.x, u_input.a.x, 5994i, -26675i))), func_6(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-819f, 2093f, -1000f, 484f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -951f) * _wgslsmith_f_op_f32(-1000f + 361f)), Struct_1(func_6(Struct_1(vec4<f32>(520f, -226f, 1745f, 1738f)), 159f, Struct_1(vec4<f32>(-690f, -356f, 164f, -180f)), Struct_1(vec4<f32>(630f, -391f, 1390f, 952f))).a), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(438f, -1009f, -887f, 1415f))))), select(u_input.b, u_input.b, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)) | abs(vec3<u32>(u_input.c, 4294967295u, 4032u)), vec2<f32>(-442f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -224f))))), !select(select(func_8(Struct_1(vec4<f32>(888f, -1001f, -1111f, 1633f)), Struct_1(vec4<f32>(351f, 1497f, -776f, -1124f)), u_input.e.zxz, vec2<f32>(384f, 1410f)), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(false, true)))), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), all(vec2<bool>(true, true))));
    var var_1 = func_2(u_input.b.xz);
    var_0 = !vec2<bool>(_wgslsmith_mult_u32(u_input.b.x ^ 1u, ~2704u) >= 1u, !(!var_0.x));
    var var_2 = func_1(vec3<i32>(~(-23640i) << (u_input.c % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(7834i, u_input.a.x, -20053i), ~u_input.a), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 0i, u_input.a.x))), countOneBits(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -14355i, u_input.a.x ^ u_input.a.x))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(42175i, -1i, u_input.a.x, -1i), -vec4<i32>(0i, 0i, u_input.a.x, -18996i)) | abs(reverseBits(vec4<i32>(u_input.a.x, 0i, 70369i, u_input.a.x))))).a.wxz;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(u_input.d.x))).zxy + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a.www * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, -1226f, 1213f), vec3<f32>(-600f, var_2.x, var_1.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(65240u >> (_wgslsmith_mult_u32(~0u, ~u_input.c) % 32u), _wgslsmith_div_i32(2147483647i, ~(~(-19756i))));
}

