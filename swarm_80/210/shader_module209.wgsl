struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = !(!(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    var var_1 = vec4<u32>(max(_wgslsmith_mult_u32(1u, select(35649u, u_input.b, var_0) ^ reverseBits(0u)), ~(1u | ~arg_1)), arg_1, u_input.b, 37648u);
    let var_2 = select(arg_0.c.x | -1i, min(~(-49451i), -1i), all(vec4<bool>(var_0, !var_0, var_0, true))) | arg_0.a.x;
    var_1 = min(firstLeadingBit(abs(abs(vec4<u32>(var_1.x, 0u, 58484u, u_input.b)) ^ abs(vec4<u32>(15062u, u_input.b, 4294967295u, 6624u)))), firstLeadingBit(vec4<u32>(u_input.b, var_1.x, 1u, ~40972u)));
    var var_3 = Struct_1(vec4<i32>(-_wgslsmith_clamp_i32(1i, 11370i, arg_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(var_2, 0i)) >> (var_1.x % 32u), 17079i, u_input.a.x) & u_input.a, ~arg_0.c.x, vec4<i32>(abs(2147483647i) & arg_0.a.x, var_2 | var_2, select(arg_0.d, 1i, false), ~select(~arg_0.d, u_input.a.x, var_0)), -1i, -324f);
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~1u), var_0.c, 1u, 0u) << (vec4<u32>(func_3(arg_0.b, ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, var_0.d)), vec3<f32>(551f, 1315f, -1210f)), 1u, max(0u, max(arg_0.c, 0u)), 60780u) % vec4<u32>(32u)), select(vec4<u32>(3816u, 4294967295u, firstLeadingBit(20852u), max(var_0.c, 30343u)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.c, 21034u, 59278u), vec4<u32>(arg_0.c, u_input.b, 41901u, 45950u)) % vec4<u32>(32u)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(837u, arg_0.c, var_0.c, 4294967295u), vec4<u32>(arg_0.c, arg_0.c, 0u, arg_0.c)) << (~vec4<u32>(24706u, u_input.b, 41066u, var_0.c) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))));
    var_0 = Struct_3(Struct_1(firstLeadingBit(firstTrailingBit(vec4<i32>(var_0.b.d, -1i, -1i, arg_1.x) >> (vec4<u32>(u_input.b, u_input.b, 11186u, 0u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(max(u_input.a.x, select(-1i, arg_1.x, true)), ~(i32(-1i) * -19703i)), ~max(u_input.a, -vec4<i32>(var_0.b.b, -1i, 31623i, var_0.a.b)), -18349i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.e * arg_0.b.e) * -1000f)))), arg_0.a, 4294967295u, _wgslsmith_f_op_f32(arg_0.a.e * arg_0.a.e));
    var_0 = Struct_3(Struct_1(var_0.a.c, ~(~11879i), ~(~arg_1), arg_0.b.b, var_0.a.e), Struct_1(~(-_wgslsmith_div_vec4_i32(u_input.a, arg_1)), firstLeadingBit(max(firstTrailingBit(arg_1.x), i32(-1i) * -6232i)), -firstLeadingBit(~var_0.b.a), var_0.b.b, _wgslsmith_f_op_f32(step(var_0.b.e, _wgslsmith_f_op_f32(1458f - _wgslsmith_f_op_f32(round(-1297f)))))), max(3540u, ~(~0u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(sign(1707f))) + var_0.b.e));
    var_0 = Struct_3(var_0.a, var_0.a, 12377u, _wgslsmith_f_op_f32(select(arg_0.b.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f) * _wgslsmith_f_op_f32(-var_0.a.e)))), any(vec2<bool>(true, any(vec2<bool>(false, true)))))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(-arg_0.a.e)))) + _wgslsmith_f_op_f32(f32(-1f) * -529f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.e, _wgslsmith_f_op_f32(-arg_0.b.e), any(vec3<bool>(true, true, true)))) + arg_0.a.e);
    var var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~u_input.b, ~arg_0.c) | vec2<u32>(~firstTrailingBit(arg_0.c), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(54011u, u_input.b, 0u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(50548u, arg_0.c, u_input.b, 0u)), firstLeadingBit(vec4<u32>(u_input.b, arg_0.c, u_input.b, 30513u)))), ~_wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c, 16009u), vec2<u32>(1u, 0u))), reverseBits(vec2<u32>(1u, 0u))));
    var var_2 = func_2(Struct_3(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, 86687i), u_input.a), u_input.a.x, vec4<i32>(abs(arg_0.b.a.x), arg_0.a.c.x >> (var_1.x % 32u), arg_1 >> (u_input.b % 32u), arg_0.a.a.x), arg_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -114f)), arg_0.b, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.e) - _wgslsmith_f_op_f32(max(arg_0.b.e, 2969f)))), -(reverseBits(vec4<i32>(u_input.a.x, 1i, -20125i, arg_1)) & -vec4<i32>(arg_0.a.b, 2147483647i, -15483i, 1291i)) >> (vec4<u32>(var_1.x, u_input.b, _wgslsmith_div_u32(~arg_0.c, _wgslsmith_mod_u32(var_1.x, u_input.b)), 30684u) % vec4<u32>(32u))).b;
    var var_3 = _wgslsmith_f_op_f32(round(arg_0.b.e));
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(u_input.a.x | 5953i), (~var_2.b ^ ~14128i) >> (~(~57543u) % 32u)), 1i);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = select(!vec2<bool>(-1466f <= _wgslsmith_f_op_f32(ceil(arg_0.b.e)), arg_1), select(!(!(!vec2<bool>(arg_1, arg_1))), select(vec2<bool>(!arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(false, true)), arg_1), vec2<bool>(true, true));
    let var_1 = vec3<bool>(true, arg_1 | true, !(-_wgslsmith_clamp_i32(-2147483647i, -37878i, 2147483647i) <= (arg_3.a.x >> (637u % 32u))));
    var var_2 = _wgslsmith_mod_i32(func_4(func_2(Struct_3(Struct_1(u_input.a, 0i, vec4<i32>(-1i, -1i, arg_0.b.c.x, 25140i), arg_0.b.c.x, -160f), arg_3, u_input.b, arg_3.e), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(2147483647i, 28289i, -4259i, 69330i))), arg_2), -arg_3.c.x) | abs(_wgslsmith_div_i32(i32(-1i) * -arg_0.b.d, arg_2));
    var var_3 = _wgslsmith_f_op_f32(arg_3.e + _wgslsmith_f_op_f32(arg_0.a.e * _wgslsmith_f_op_f32(arg_3.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.e))))));
    var var_4 = -(~(-13418i));
    return Struct_3(Struct_1(vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(arg_2, 0i) >> (firstTrailingBit(63937u) % 32u), _wgslsmith_clamp_i32(u_input.a.x, arg_0.b.d << (32166u % 32u), 1i), arg_2), arg_3.d, vec4<i32>(-4166i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 10961u), vec2<u32>(45025u, 55600u)) % 32u), arg_0.b.d, -max(51839i, arg_0.b.c.x), _wgslsmith_mult_i32(~u_input.a.x, 10942i)), -arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1676f, 379f))))), arg_0.b, ~u_input.b, arg_3.e);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_4(func_2(func_1(Struct_2(arg_3, Struct_1(vec4<i32>(61624i, u_input.a.x, 62724i, 1i), 7352i, vec4<i32>(2147483647i, arg_0.a.a.x, u_input.a.x, -2147483647i), u_input.a.x, arg_0.b.e)), false, arg_3.c.x, func_2(arg_0, vec4<i32>(0i, -29732i, -1i, -2147483647i)).a), -arg_0.b.a).b, Struct_3(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, arg_3.c), vec4<i32>(arg_0.b.b, 2147483647i, 1522i, 2147483647i)), -(-47145i << (0u % 32u)), vec4<i32>(u_input.a.x, 40755i, 0i, -1685i) & u_input.a, ~arg_3.b, _wgslsmith_f_op_f32(abs(-607f))), func_1(Struct_2(Struct_1(vec4<i32>(arg_0.a.a.x, arg_3.a.x, 0i, u_input.a.x), u_input.a.x, vec4<i32>(arg_3.d, arg_0.a.c.x, arg_3.a.x, arg_3.d), arg_3.c.x, arg_3.e), func_1(Struct_2(arg_3, arg_3), true, 30980i, Struct_1(vec4<i32>(23119i, -19789i, arg_3.b, u_input.a.x), arg_0.b.a.x, vec4<i32>(-17656i, u_input.a.x, 2147483647i, arg_3.a.x), arg_0.b.c.x, -1333f)).b), _wgslsmith_f_op_f32(f32(-1f) * -320f) <= arg_0.d, abs(-5732i), func_1(Struct_2(arg_0.a, Struct_1(arg_0.b.a, -2147483647i, vec4<i32>(-32487i, arg_3.d, -1i, arg_3.c.x), arg_0.b.a.x, arg_3.e)), !arg_2, -113191i, arg_0.b).a).a, u_input.b << (arg_0.c % 32u), _wgslsmith_f_op_f32(sign(func_1(Struct_2(Struct_1(u_input.a, -2147483647i, vec4<i32>(-1i, 20321i, 15360i, 2147483647i), 28397i, 1208f), arg_0.b), arg_2, func_1(Struct_2(arg_3, arg_0.a), true, arg_0.b.d, Struct_1(u_input.a, -2147483647i, vec4<i32>(8942i, -28250i, 2147483647i, 18223i), 0i, arg_0.a.e)).b.c.x, Struct_1(arg_0.b.c, arg_3.a.x, arg_0.a.a, arg_0.a.b, -1851f)).d))));
    var var_1 = 1106f;
    var var_2 = var_0.b.b;
    var_0 = Struct_4(func_2(func_1(Struct_2(Struct_1(arg_3.a, var_2.b, u_input.a, 21786i, arg_0.a.e), arg_0.b), false, func_4(arg_0, func_2(Struct_3(Struct_1(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x), -10587i, var_2.c, 20743i, var_2.e), Struct_1(vec4<i32>(-24129i, 26571i, u_input.a.x, 0i), var_2.b, vec4<i32>(6378i, arg_0.b.c.x, 8417i, 8097i), u_input.a.x, arg_0.a.e), 0u, var_0.b.b.e), vec4<i32>(-2147483647i, u_input.a.x, arg_0.a.d, arg_0.b.d)).a.b), func_1(Struct_2(var_0.b.a, arg_3), var_0.b.a.b >= -22288i, arg_0.a.b, var_0.b.a).a), var_0.a.c).a, var_0.b);
    var var_3 = Struct_4(var_0.a, func_1(Struct_2(Struct_1(arg_0.b.c >> (vec4<u32>(u_input.b, u_input.b, u_input.b, var_0.b.c) % vec4<u32>(32u)), _wgslsmith_sub_i32(-44724i, 40166i), max(vec4<i32>(-28375i, var_2.c.x, arg_3.c.x, -1i), u_input.a), _wgslsmith_sub_i32(var_0.a.c.x, var_2.d), arg_0.a.e), Struct_1(max(vec4<i32>(-2147483647i, u_input.a.x, arg_3.c.x, arg_3.d), vec4<i32>(-1i, arg_0.a.b, var_2.d, 1i)), arg_0.a.d, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.b.a.b, var_0.a.a.x, -93566i), arg_3.a), var_2.b, arg_3.e)), u_input.b > var_0.b.c, arg_3.b, var_0.b.b));
    return vec4<i32>(func_1(Struct_2(arg_0.b, func_1(Struct_2(var_3.b.a, arg_0.a), true, max(var_2.b, arg_3.a.x), func_1(Struct_2(Struct_1(vec4<i32>(-1i, -26182i, var_3.b.a.d, -2147483647i), 52129i, var_0.a.c, -2147483647i, -110f), var_3.b.b), arg_1.x, u_input.a.x, arg_0.b).b).b), false, select(_wgslsmith_div_i32(27041i, arg_0.a.d), _wgslsmith_mod_i32(u_input.a.x ^ 1i, -2830i), ~var_0.b.c <= (var_3.b.c & 5014u)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(21408i, 41569i, 8317i, 27279i), ~var_3.b.a.c), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_2.c.yyx, var_3.b.b.a.yxy), u_input.a.x), func_1(Struct_2(Struct_1(vec4<i32>(60022i, 12250i, var_0.a.d, var_3.b.b.c.x), 0i, arg_0.b.a, var_2.b, 1655f), arg_3), arg_2 || false, -1i, var_3.b.b).b.c, func_4(func_2(Struct_3(var_0.b.a, var_3.a, 0u, -1547f), u_input.a), 1i), _wgslsmith_f_op_f32(max(func_1(Struct_2(Struct_1(vec4<i32>(17731i, var_3.b.b.d, -1i, var_2.a.x), 7341i, u_input.a, arg_0.b.d, var_0.a.e), var_0.a), arg_2, arg_3.b, Struct_1(vec4<i32>(var_3.a.c.x, var_0.b.a.b, u_input.a.x, -40515i), arg_0.a.b, vec4<i32>(arg_3.d, -17055i, u_input.a.x, arg_3.c.x), u_input.a.x, 1132f)).d, arg_3.e)))).b.d, u_input.a.x, -8678i, var_0.b.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(countOneBits(firstLeadingBit(~17485u)) ^ _wgslsmith_mult_u32(3211u, ~u_input.b), 55553u);
    var_0 = ~vec2<u32>(~var_0.x, ~(u_input.b ^ u_input.b)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x) << (_wgslsmith_div_vec2_u32(~vec2<u32>(9439u, u_input.b), select(vec2<u32>(1u, 23717u), vec2<u32>(var_0.x, 4294967295u), vec2<bool>(false, true))) % vec2<u32>(32u)), vec2<u32>(0u, _wgslsmith_add_u32(var_0.x, 0u)) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 2714u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, u_input.b))) % vec2<u32>(32u));
    var var_1 = Struct_4(Struct_1(-u_input.a, ~countOneBits(64946i) >> (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(721u, var_0.x, 13386u, u_input.b), vec4<u32>(8286u, 0u, var_0.x, 31120u)), 17631u) % 32u), u_input.a, ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-612f * 1965f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)))), Struct_3(Struct_1(func_5(func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec4<i32>(-55351i, 0i, 1i, u_input.a.x), u_input.a.x, 539f), Struct_1(u_input.a, 0i, u_input.a, -3220i, 959f)), true, -1980i, Struct_1(u_input.a, 1i, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, -791f)), vec4<bool>(true, true, true, true), false, func_1(Struct_2(Struct_1(vec4<i32>(-16623i, -34293i, -2147483647i, 2147483647i), u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i), u_input.a.x, 1000f), Struct_1(vec4<i32>(u_input.a.x, 11396i, -20108i, u_input.a.x), -731i, u_input.a, u_input.a.x, 514f)), false, 31344i, Struct_1(vec4<i32>(u_input.a.x, 10263i, -38554i, 0i), u_input.a.x, vec4<i32>(u_input.a.x, -23811i, 2147483647i, -2147483647i), u_input.a.x, 820f)).a), -2147483647i, vec4<i32>(9341i, -u_input.a.x, -u_input.a.x, -1i), abs(u_input.a.x), _wgslsmith_f_op_f32(-1f)), Struct_1(u_input.a, func_2(func_2(Struct_3(Struct_1(vec4<i32>(-27279i, u_input.a.x, u_input.a.x, u_input.a.x), 1i, u_input.a, u_input.a.x, -1000f), Struct_1(u_input.a, -799i, u_input.a, u_input.a.x, -1000f), u_input.b, 212f), vec4<i32>(6051i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a).a.d, _wgslsmith_sub_vec4_i32(vec4<i32>(-24862i, -2147483647i, 2147483647i, 0i), ~vec4<i32>(u_input.a.x, -2147483647i, -1i, 16340i)), i32(-1i) * -u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-534f, 484f)), 494f))), ~(~u_input.b << (u_input.b % 32u)), -1169f));
    let var_2 = vec3<bool>(true, ~_wgslsmith_mult_i32(1i, u_input.a.x) <= abs(_wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, abs(-2147483647i))), select(firstLeadingBit(u_input.b), abs(var_1.b.c), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))) == 1u);
    var var_3 = func_2(func_2(Struct_3(var_1.b.b, var_1.a, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e) - _wgslsmith_f_op_f32(var_1.b.a.e - var_1.a.e))), func_5(Struct_3(Struct_1(u_input.a, u_input.a.x, vec4<i32>(var_1.b.a.b, var_1.b.b.b, 19774i, u_input.a.x), var_1.b.b.d, var_1.a.e), var_1.b.a, var_0.x, -780f), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), !var_2.x, var_1.b.b) & (func_1(Struct_2(var_1.b.a, var_1.a), var_2.x, var_1.a.c.x, var_1.b.b).b.a >> (~vec4<u32>(4294967295u, 1u, 79367u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, var_1.a.b, firstTrailingBit(var_1.b.b.a.x), -25011i), _wgslsmith_add_vec4_i32(~func_5(var_1.b, vec4<bool>(false, var_2.x, false, var_2.x), var_2.x, Struct_1(var_1.a.c, -49442i, vec4<i32>(u_input.a.x, var_1.b.a.d, var_1.a.d, var_1.a.a.x), u_input.a.x, 1456f)), -vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), func_2(Struct_3(var_1.b.a, Struct_1(var_1.a.c, var_1.a.d, vec4<i32>(-2147483647i, 0i, -2147483647i, -2147483647i), 0i, 2110f), 1u, _wgslsmith_f_op_f32(exp2(var_1.a.e))), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1.b.b.c.x), _wgslsmith_mod_i32(-1990i, -2147483647i), abs(var_1.a.c.x), var_1.a.d)).b.a)).b;
    var_1 = Struct_4(func_2(Struct_3(Struct_1(select(var_3.c, vec4<i32>(-26961i, 36755i, 37712i, 1i), true), 1i, max(var_3.c, var_3.c), var_3.d, _wgslsmith_f_op_f32(var_3.e - var_3.e)), Struct_1(_wgslsmith_mult_vec4_i32(var_1.a.c, u_input.a), _wgslsmith_mod_i32(31971i, -7799i), func_2(Struct_3(Struct_1(vec4<i32>(13082i, 84606i, -19941i, -1i), 0i, var_1.a.a, 1i, var_1.a.e), var_1.b.a, var_1.b.c, var_3.e), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_3.d)).b.a, _wgslsmith_mult_i32(u_input.a.x, var_1.b.a.a.x), -787f), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -336f)), u_input.a).a, var_1.b);
    var_1 = Struct_4(var_1.a, func_1(Struct_2(func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, -1i, -54215i, 14695i), -1i, var_3.a, 18376i, -1453f), Struct_1(vec4<i32>(1320i, -3036i, 36939i, 44212i), 38014i, var_3.c, -16091i, 188f)), var_2.x, -2491i, var_1.b.a).b, var_1.b.a), var_2.x, ~abs(-25631i) ^ abs(_wgslsmith_mod_i32(2147483647i, u_input.a.x)), var_1.a));
    var_0 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 119054u), vec2<u32>(4294967295u, 7244u) >> (vec2<u32>(var_1.b.c, 0u) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(~8216u, ~29544u), vec2<u32>(~var_1.b.c, 1u), ~vec2<u32>(8575u, var_1.b.c)), ~max(countOneBits(vec2<u32>(15934u, var_0.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 4521u), vec2<u32>(25615u, var_0.x), vec2<u32>(4294967295u, u_input.b) & vec2<u32>(17051u, var_1.b.c))));
    var_3 = func_1(Struct_2(func_2(Struct_3(Struct_1(var_3.c, -922i, vec4<i32>(-2147483647i, 32842i, var_3.c.x, 1i), -39670i, -198f), var_1.b.a, ~4294967295u, 1636f), -(var_1.a.c >> (vec4<u32>(0u, u_input.b, var_0.x, 4294967295u) % vec4<u32>(32u)))).a, var_1.b.a), var_2.x, _wgslsmith_clamp_i32(~func_5(Struct_3(var_1.a, var_1.a, 15067u, var_3.e), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, false)), true, func_2(Struct_3(var_1.b.a, var_1.b.a, var_0.x, var_3.e), u_input.a).a).x, -var_1.a.d, ~(-1i)), var_1.a).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a.c, ~var_1.b.c | ~var_1.b.c, firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_3.d, var_1.a.a.x)), vec2<i32>(var_1.a.a.x, var_3.d)), _wgslsmith_mod_vec2_i32(func_2(Struct_3(Struct_1(var_3.c, -15134i, vec4<i32>(u_input.a.x, var_1.b.b.d, -2147483647i, u_input.a.x), var_1.b.a.d, 1096f), Struct_1(var_3.a, var_3.c.x, vec4<i32>(var_1.a.d, 15549i, -949i, -26989i), 0i, 285f), var_0.x, -1115f), var_3.a).b.a.ww, firstLeadingBit(var_1.a.a.zw)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a.c.wz, vec2<i32>(var_1.a.a.x, -23173i)), -vec2<i32>(-49393i, var_3.a.x)))));
}

