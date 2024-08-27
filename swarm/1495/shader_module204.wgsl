struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~u_input.c), arg_1.c.b.xx, ~countOneBits(vec2<u32>(abs(50924u), _wgslsmith_sub_u32(4294967295u, 0u))));
    var var_1 = arg_1;
    var_1 = Struct_2(Struct_1(max(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, arg_1.c.b.x), ~vec2<u32>(var_0.x, 117130u)), max(abs(vec2<u32>(arg_0.a.b.x, u_input.a)), ~vec2<u32>(arg_1.c.a.x, var_1.a.a.x))), var_1.a.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(-arg_0.a.c, -26550i), _wgslsmith_add_i32(firstTrailingBit(49658i), _wgslsmith_div_i32(arg_1.b.c, var_1.b.c))), !(-1041f == _wgslsmith_f_op_f32(arg_2 - 742f))), Struct_1(select(vec2<u32>(1u, ~u_input.a), ~(~vec2<u32>(1u, u_input.c)), arg_1.c.d), select(~var_1.a.b, ~vec4<u32>(4294967295u, var_1.c.b.x, 83097u, arg_0.a.a.x), false), arg_0.b.c, var_1.c.d), var_1.a);
    var_1 = Struct_2(Struct_1(vec2<u32>(var_1.a.a.x, _wgslsmith_sub_u32(var_1.b.a.x, 0u) << (~var_1.b.a.x % 32u)), vec4<u32>(var_1.c.b.x, 4294967295u, countOneBits(u_input.c) << (select(var_1.a.b.x, var_0.x, var_1.c.d) % 32u), 1u), -2147483647i, true), arg_1.c, Struct_1(firstLeadingBit(arg_0.c.b.yx), vec4<u32>(_wgslsmith_mod_u32(arg_1.b.a.x, abs(1u)), ~_wgslsmith_clamp_u32(55582u, arg_1.a.b.x, 45512u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c.a.x, arg_0.c.b.x), vec2<u32>(var_1.c.b.x, 1u)), arg_0.b.a), ~(u_input.a << (arg_0.b.b.x % 32u))), -33506i >> (((37899u & u_input.c) << (20984u % 32u)) % 32u), false));
    let var_2 = ~var_1.c.c;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(210f, _wgslsmith_f_op_f32(-403f - -380f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f - 602f) + _wgslsmith_f_op_f32(round(341f))))));
    var var_1 = arg_0.a.x;
    let var_2 = 17340i;
    let var_3 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(37090i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.x, _wgslsmith_div_i32(arg_0.c, arg_2.x)), -(~vec3<i32>(34567i, arg_2.x, arg_0.c)))), ~select(-1i, ~_wgslsmith_sub_i32(-24685i, var_2), arg_0.d));
    var_1 = arg_0.b.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -1756f), vec2<f32>(var_0, -1000f)) - vec2<f32>(781f, var_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-493f, var_0), vec2<f32>(var_0, var_0), vec2<bool>(false, arg_1.x))))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<u32>(31338u, reverseBits(~u_input.a)), vec4<u32>(0u, ~firstLeadingBit(6242u), 1u, ~1u), ~arg_1.x, all(!select(vec2<bool>(true, arg_2.x), arg_2.xy, true))), vec4<bool>(!arg_2.x, func_3(Struct_2(Struct_1(vec2<u32>(u_input.b, 104790u), vec4<u32>(64750u, 48297u, u_input.b, u_input.c), 2147483647i, true), Struct_1(vec2<u32>(u_input.b, u_input.a), vec4<u32>(u_input.b, 1u, u_input.b, u_input.a), -9369i, false), Struct_1(vec2<u32>(u_input.c, u_input.b), vec4<u32>(40203u, 15260u, 44477u, 3928u), -1i, true)), Struct_2(Struct_1(vec2<u32>(0u, u_input.c), vec4<u32>(u_input.c, u_input.a, 4358u, u_input.a), 2147483647i, true), Struct_1(vec2<u32>(u_input.b, 4294967295u), vec4<u32>(19396u, u_input.a, 1u, u_input.b), arg_1.x, true), Struct_1(vec2<u32>(u_input.c, u_input.c), vec4<u32>(17672u, u_input.a, 4294967295u, 0u), -1581i, true)), _wgslsmith_f_op_f32(trunc(-1236f))), select(true, true, select(!arg_2.x, true, all(arg_2))), any(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), func_3(Struct_2(Struct_1(vec2<u32>(63747u, u_input.c), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c), arg_1.x, arg_2.x), Struct_1(vec2<u32>(u_input.a, 1u), vec4<u32>(u_input.c, u_input.a, u_input.b, u_input.c), arg_1.x, true), Struct_1(vec2<u32>(u_input.a, u_input.c), vec4<u32>(u_input.c, u_input.b, u_input.a, 4294967295u), 2147483647i, false)), Struct_2(Struct_1(vec2<u32>(u_input.c, 0u), vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.b), arg_1.x, arg_2.x), Struct_1(vec2<u32>(u_input.b, 63467u), vec4<u32>(u_input.a, u_input.b, 41664u, u_input.a), -32068i, arg_2.x), Struct_1(vec2<u32>(4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 72453u, u_input.c), arg_1.x, false)), -177f)))), ~(~(~(arg_1.yw << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, arg_0.x))), arg_2.x))) - arg_0);
    let var_1 = !(!(!arg_2.x));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f))), -181f);
    var_0 = arg_0;
    return !(!(!(!(!arg_2.x))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = select(vec4<bool>(arg_2.x, true, true | any(arg_2), true), !vec4<bool>(true, false, all(arg_2.zx) && (arg_0 | true), !(!arg_2.x)), select(!(0i != arg_3.x), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_3.x, -24378i, arg_3.x, 2147483647i)), arg_3), arg_2), all(arg_2)));
    let var_1 = _wgslsmith_clamp_vec4_i32(max(arg_3, arg_3), vec4<i32>(arg_3.x, -min(-20882i, -1035i), -1i, arg_3.x), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(arg_3, countOneBits(arg_3)), vec4<i32>(-1i, _wgslsmith_add_i32(arg_3.x, 0i), 43749i, -arg_3.x) << (abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.b, u_input.a), vec4<u32>(41224u, u_input.b, 1u, u_input.c))) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(select(arg_3, vec4<i32>(35028i, -2147483647i, arg_3.x, 1i), vec4<bool>(arg_2.x, arg_0, false, arg_0)), arg_3, -vec4<i32>(2147483647i, 1i, 14102i, arg_3.x))));
    let var_2 = Struct_1(vec2<u32>(u_input.b, ~_wgslsmith_mod_u32(u_input.a, 16730u)), ~vec4<u32>(_wgslsmith_div_u32(u_input.b ^ 1064u, 4294967295u), _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.a), vec3<u32>(50012u, 70939u, 0u)), firstTrailingBit(1u)), countOneBits(~1u), ~_wgslsmith_sub_u32(u_input.b, u_input.c)), -(~((-58432i | var_1.x) >> (~1u % 32u))), any(arg_2.zz));
    var var_3 = vec2<i32>(-2147483647i, 23942i);
    return vec4<bool>(true, true, any(vec3<bool>(any(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, false, false, var_2.d), vec4<bool>(true, true, true, true))), arg_2.x, !(false & arg_2.x))), !(!(!var_0.x)));
}

