struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = arg_1.c.d;
    var_0 = 1353f;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(min(~(~1u), arg_1.c.c.x), ~(~(~5366u))), (firstTrailingBit(firstTrailingBit(1u)) << (~10433u % 32u)) | u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mod_u32(~4294967295u, 15435u)), min(arg_1.b ^ (u_input.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.c.x, 0u, u_input.a.x), arg_1.c.c.xyy)), countOneBits(firstLeadingBit(arg_1.c.c.x))));
    let var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false))));
    var_0 = -389f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 810f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-122f)), 1978f), _wgslsmith_f_op_f32(sign(1410f)))) + vec4<f32>(1219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(485f))), 252f, -731f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1.e.a, Struct_4(vec2<i32>(arg_1.a.a, 2147483647i), arg_1.e.c.x, Struct_1(1i, ~arg_1.e.a, _wgslsmith_mult_vec4_u32(arg_1.e.c, arg_0.c), _wgslsmith_f_op_f32(-580f + arg_0.d))))));
    let var_1 = ~(~arg_0.c.x);
    var var_2 = abs(abs(_wgslsmith_sub_vec4_u32(arg_1.e.c, arg_0.c))) & countOneBits(abs(arg_0.c));
    let var_3 = Struct_4(~vec2<i32>(-2147483647i, select(22545i, -44162i, arg_0.a != 0i)), min(65452u, ~max(~var_1, ~6322u)), Struct_1(~(~(~(-32817i))), ~(-arg_0.a) ^ ~(-38126i), vec4<u32>(~11597u, abs(arg_1.e.c.x), 0u, ~firstLeadingBit(arg_3)), -1744f));
    let var_4 = var_0.x;
    return _wgslsmith_div_i32(-1i, 2147483647i);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(min(_wgslsmith_div_vec4_i32(arg_0, arg_0), -arg_0)), arg_0), -(~(-25283i)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~18983u, _wgslsmith_mult_u32(0u, u_input.a.x), 0u, 47605u), vec4<u32>(18564u, 0u, 8007u, 31645u)), ~4294967295u, _wgslsmith_mod_u32(max(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a)), ~0u), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x << (u_input.a.x % 32u), min(u_input.a.x, 47533u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-951f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + 266f) * _wgslsmith_f_op_f32(sign(-129f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(38956i | arg_0.x, Struct_4(vec2<i32>(arg_1, arg_1), 0u, Struct_1(arg_0.x, arg_1, vec4<u32>(38357u, u_input.a.x, 115523u, 5365u), var_0.x)))).x, _wgslsmith_f_op_f32(round(-149f))))));
    var_1 = Struct_1(max(arg_0.x, abs(reverseBits(~arg_0.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-var_1.a, 1i, _wgslsmith_sub_i32(3092i, -46248i)), ~(vec3<i32>(var_1.b, arg_1, arg_0.x) ^ vec3<i32>(36870i, 1i, arg_0.x))), vec3<i32>(2147483647i, func_2(Struct_1(-2147483647i, -1697i, var_1.c, var_0.x), Struct_2(Struct_1(0i, arg_0.x, vec4<u32>(109475u, 2258u, var_1.c.x, 4294967295u), var_0.x), true, vec4<f32>(-698f, -2130f, 1065f, var_0.x), -308f, Struct_1(var_1.b, arg_0.x, vec4<u32>(23280u, u_input.a.x, 75674u, u_input.a.x), -2534f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, var_0.x)), max(1u, 31085u)), ~(-2147483647i))), ~vec4<u32>(~15286u ^ u_input.a.x, 29092u, _wgslsmith_add_u32(2377u, ~var_1.c.x), ~7954u), var_1.d);
    var var_2 = Struct_1(2147483647i, firstLeadingBit(-48938i) << (countOneBits(countOneBits(27582u)) % 32u), _wgslsmith_sub_vec4_u32(select(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.c.x) | vec4<u32>(var_1.c.x, u_input.a.x, var_1.c.x, 5862u)), countOneBits(~var_1.c), false), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x | var_1.c.x, u_input.a.x >> (26152u % 32u), var_1.c.x, var_1.c.x | var_1.c.x), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.c.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 52251u, 0u, u_input.a.x), vec4<u32>(var_1.c.x, 35132u, var_1.c.x, u_input.a.x))))), _wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(f32(-1f) * -1351f)));
    return Struct_3(-countOneBits(~arg_0), Struct_2(Struct_1(arg_1, _wgslsmith_sub_i32(1i, -arg_1), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(109f)))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-2147483647i, Struct_4(arg_0.yw, 19110u, Struct_1(0i, arg_1, vec4<u32>(4294967295u, u_input.a.x, var_2.c.x, var_2.c.x), -483f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -954f, var_2.d, -114f)))))), -276f, Struct_1(-2147483647i, ~2147483647i & _wgslsmith_mult_i32(2147483647i, var_2.b), (var_1.c | vec4<u32>(4294967295u, var_2.c.x, 0u, 0u)) << (vec4<u32>(34943u, 12886u, var_2.c.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_2.d))), vec4<bool>((-1i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b, -58639i), arg_0.yxx)) != _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-10407i, var_1.a, 0i, -2147483647i)), all(vec3<bool>(true, true, true)), !(!any(vec3<bool>(true, false, false))), !any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d))))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    var var_0 = func_4(~(~(vec4<i32>(arg_1.c.b, arg_0.a, arg_0.a, 0i) << (arg_1.c.c % vec4<u32>(32u))) ^ vec4<i32>(func_2(arg_0, Struct_2(Struct_1(46243i, arg_1.c.a, vec4<u32>(u_input.a.x, 1u, u_input.a.x, arg_1.b), arg_1.c.d), false, vec4<f32>(350f, 2108f, -1764f, arg_0.d), arg_0.d, arg_0), vec4<f32>(-121f, arg_0.d, -1820f, arg_1.c.d), 7237u), reverseBits(arg_0.a), 0i, arg_0.b)), arg_0.b);
    var var_1 = max(countOneBits(arg_1.c.c.yw), arg_0.c.yx);
    var var_2 = vec2<u32>(func_4(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(var_0.a, var_0.a), -_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(var_0.b.a.b, arg_0.b, arg_0.b, -7399i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-39995i, 2147483647i, 2147483647i), ~vec3<i32>(arg_0.a, arg_1.c.b, 14776i), func_4(var_0.a, 75357i).c.x), reverseBits(var_0.a.zxz))).b.e.c.x, abs(_wgslsmith_mult_u32(arg_1.b, arg_0.c.x)));
    var_1 = vec2<u32>(~(~12105u), 0u);
    let var_3 = Struct_2(Struct_1(abs((-1i | arg_0.b) & _wgslsmith_add_i32(-2147483647i, arg_0.a)), var_0.b.a.a, ~vec4<u32>(arg_1.b, arg_1.b, var_1.x, ~var_1.x), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.d, _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_f_op_f32(var_0.b.e.d * 1508f))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(674f, 1878f, arg_0.d, arg_0.d)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d, 1212f, 1000f, 1924f), _wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(1725f, -1606f, var_0.b.d, 765f)))), !all(vec3<bool>(var_0.b.b, var_0.b.b, var_0.c.x))))), _wgslsmith_f_op_f32(arg_1.c.d + -899f), func_4(vec4<i32>(arg_0.b, var_0.b.e.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.b, 5119i, arg_0.b), func_4(var_0.a, arg_1.a.x).a.wyx), _wgslsmith_sub_i32(1i, 0i)), _wgslsmith_mod_i32(17949i, -2147483647i & var_0.b.e.a) | ~(-2147483647i)).b.a);
    return _wgslsmith_mult_i32(var_3.a.b, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-570f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -591f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(253f)) + _wgslsmith_f_op_f32(floor(1303f))) - _wgslsmith_f_op_f32(-925f - _wgslsmith_f_op_f32(864f * 293f)))));
    let var_1 = func_1(Struct_1(-52180i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -9068i, 1i) << (select(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4325u), vec3<bool>(false, false, false)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(11668i, 1i, 2147483647i)), reverseBits(vec4<u32>(4294967295u, u_input.a.x, ~u_input.a.x, u_input.a.x)), 187f), Struct_4(-vec2<i32>(34296i, -2147483647i), 1u, Struct_1(abs(1i), 0i, vec4<u32>(abs(0u), ~1u, ~102889u, u_input.a.x), _wgslsmith_f_op_f32(var_0.x + 1413f))));
    let var_2 = func_4((~(vec4<i32>(-1i, var_1, var_1, 36767i) << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 81158u) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -107173i, 40871i, -2147483647i)), firstLeadingBit(vec4<i32>(var_1, var_1, -2147483647i, 1i)), ~vec4<i32>(var_1, var_1, -1i, -12601i))) ^ vec4<i32>(-2147483647i, (i32(-1i) * -2147483647i) | countOneBits(var_1), ~1i, -42239i), countOneBits(i32(-1i) * -2147483647i));
    var var_3 = var_2.a.zxx;
    let var_4 = Struct_4(min(_wgslsmith_div_vec2_i32(var_2.a.zw, countOneBits(vec2<i32>(var_2.a.x, var_2.a.x))), ~min(vec2<i32>(37313i, -1i), vec2<i32>(var_3.x, -1i))), ~(~abs(~61342u)), func_4(vec4<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(20525i, 1i), var_2.b.a.a), var_1, -69782i, _wgslsmith_add_i32(i32(-1i) * -23656i, -21264i)), var_3.x).b.e);
    var var_5 = _wgslsmith_f_op_f32(-824f - -1184f);
    var_3 = firstLeadingBit(vec3<i32>(~(var_4.a.x >> (var_4.c.c.x % 32u)), 0i, var_4.c.a) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-18845i, var_3.x), reverseBits(var_3.x), 40818i ^ var_4.c.b), ~var_2.a.xww & firstTrailingBit(var_2.a.xyw)));
    var var_6 = true;
    var_6 = any(var_2.c.zww);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_add_vec4_i32(~vec4<i32>(var_3.x, var_2.b.e.a, var_1, var_3.x), var_2.a), ~(-_wgslsmith_dot_vec2_i32(var_2.a.zx, var_2.a.xy))).d, var_2.b.a.c >> (select(vec4<u32>(36817u, 1u, var_2.b.e.c.x, ~1u), select(var_2.b.a.c, var_4.c.c, !vec4<bool>(true, var_2.c.x, true, true)), select(!vec4<bool>(true, var_2.b.b, true, var_2.b.b), var_2.c, true)) % vec4<u32>(32u)));
}

