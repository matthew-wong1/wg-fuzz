struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = select(countOneBits(4294967295u >> (~arg_1.b % 32u)), ~1u, all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0)), select(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, arg_0, arg_0, false), true), !vec4<bool>(arg_0, arg_0, arg_0, false), arg_0), vec4<bool>(arg_2 != 192f, arg_0, arg_2 != 464f, true))));
    var_0 = select(~arg_1.b, 10409u, true);
    var var_1 = Struct_1(firstLeadingBit((~79273u | ~u_input.c) & ~(arg_1.a << (0u % 32u))), arg_1.a, ~vec3<i32>(-57596i, _wgslsmith_mod_i32(u_input.e, 13246i), -2147483647i) | arg_1.c, ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, u_input.e, arg_1.d, u_input.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x, -1i, 9093i, -4227i), vec4<i32>(-1i, -21112i, u_input.d.x, u_input.e), vec4<i32>(21758i, 58458i, u_input.d.x, -25803i))), firstLeadingBit(~arg_1.d)));
    var var_2 = 474f;
    let var_3 = Struct_4(26272u, reverseBits(~vec4<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, -41800i), var_1.c.zx), 2147483647i, -u_input.a)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(29185u >> (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(2010u, 13505u, var_1.a, u_input.b.x), vec4<u32>(arg_1.b, var_1.a, 21087u, arg_1.a))), 1u), _wgslsmith_dot_vec2_u32(~u_input.b.zy, vec2<u32>(reverseBits(arg_1.b), 0u)), 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, arg_1.b), u_input.c)));
    return 107527u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = 22636u;
    var var_1 = Struct_3(firstLeadingBit(firstTrailingBit((arg_0 >> (110097u % 32u)) | countOneBits(-10401i))));
    var var_2 = Struct_4(func_3(true, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), vec3<u32>(u_input.b.x, 4294967295u, 1u) ^ vec3<u32>(4294967295u, u_input.b.x, u_input.c)), abs(~4294967295u), select(~vec3<i32>(var_1.a, 0i, var_1.a), ~vec3<i32>(var_1.a, 24610i, arg_2.x), any(vec3<bool>(true, true, false))), -5038i), arg_1), ~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, u_input.e, arg_2.x, 1i), max(vec4<i32>(10861i, arg_0, arg_0, var_1.a), vec4<i32>(2147483647i, -37780i, -17022i, u_input.a)))), vec4<u32>(0u, u_input.b.x, ((1u << (u_input.c % 32u)) ^ (u_input.c & u_input.c)) & u_input.b.x, _wgslsmith_mult_u32(22298u, u_input.b.x) << (u_input.c % 32u)));
    var var_3 = _wgslsmith_add_u32(71593u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(var_2.c.wwz, var_2.c.wzw), var_2.c.x, abs(1u)), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 37270u, u_input.b.x))), u_input.b.x, 43990u, ~var_2.c.x)));
    var var_4 = Struct_3(1i);
    return Struct_1(firstTrailingBit(var_2.c.x) | ~abs(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(23673u, u_input.c))), 4328u, min(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -22291i, -2147483647i), vec3<i32>(arg_0, var_1.a, arg_2.x)), select(vec3<i32>(0i, -1i, 33000i), vec3<i32>(0i, arg_2.x, var_2.b.x), vec3<bool>(false, false, false))) | u_input.d, vec3<i32>(~var_4.a, 1i, -arg_2.x & arg_0)), -62271i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = ~12608u;
    let var_1 = Struct_2(Struct_1(arg_1.a, var_0, ~u_input.d, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_mult_i32(~arg_1.d, u_input.a))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 29044u, u_input.c, 41722u), vec4<u32>(var_0, var_0, 4294967295u, 13188u)), _wgslsmith_mod_u32(~var_0, 0u)), arg_1.b, _wgslsmith_mult_u32(min(_wgslsmith_add_u32(50516u, var_0), ~19116u), arg_0.b)));
    let var_2 = -596f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(930f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_2.x))))));
    let var_3 = Struct_3(u_input.e);
    let var_4 = -27793i;
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(~select(1i, -2147483647i ^ arg_1.b.x, true), arg_3.x));
    var var_1 = func_2(arg_0.d, -1000f, abs(u_input.d | vec3<i32>(_wgslsmith_add_i32(u_input.e, 2147483647i), _wgslsmith_add_i32(-1i, arg_0.c.x), i32(-1i) * -1i)));
    var_0 = -24842i;
    var var_2 = 28203i;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -780f, 221f) * vec4<f32>(854f, -1003f, 643f, 952f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(-1000f, 661f)))), !vec4<bool>(select(false, false, false), true, true, arg_2 <= arg_2)))));
    return arg_0.c;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    let var_0 = !(!vec3<bool>(false, select(any(vec4<bool>(false, true, false, true)), arg_0 > 0i, true), !all(vec4<bool>(true, true, false, true))));
    var var_1 = countOneBits(u_input.b.yz & _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(4294967295u, 113056u)), _wgslsmith_mult_vec2_u32(reverseBits(u_input.b.xy), vec2<u32>(u_input.b.x, 29994u))));
    var var_2 = -func_5(func_4(func_2(arg_0, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), reverseBits(vec3<i32>(-939i, 1i, arg_0))), Struct_1(_wgslsmith_mod_u32(var_1.x, u_input.c), var_1.x, select(u_input.d, vec3<i32>(u_input.a, u_input.e, u_input.d.x), vec3<bool>(var_0.x, false, var_0.x)), reverseBits(18468i)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, -1000f)))), Struct_4(54721u, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -2147483647i, -44722i, 24638i), vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(1i, 4384i, u_input.a, u_input.d.x)), firstTrailingBit(min(vec4<u32>(70714u, 13759u, arg_2, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.b.x, arg_2)))), arg_1.x, ~min(vec4<i32>(u_input.d.x, 3306i, arg_0, -43109i), ~vec4<i32>(arg_0, -29165i, u_input.d.x, u_input.a)));
    let var_3 = u_input.d.xx;
    var var_4 = _wgslsmith_div_vec4_u32(~min(~(vec4<u32>(arg_2, u_input.b.x, var_1.x, 5613u) | vec4<u32>(20016u, arg_2, u_input.c, var_1.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2, u_input.b.x, 64255u, 98391u), abs(vec4<u32>(122284u, 0u, 4294967295u, var_1.x)))), vec4<u32>(var_1.x, firstLeadingBit(32920u), 0u, u_input.b.x) << (vec4<u32>(abs(var_1.x) | ~1u, u_input.b.x, var_1.x, _wgslsmith_mult_u32(var_1.x | var_1.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))) % vec4<u32>(32u)));
    return Struct_3(_wgslsmith_add_i32(var_3.x, reverseBits(0i) | ~(-1i | var_3.x)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(467u, firstTrailingBit(~(~65166u)), arg_1.c, 2147483647i);
    var var_1 = Struct_4(((4294967295u | (arg_0 << (89064u % 32u))) ^ firstLeadingBit(_wgslsmith_mod_u32(4897u, 10471u))) ^ (~(~4294967295u) << (func_4(arg_1, arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(139f, 1101f, 936f), vec3<f32>(-1332f, 348f, 1213f), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(max(-330f, -2150f))).b % 32u)), arg_3, vec4<u32>(~arg_0, arg_1.a, _wgslsmith_mult_u32(abs(arg_1.b), var_0.a), arg_1.b) | vec4<u32>(var_0.a | arg_1.b, func_2(u_input.a, _wgslsmith_div_f32(-1009f, 1290f), arg_3.wyy).b, firstTrailingBit(arg_0 ^ 21215u), 43268u));
    var_0 = func_4(Struct_1(_wgslsmith_div_u32(var_0.b, ~arg_1.b), arg_0, func_5(Struct_1(~var_0.a, func_4(Struct_1(arg_0, arg_0, vec3<i32>(var_0.d, var_1.b.x, 1487i), -1i), arg_1, vec3<f32>(888f, -297f, -890f), -707f).a, func_5(Struct_1(0u, var_0.a, var_1.b.xww, -22783i), Struct_4(121658u, arg_3, vec4<u32>(4294967295u, arg_0, var_1.c.x, 41379u)), 1000f, vec4<i32>(39326i, -2147483647i, 71970i, u_input.e)), 0i), Struct_4(var_1.c.x, var_1.b, ~var_1.c), _wgslsmith_f_op_f32(abs(-286f)), _wgslsmith_sub_vec4_i32(~arg_3, var_1.b ^ vec4<i32>(-1i, -10999i, arg_1.c.x, 24663i))), _wgslsmith_div_i32(var_0.c.x ^ 1i, ~297i)), Struct_1(~(3602u >> (arg_0 % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_1.a), _wgslsmith_div_vec3_u32(var_1.c.zyy, var_1.c.yww)), 0u, arg_1.c, -21843i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1519f - _wgslsmith_div_f32(-1856f, 1832f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1569f + 1000f), _wgslsmith_f_op_f32(588f + -259f))), 1f))), 1000f);
    var_0 = Struct_1(~(1u & _wgslsmith_mult_u32(15655u, select(4294967295u, 1u, true))), _wgslsmith_clamp_u32(arg_0, 13112u | ~arg_1.a, var_1.a), max(~vec3<i32>(~40620i, ~2549i, var_0.c.x), _wgslsmith_mult_vec3_i32(-arg_1.c | vec3<i32>(-1i, var_1.b.x, arg_2.a), arg_1.c)), ~(i32(-1i) * -abs(-21701i)));
    let var_2 = true;
    return Struct_2(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.e, var_1.b.x), var_0.d | arg_3.x, u_input.a), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_3.x, u_input.a, var_1.b.x), countOneBits(vec3<i32>(1139i, 0i, 1i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-319f))), 514f)), max(vec3<i32>(0i, arg_3.x, arg_1.c.x), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, var_0.c, vec3<i32>(37595i, u_input.a, var_1.b.x)), arg_1.c))), var_1.c.zxy);
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = !((~func_3(true, var_0.a, -422f) > ~0u) || true);
    let var_2 = Struct_2(arg_1.a, vec3<u32>(1u & func_3(false, Struct_1(131897u, var_0.b.x, var_0.a.c, 23179i), 157f), _wgslsmith_mult_u32(u_input.b.x, ~4294967295u), func_2(-11107i, _wgslsmith_f_op_f32(737f + -1277f), vec3<i32>(arg_1.a.d, u_input.e, arg_1.a.d)).a) & arg_2.ywz);
    var_1 = !(all(vec4<bool>(arg_1.a.d >= arg_1.a.c.x, true, all(vec2<bool>(false, false)), any(vec2<bool>(false, true)))) & (~max(4294967295u, arg_1.a.b) < ~_wgslsmith_dot_vec2_u32(vec2<u32>(41867u, arg_1.a.b), var_2.b.xz)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-229f, 772f))), -1048f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(106f, -160f))) + _wgslsmith_f_op_f32(min(-1882f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-521f)) - _wgslsmith_f_op_f32(select(-838f, -435f, false))) - 1444f))));
    return Struct_4(abs(select(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, var_2.b.x, 4031u), u_input.b)), arg_0.x, true)), -vec4<i32>(arg_1.a.d, -1i, var_0.a.d, -15665i) & (-select(vec4<i32>(-1i, u_input.d.x, -2147483647i, var_2.a.d), vec4<i32>(u_input.e, var_0.a.d, u_input.a, var_0.a.c.x), true) | -vec4<i32>(arg_1.a.c.x, 1i, -17147i, u_input.d.x)), _wgslsmith_div_vec4_u32(min(select(~vec4<u32>(0u, var_2.a.a, arg_0.x, 1u), select(arg_2, vec4<u32>(0u, 22132u, arg_2.x, 1u), false), vec4<bool>(true, true, true, true)), arg_2), arg_2));
}

