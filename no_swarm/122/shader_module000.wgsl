struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u, u_input.a.x), 34347u);
    var var_1 = Struct_1(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1815f, 155f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -831f))), _wgslsmith_f_op_f32(f32(-1f) * -1228f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -280f))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1369f, -1173f, false))))))), u_input.a.x, select(u_input.a.zx ^ vec2<u32>(45734u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec2<u32>(reverseBits(u_input.a.x) >> (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u), max(~55534u, 4294967295u)), true));
    return _wgslsmith_add_vec4_i32(var_1.a, ~vec4<i32>(firstLeadingBit(var_1.a.x), var_1.a.x, _wgslsmith_sub_i32(7235i, var_1.a.x), max(-11355i, var_1.a.x))) & vec4<i32>(-46015i, var_1.a.x, -var_1.a.x << (_wgslsmith_sub_u32(~var_1.d, var_1.d) % 32u), -5073i);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    let var_0 = 1i;
    var var_1 = Struct_2(arg_1.a, 637f);
    let var_2 = true;
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(~arg_1.a.a << (u_input.a % vec4<u32>(32u)), 1162f, _wgslsmith_f_op_f32(-var_1.b), 0u, _wgslsmith_div_vec2_u32(abs(countOneBits(vec2<u32>(1u, 4294967295u))), vec2<u32>(var_1.a.e.x, ~arg_1.a.d))), _wgslsmith_f_op_f32(981f - -165f));
    return !var_3;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = ~(~(~_wgslsmith_mod_vec3_u32(u_input.a.yzy, ~u_input.a.wyz)));
    let var_1 = ~u_input.a;
    var_0 = firstLeadingBit(var_1.wxx);
    let var_2 = -683f;
    let var_3 = select(select(!(!(!vec3<bool>(false, arg_0, false))), vec3<bool>(true, false, func_4(!vec4<bool>(true, false, false, arg_0), Struct_2(Struct_1(arg_1.a, var_2, arg_1.c, 4294967295u, arg_1.e), arg_1.b), func_3())), select(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, true), true), !vec3<bool>(arg_0, arg_0, true), false), !vec3<bool>(arg_0, arg_0, arg_0), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0)))), vec3<bool>(false, arg_0 | !func_4(vec4<bool>(arg_0, arg_0, true, false), Struct_2(Struct_1(vec4<i32>(arg_1.a.x, -889i, 0i, arg_1.a.x), arg_1.b, var_2, 4294967295u, arg_3), arg_1.c), vec4<i32>(-1i, 1i, 48506i, -39121i)), true & any(!vec3<bool>(arg_0, arg_0, arg_0))), !(!(arg_2 == -600f) && ((2357i > arg_1.a.x) && arg_0)));
    return Struct_2(Struct_1(~arg_1.a, -756f, var_2, 377u, vec2<u32>(33398u, min(0u, 47242u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_0.x), vec2<u32>(var_1.x, 0u)) % 32u))), _wgslsmith_div_f32(1043f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(ceil(-755f))), _wgslsmith_f_op_f32(f32(-1f) * -142f), !any(vec2<bool>(false, arg_0))))));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b)) * _wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2083f + -312f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-298f * arg_2.a.b)))), -503f)), _wgslsmith_f_op_f32(f32(-1f) * -488f));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_2.a.b), -349f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-432f, -1000f, arg_2.a.c)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b, var_0.x, var_0.x))))))));
    let var_1 = vec4<u32>(~(arg_1.x ^ _wgslsmith_div_u32(arg_1.x, 2186u)), 0u, 1u, u_input.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(step(585f, _wgslsmith_f_op_f32(ceil(var_0.x))))), 859f, func_2(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true)), arg_2.a, _wgslsmith_f_op_f32(select(-1443f, _wgslsmith_f_op_f32(trunc(var_0.x)), arg_2.a.b >= var_0.x)), ~(~u_input.a.wz)).b) * vec3<f32>(arg_2.b, _wgslsmith_div_f32(553f, arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-436f - var_0.x) * _wgslsmith_f_op_f32(abs(arg_2.b)))));
    var var_2 = (-arg_0 | arg_0) << (var_1.x % 32u);
    return firstTrailingBit(select(_wgslsmith_div_i32(i32(-1i) * -arg_0, ~arg_2.a.a.x), select(-16078i, ~countOneBits(arg_2.a.a.x), true), false));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<u32>(8006u, arg_3.a.e.x);
    var var_1 = func_2(false, Struct_1(abs(~vec4<i32>(arg_3.a.a.x, -2147483647i, 46506i, -29681i) & _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_3.a.a.x, arg_0.x, arg_0.x), arg_3.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) - _wgslsmith_div_f32(555f, arg_3.a.b)), 1080f, 1u | ~var_0.x, vec2<u32>(_wgslsmith_mult_u32(arg_3.a.d << (u_input.a.x % 32u), 4294967295u | arg_3.a.d), 45553u)), -742f, arg_3.a.e).a;
    var var_2 = func_2(var_1.d > firstLeadingBit(~_wgslsmith_clamp_u32(92859u, 4294967295u, var_1.d)), func_2(!(!(1i <= var_1.a.x)), func_2(false, func_2(true, Struct_1(arg_3.a.a, 1753f, var_1.c, 18770u, var_1.e), _wgslsmith_f_op_f32(-arg_3.a.c), arg_3.a.e & u_input.a.yy).a, arg_3.a.c, abs(vec2<u32>(var_1.e.x, 1u))).a, _wgslsmith_f_op_f32(-111f + arg_3.b), arg_3.a.e).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(743f + 707f))), min(u_input.a.wz, ~vec2<u32>(_wgslsmith_mod_u32(var_0.x, arg_3.a.e.x), 4294967295u))).a;
    var var_3 = vec3<u32>(var_0.x, ~_wgslsmith_clamp_u32(0u, u_input.a.x, 4294967295u & _wgslsmith_mod_u32(arg_3.a.d, var_0.x)), ~min(func_2(arg_2, arg_3.a, var_2.b, ~vec2<u32>(var_1.e.x, var_2.e.x)).a.d, 0u));
    var_0 = var_2.e;
    return arg_3.a;
}