fn func_1() -> i32 {
    var var_0 = (1u ^ abs(_wgslsmith_add_u32(4294967295u >> (u_input.a % 32u), ~u_input.a))) << (62122u % 32u);
    let var_1 = select(!vec4<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))), vec4<bool>(true, true, true, true), func_5(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2265f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) - _wgslsmith_f_op_f32(1389f - -602f)), true)), vec3<bool>(true, !any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, true)) & true), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(reverseBits(vec4<i32>(1i, -1i, 2643i, 37643i)), ~vec4<i32>(0i, -2147483647i, 5072i, -1i), func_2(vec2<f32>(-717f, 2024f), vec4<i32>(-1i, 2147483647i, -1i, -549i), vec3<bool>(true, true, true))))));
    var_0 = _wgslsmith_sub_u32(43979u, ~u_input.b | u_input.b);
    var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, ~u_input.b), abs(27226u), 1u);
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 0u)) & (vec2<u32>(4294967295u, u_input.b) & vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(54965u, u_input.b))), ~abs(vec4<u32>(u_input.b | 65744u, max(u_input.c, u_input.c), firstTrailingBit(24740u), u_input.c)), 0i, any(!var_1.yz) || true);
    return _wgslsmith_div_i32(var_2.c, min(-max(-var_2.c, _wgslsmith_sub_i32(var_2.c, var_2.c)), _wgslsmith_mult_i32(1i, -var_2.c)));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = ~abs(_wgslsmith_clamp_i32(i32(-1i) * -1i, arg_1, func_1())) | 4169i;
    var_0 = 2147483647i;
    var_0 = -2147483647i;
    let var_1 = Struct_1(~min(vec2<u32>(arg_2.c.a.x, 59889u), arg_2.c.b.xy), arg_2.a.b.b, 31951i, 1u >= ~_wgslsmith_clamp_u32(~arg_2.a.b.b.x, 66489u, countOneBits(27247u)));
    var_0 = firstLeadingBit(abs(min(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-36432i, 22247i), vec2<i32>(arg_2.a.b.c, var_1.c))) << (arg_2.a.a.b.x % 32u)));
    return arg_2.a;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1478f * _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) * _wgslsmith_f_op_f32(-972f + 133f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1937f, _wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(f32(-1f) * -605f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, -885f, -429f))))))), arg_0.c);
    var var_2 = arg_0;
    var var_3 = var_2.b;
    let var_4 = var_1.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_7(func_6(!(u_input.b == 4294967295u), func_1(), Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.a), vec4<u32>(1u, 67071u, 4403u, 20762u), 5482i, true), Struct_1(vec2<u32>(u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.c, 14526u), -61484i, false), Struct_1(vec2<u32>(u_input.b, 59707u), vec4<u32>(48956u, 0u, u_input.c, 36444u), 0i, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1369f, 1104f, 1783f)), Struct_1(vec2<u32>(87223u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, 48065u), 11586i, false)), 6173u >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(59696u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1200f, -169f)), -532f), 700f, _wgslsmith_f_op_f32(ceil(-1199f)))), Struct_1(_wgslsmith_mod_vec2_u32(func_6(true, 0i, Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a, 37979u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c), -13031i, true), Struct_1(vec2<u32>(u_input.c, 1u), vec4<u32>(u_input.a, u_input.c, 4294967295u, 25845u), -1i, true), Struct_1(vec2<u32>(38414u, 11244u), vec4<u32>(1u, 11665u, u_input.a, u_input.c), -2147483647i, false)), vec3<f32>(-2153f, -2341f, 1507f), Struct_1(vec2<u32>(0u, u_input.a), vec4<u32>(12091u, 0u, u_input.c, 40041u), 44635i, false)), true).b.b.xz, _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(50700u, u_input.b)), min(vec2<u32>(u_input.c, 0u), vec2<u32>(1u, u_input.a)))), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(45241u, u_input.c, 39716u, 4294967295u), vec4<u32>(10139u, u_input.c, u_input.c, u_input.a))), -8305i, firstLeadingBit(u_input.b) >= u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.x, -638f))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c.b.x, func_7(Struct_2(Struct_1(vec2<u32>(0u, u_input.b), vec4<u32>(var_0.a.a.b.x, var_0.c.b.x, 1u, 38093u), -2147483647i, var_0.a.b.d), Struct_1(vec2<u32>(4294967295u, 28078u), vec4<u32>(0u, u_input.b, u_input.c, u_input.a), 1i, true), var_0.a.c)).a.a.x, 1u, firstLeadingBit(u_input.c)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.a.a.a.x, 35263u), var_0.a.b.b.xxz), ~4294967295u, u_input.a)), firstTrailingBit(~1i), -1i & var_0.c.c, vec3<i32>(var_0.a.a.c, _wgslsmith_add_i32(func_1(), 38271i) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 1u), var_0.c.b.x) % 32u), -1i));
}