fn func_8(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-145f, -608f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1978f, -516f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, -2116f)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1543f, -613f))), vec2<f32>(-501f, -103f)))))));
    var var_1 = (arg_1.c << (vec4<u32>(arg_2.x, ~(~u_input.b.x), 73084u, ~(arg_1.c.x << (arg_2.x % 32u))) % vec4<u32>(32u))) << (arg_1.c % vec4<u32>(32u));
    var var_2 = 1i;
    var_2 = _wgslsmith_mult_i32(arg_1.b.x, ~(-44667i));
    var var_3 = -29171i;
    return Struct_1(abs(~(~(var_1.x >> (arg_2.x % 32u)))), u_input.c, countOneBits(u_input.d), i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mult_i32(u_input.e, firstLeadingBit(-2147483647i)));
    let var_1 = Struct_2(func_8(vec4<bool>(true, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), !all(vec3<bool>(true, false, true))), func_7(vec3<u32>(4294967295u, _wgslsmith_div_u32(66130u, u_input.c), u_input.c), func_6(u_input.b.x, Struct_1(u_input.b.x, 2920u, u_input.d, u_input.a), func_1(-90866i, vec3<f32>(-302f, -428f, 313f), u_input.b.x), countOneBits(vec4<i32>(u_input.d.x, u_input.e, -14388i, -2147483647i))), vec4<u32>(u_input.b.x, 0u, 32777u, 0u) & vec4<u32>(65554u, 26877u, u_input.b.x, 11368u)), u_input.b), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 29188u, u_input.b.x) >> (vec3<u32>(1u, 0u, 5904u) % vec3<u32>(32u)), u_input.b)));
    let var_2 = false | (_wgslsmith_add_i32(670i, u_input.e) < _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.a.d, u_input.d.x, var_1.a.d, var_0.a)), reverseBits(vec4<i32>(253i, -90517i, 13670i, -86093i))));
    let var_3 = select(!any(select(vec4<bool>(false, false, var_2, true), vec4<bool>(var_2, var_2, true, var_2), all(vec4<bool>(true, var_2, var_2, true)))), var_2, false);
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(570f)) * _wgslsmith_f_op_f32(1000f + -303f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-559f, 988f, true)))))));
    let var_5 = _wgslsmith_f_op_vec2_f32(var_4 * vec2<f32>(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1210f));
    let var_6 = var_0;
    let var_7 = select(!(!(!select(vec3<bool>(true, true, var_2), vec3<bool>(var_3, false, var_2), var_3))), select(select(!(!vec3<bool>(var_2, var_2, var_2)), !select(vec3<bool>(var_2, false, false), vec3<bool>(true, var_2, var_2), vec3<bool>(var_3, var_3, true)), true), vec3<bool>(var_3, var_3, (var_3 || false) & select(true, var_2, false)), !(!vec3<bool>(var_2, false, true))), false);
    let var_8 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(~4294967295u, func_2(max(~28296i, ~2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), reverseBits(var_8.c)).b, !var_7.x), vec4<u32>(21442u, u_input.b.x, firstLeadingBit(74677u), var_8.a), -(~_wgslsmith_add_i32(func_1(-1i, vec3<f32>(var_4.x, var_4.x, 1456f), 0u).a, _wgslsmith_sub_i32(var_1.a.d, var_1.a.d))), var_8.b & ~countOneBits(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1099f)) * _wgslsmith_f_op_f32(select(117f, var_5.x, var_3))));
}