fn func_1() -> f32 {
    var var_0 = func_6(vec3<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, -1i), reverseBits(abs(-1i)), func_5(~(-2147483647i), ~vec4<u32>(u_input.a.x, 9044u, u_input.a.x, 1u), func_2(false, Struct_1(vec4<i32>(19945i, -49001i, 1i, -2147483647i), -547f, 2501f, 4294967295u, u_input.a.zz), 124f, u_input.a.zz))) ^ firstLeadingBit(select(-vec3<i32>(-1i, 22700i, -1i), vec3<i32>(1i, 1i, 1i), func_4(vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec4<i32>(-40371i, 1i, 695i, 2147483647i), 1000f, -1557f, u_input.a.x, u_input.a.xx), 302f), vec4<i32>(1i, -16622i, -1i, 19653i)))), vec4<bool>(_wgslsmith_sub_i32(countOneBits(2147483647i), -32515i) >= (_wgslsmith_dot_vec2_i32(vec2<i32>(-119i, -1i), vec2<i32>(-18983i, -26110i)) ^ -1i), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), true, true), true, Struct_2(func_2(-741f < _wgslsmith_f_op_f32(round(-1000f)), func_2(any(vec2<bool>(true, true)), Struct_1(vec4<i32>(-1i, 40620i, 0i, -64550i), -932f, -103f, 0u, u_input.a.xx), _wgslsmith_div_f32(637f, -647f), u_input.a.zy).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-411f - 311f))), vec2<u32>(42234u, firstTrailingBit(u_input.a.x))).a, _wgslsmith_f_op_f32(150f * _wgslsmith_div_f32(-162f, func_2(true, Struct_1(vec4<i32>(1i, -31227i, 1i, 2147483647i), 1043f, -946f, u_input.a.x, vec2<u32>(u_input.a.x, 149u)), 1664f, vec2<u32>(57671u, 26275u)).b))));
    let var_1 = vec2<bool>(any(vec3<bool>(true, (var_0.a.x ^ var_0.a.x) < ~(-4112i), true)), select(!(67853u > reverseBits(u_input.a.x)), true, !((1000f >= var_0.c) && false)));
    var var_2 = _wgslsmith_f_op_f32(min(-442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-423f - var_0.c), var_0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) * _wgslsmith_f_op_f32(var_0.c + -895f))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, 27144i, 0i, var_0.a.x)), _wgslsmith_f_op_f32(-701f + -219f), var_0.b, ~var_0.d, reverseBits(vec2<u32>(u_input.a.x, 1u))), var_0.c, var_0.e).b * -692f) - 1f);
    var var_3 = func_2(var_1.x, Struct_1(vec4<i32>(0i, countOneBits(~var_0.a.x), -2147483647i, -23323i), _wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(var_0.b - var_0.b), false)), u_input.a.x, vec2<u32>(var_0.e.x, max(0u, firstLeadingBit(4294967295u)))), var_0.b, func_6(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x)), var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, var_0.a.x)), var_0.a.zyz | vec3<i32>(var_0.a.x, var_0.a.x, -38460i)), vec4<bool>(!any(vec4<bool>(false, true, false, var_1.x)), true, (-27558i < var_0.a.x) & true, !var_1.x), true, func_2(!var_1.x != (-9184i >= var_0.a.x), Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), -622f, _wgslsmith_f_op_f32(f32(-1f) * -1418f), var_0.e.x, vec2<u32>(31238u, u_input.a.x)), -868f, vec2<u32>(var_0.d, 4294967295u))).e).a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(988f, var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-var_3.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(541f))))))));
}

