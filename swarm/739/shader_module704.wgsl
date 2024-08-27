struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = ~u_input.b;
    let var_1 = !(!vec2<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, true)), arg_0));
    let var_2 = min(1u, u_input.a.x) >= max(18658u, u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(832f, 2578f, !(var_1.x || true))));
    let var_4 = u_input.a.x;
    return firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31726u, 0u, 1u) ^ vec3<u32>(u_input.a.x, u_input.a.x, var_4), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), var_4));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = Struct_4(select(select(arg_1.a.a, vec4<bool>(select(true, arg_1.b.c, false), !arg_1.e.d, true, true), !vec4<bool>(false, true, true, arg_1.d)), select(!vec4<bool>(arg_1.d, false, arg_1.e.d, arg_1.d), !(!arg_1.a.a), select(false, all(vec4<bool>(arg_1.b.a.x, false, true, true)), arg_1.e.d)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-560f)) - _wgslsmith_f_op_f32(arg_1.e.a.x * -1399f)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1743f - 1423f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 950f), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(812f, _wgslsmith_div_f32(993f, _wgslsmith_f_op_f32(max(var_1.x, -542f)))))));
    let var_3 = select(vec2<i32>(min(-60521i, 0i), u_input.b), vec2<i32>(u_input.b, -(~_wgslsmith_sub_i32(u_input.b, 1i))), all(var_0.a.xzx));
    let var_4 = Struct_4(select(select(arg_1.b.a, vec4<bool>(arg_1.a.a.x, false, !arg_1.e.d, !arg_1.d), true), vec4<bool>(false, true & !var_0.a.x, var_0.a.x, arg_1.b.c), arg_1.b.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -322f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_0.x - 740f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-121f, arg_0.x, var_1.x)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = u_input.a.x;
    var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, -1151f, -1000f)))), Struct_3(Struct_2(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(u_input.a.x, 0u, true), true), Struct_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), ~4294967295u, any(vec4<bool>(true, false, true, false))), func_3(true), false, Struct_1(vec3<f32>(616f, arg_0.x, -303f), vec3<u32>(u_input.a.x, 0u, u_input.a.x) | vec3<u32>(47611u, u_input.a.x, 4294967295u), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), u_input.b < u_input.b)))));
    var var_2 = ~(~_wgslsmith_div_vec2_i32(vec2<i32>(27640i, 20914i), vec2<i32>(u_input.b, -1i)) << (~u_input.a % vec2<u32>(32u))) | -_wgslsmith_sub_vec2_i32(vec2<i32>(max(2147483647i, u_input.b), i32(-1i) * -51868i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -11606i)) | min(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, u_input.b)));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~abs(u_input.a.x)), firstTrailingBit(firstTrailingBit(~52138u))), u_input.a.x);
    return vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a, u_input.a >> (u_input.a % vec2<u32>(32u)))), 56581u), u_input.a.x, select(~(~_wgslsmith_sub_u32(0u, u_input.a.x)), _wgslsmith_sub_u32(~(~4294967295u), ~(u_input.a.x | u_input.a.x)), true || (all(vec2<bool>(true, false)) | true)), u_input.a.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -530f), arg_0.a.x)))), 511f, _wgslsmith_f_op_f32(max(-192f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1380f)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1865f + -123f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -810f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -960f, 1000f, var_0.x))))))));
    var var_1 = vec2<bool>(all(select(!arg_1.www, select(select(arg_1.ywy, arg_1.wwx, vec3<bool>(true, false, true)), !arg_1.zyx, true), all(!vec4<bool>(true, true, false, arg_1.x)))), true);
    var_1 = arg_0.a.zw;
    let var_2 = 0i;
    return Struct_4(!arg_1);
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> u32 {
    let var_0 = func_5(arg_0, arg_0.a, vec3<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 21151u, 4294967295u, 9640u)), func_2(vec2<f32>(-161f, 870f))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), u_input.a.x)) >> (vec3<u32>(0u, ~(~4294967295u), 43040u >> (1u % 32u)) % vec3<u32>(32u)));
    let var_1 = all(arg_0.a.xz);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-520f, -1310f, -570f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(545f, 752f, 215f)))))) * vec3<f32>(_wgslsmith_f_op_f32(134f * _wgslsmith_f_op_f32(sign(-983f))), 358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)))), vec3<u32>(~18061u, u_input.a.x, func_3(var_0.a.x)), vec2<u32>(29140u, countOneBits(92921u)), !arg_0.a.x || ((var_1 == all(var_0.a.xyz)) && false));
    let var_3 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.c.x, 8175u, var_2.c.x, var_2.c.x)) ^ vec4<u32>(4294967295u, ~84731u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_2.c.x, 31022u), vec4<u32>(4294967295u, 1u, 0u, var_2.c.x)), countOneBits(0u)), ~countOneBits(vec4<u32>(0u, 10675u, var_2.b.x, u_input.a.x) ^ vec4<u32>(4294967295u, 4294967295u, 121601u, u_input.a.x))) << (_wgslsmith_add_vec4_u32(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_2.b.x, 114370u), vec4<u32>(4294967295u, u_input.a.x, 1u, var_2.c.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, u_input.a.x, 4294967295u, 1u) ^ vec4<u32>(var_2.c.x, 5974u, 20179u, u_input.a.x), vec4<u32>(var_2.c.x, var_2.b.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 33670u, reverseBits(u_input.a.x), _wgslsmith_mod_u32(0u, u_input.a.x)))) % vec4<u32>(32u));
    var_2 = Struct_1(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(floor(-530f)))), 653f), var_2.b, ~max(vec2<u32>(_wgslsmith_add_u32(var_2.b.x, var_3.x), firstLeadingBit(var_2.b.x)), _wgslsmith_div_vec2_u32(var_3.zy, var_3.yw)), func_5(Struct_4(vec4<bool>(var_1, false & var_0.a.x, var_2.d, arg_0.a.x)), func_5(arg_0, !(!vec4<bool>(false, arg_0.a.x, arg_0.a.x, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, 1u, var_3.x), var_3.wyz, var_3.yzx) & var_3.yzw).a, var_3.zzw >> (_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.c.x, 4294967295u, 0u), var_2.b) % vec3<u32>(32u))).a.x);
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1577f, _wgslsmith_f_op_f32(var_2.a.x * 204f))), _wgslsmith_f_op_f32(-var_2.a.x))).x;
}

fn func_6(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = -10960i;
    let var_1 = ~abs(abs(~vec4<u32>(u_input.a.x, 3546u, arg_1, 21046u))) | abs(reverseBits(vec4<u32>(reverseBits(u_input.a.x), arg_1 << (u_input.a.x % 32u), arg_1, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-256f)));
    var var_3 = func_5(Struct_4(!func_5(Struct_4(vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec3<u32>(arg_1, 72275u, u_input.a.x)).a), vec4<bool>(true, true, true, true), var_1.wyw).a.x;
    let var_4 = !(!func_5(Struct_4(vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), func_5(Struct_4(vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false), var_1.wyz).a), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, var_1.x, 67640u), vec3<u32>(arg_1, 4294967295u, arg_1))).a.x);
    return Struct_3(Struct_2(vec4<bool>(true, any(vec3<bool>(false, var_4, false)), any(func_5(Struct_4(vec4<bool>(false, false, false, true)), vec4<bool>(var_4, var_4, var_4, var_4), var_1.xwx).a), any(vec4<bool>(true, var_4, true, false))), _wgslsmith_clamp_u32(func_1(Struct_4(vec4<bool>(true, var_4, false, var_4)), 3415i), ~4294967295u, ~0u >> (1u % 32u)), true), Struct_2(!vec4<bool>(false, all(vec3<bool>(var_4, false, var_4)), all(vec4<bool>(false, var_4, true, var_4)), any(vec4<bool>(var_4, true, var_4, true))), 18248u, true), _wgslsmith_mod_u32(14770u << (1u % 32u), _wgslsmith_sub_u32(53733u, 1u)) | var_1.x, (~_wgslsmith_dot_vec3_i32(vec3<i32>(46114i, arg_0, var_0), vec3<i32>(-64952i, 2147483647i, var_0)) | _wgslsmith_sub_i32(-arg_0, 0i | arg_0)) > (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -10018i, 59010i, 2147483647i), ~vec4<i32>(var_0, u_input.b, 2147483647i, 2147483647i)) & -_wgslsmith_sub_i32(-1i, 5502i)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, -327f, -1062f) * vec3<f32>(-1444f, 952f, -691f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-639f, -1342f, 1161f))), vec3<bool>(false, true, false))))), var_1.www, vec2<u32>(~var_1.x, ~143656u | (u_input.a.x << (u_input.a.x % 32u))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(reverseBits(~(u_input.b << (u_input.a.x % 32u))) ^ u_input.b, firstLeadingBit(~_wgslsmith_sub_u32(~1u, func_1(Struct_4(vec4<bool>(true, false, true, false)), 7131i))));
    var var_1 = _wgslsmith_div_u32(select(~_wgslsmith_sub_u32(var_0.e.c.x, 1u), 4294967295u, false), ~_wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(var_0.c, 0u), ~var_0.c, false), abs(~var_0.c), _wgslsmith_mult_u32(~u_input.a.x, 22486u)));
    var_0 = Struct_3(func_6(-1966i, func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(839f)), _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(298f, var_0.e.a.x, var_0.e.a.x), Struct_3(var_0.b, var_0.b, var_0.a.b, var_0.e.d, Struct_1(var_0.e.a, vec3<u32>(4294967295u, u_input.a.x, 35747u), var_0.e.b.yx, true)))).x)).x).a, Struct_2(vec4<bool>(false, !all(vec3<bool>(var_0.b.a.x, false, var_0.a.a.x)), true, !(u_input.a.x > var_0.e.b.x)), ~(~97712u), true), ~(abs(var_0.a.b) & 1u) << (var_0.e.c.x % 32u), !(true & func_5(func_5(Struct_4(var_0.a.a), vec4<bool>(true, false, var_0.e.d, false), vec3<u32>(var_0.e.b.x, 31918u, var_0.c)), vec4<bool>(var_0.e.d, false, true, var_0.a.c), var_0.e.b).a.x), Struct_1(var_0.e.a, vec3<u32>(~1u, var_0.e.b.x, _wgslsmith_dot_vec2_u32(abs(var_0.e.c), var_0.e.b.xy)), var_0.e.b.yz, var_0.a.c));
    var var_2 = u_input.a;
    let var_3 = func_6(2147483647i, ~(~7761u)).a.a.zy;
    var_2 = vec2<u32>(countOneBits(4294967295u), ~_wgslsmith_sub_u32(~1u, 68279u));
    let var_4 = func_6(1i, 1u).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1603f - 318f)), 1u, (i32(-1i) * -60641i) << ((var_4.b | var_0.e.c.x) % 32u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, var_0.e.a.x, var_0.e.a.x))) * var_0.e.a))), func_2(vec2<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-775f, -2669f))))).ww);
}