fn func_7(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = func_2(false, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)), _wgslsmith_clamp_vec2_u32(arg_0.e, firstLeadingBit(arg_0.e), vec2<u32>(u_input.a.x, arg_0.d)));
    var var_1 = vec3<i32>(var_0.a.a.x, -arg_0.a.x, _wgslsmith_add_i32(reverseBits(~var_0.a.a.x), firstLeadingBit(-9964i)));
    var var_2 = var_0.a.a.wx;
    let var_3 = vec4<f32>(1f, _wgslsmith_f_op_f32(arg_0.c + -1194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), -425f);
    var var_4 = _wgslsmith_mod_i32(-1i, var_1.x & -(~var_1.x | -35600i));
    return Struct_1(vec4<i32>(var_2.x, ~1i, abs(-9664i), _wgslsmith_mult_i32(~(1i << (arg_0.d % 32u)), ~(-2147483647i))), 680f, _wgslsmith_f_op_f32(sign(1265f)), 0u, ~(~min(func_6(vec3<i32>(arg_0.a.x, 1i, -1i), vec4<bool>(arg_1, true, true, arg_1), true, Struct_2(Struct_1(vec4<i32>(var_0.a.a.x, var_1.x, 42419i, var_0.a.a.x), arg_0.b, 2194f, u_input.a.x, vec2<u32>(var_0.a.e.x, var_0.a.e.x)), 1996f)).e, _wgslsmith_mult_vec2_u32(u_input.a.wx, vec2<u32>(var_0.a.e.x, 5293u)))));
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = -(vec2<i32>(arg_0.a.x, firstTrailingBit(arg_0.a.x) | abs(83180i)) << (select(~(vec2<u32>(arg_2, u_input.a.x) ^ vec2<u32>(1u, 22220u)), arg_0.e, !(!vec2<bool>(true, arg_1))) % vec2<u32>(32u)));
    let var_1 = arg_0;
    let var_2 = Struct_2(func_7(func_6(-countOneBits(vec3<i32>(-1i, 1i, var_0.x)), vec4<bool>(!arg_1, all(vec3<bool>(arg_1, arg_1, false)), false, arg_0.c >= 958f), arg_1 && !arg_1, func_2(arg_1, Struct_1(vec4<i32>(14291i, -6134i, -8522i, 0i), 345f, -422f, 1u, vec2<u32>(arg_2, arg_2)), func_2(arg_1, Struct_1(var_1.a, -127f, arg_0.b, 802u, u_input.a.yw), arg_0.b, vec2<u32>(arg_2, 4294967295u)).b, _wgslsmith_add_vec2_u32(arg_0.e, arg_0.e))), any(vec2<bool>(arg_1, false)) | any(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), true))), _wgslsmith_f_op_f32(-187f + 2016f));
    let var_3 = _wgslsmith_mod_i32(arg_0.a.x, ~var_2.a.a.x);
    var_0 = ~firstLeadingBit(abs(vec2<i32>(0i, var_0.x) << (vec2<u32>(0u, var_1.d) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(var_1.e, vec2<u32>(var_2.a.d, arg_2)) % vec2<u32>(32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select((vec4<i32>(2147483647i, -2147483647i, -35493i, -18594i) << (vec4<u32>(u_input.a.x, 18940u, u_input.a.x, 46382u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a.x, 0u, 71682u, u_input.a.x) % vec4<u32>(32u)), select(vec4<i32>(1i, 38454i, -30279i, 0i) >> (vec4<u32>(346u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-1i, 2147483647i, -3558i, -41108i), vec4<bool>(false, true, false, false)), true) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1831f * 306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1470f) + _wgslsmith_f_op_f32(1361f * 356f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(146f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f - _wgslsmith_div_f32(-1365f, -2444f)))), u_input.a.x ^ 3594u, u_input.a.wy);
    var var_1 = func_8(func_7(Struct_1(countOneBits(min(var_0.a, var_0.a)), 704f, _wgslsmith_f_op_f32(func_1()), ~select(22767u, var_0.d, true), ~vec2<u32>(var_0.d, var_0.d)), true), (var_0.a.x << (_wgslsmith_sub_u32(1u, 1u) % 32u)) < func_6(_wgslsmith_mod_vec3_i32(min(var_0.a.yzy, var_0.a.zzz), vec3<i32>(-2885i, var_0.a.x, var_0.a.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), any(vec3<bool>(false, true, true))), true, func_2(true, func_7(var_0, true), _wgslsmith_f_op_f32(-969f + -1600f), var_0.e)).a.x, _wgslsmith_mult_u32(0u, var_0.e.x));
    var var_2 = 24986u;
    let var_3 = vec2<u32>(var_0.e.x, var_1.e.x);
    let var_4 = func_2(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(true, false, false))), var_0, _wgslsmith_f_op_f32(-var_1.b), reverseBits(var_0.e));
    var var_5 = Struct_2(var_0, func_7(Struct_1(-(~var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(241f * var_4.b), var_4.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f - var_4.b) + _wgslsmith_f_op_f32(ceil(-592f))), 1u, u_input.a.wx), !all(vec4<bool>(false, false, true, false))).c);
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

