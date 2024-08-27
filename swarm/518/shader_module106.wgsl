struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 789f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = firstTrailingBit(abs(vec4<u32>(0u, arg_1.d.x, select(countOneBits(22513u), arg_0 & 1u, arg_1.c), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(44520u, 13965u), ~u_input.a, 0u))));
    var var_1 = 0u;
    var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 0u, var_0.x) | vec4<u32>(arg_1.d.x, 0u, 15800u, 80099u), select(vec4<u32>(arg_0, arg_0, u_input.a, 91059u), abs(vec4<u32>(21805u, 0u, 4294967295u, 10118u)), true)), ~vec4<u32>(_wgslsmith_mod_u32(~57734u, 1u), ~u_input.a, countOneBits(u_input.d), select(27260u, 1u, false)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-122f * -354f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -840f), -996f)))));
    var_0 = vec4<u32>(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1.b.x), vec2<u32>(arg_0, 21341u)), ~11122u)), ~5781u, var_0.x, 4294967295u);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1533f + var_2), _wgslsmith_f_op_f32(ceil(var_2)), var_2))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_2.x, arg_1)));
    var var_1 = _wgslsmith_add_i32(reverseBits(firstTrailingBit(i32(-1i) * -arg_1.a.x)), arg_1.a.x);
    var var_2 = vec3<i32>(u_input.c, _wgslsmith_clamp_i32(firstLeadingBit(~(i32(-1i) * -1i)), u_input.e.x, 2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_clamp_i32(arg_1.a.x, 13859i, arg_1.a.x), reverseBits(0i)), ~(-vec2<i32>(-2147483647i, u_input.e.x)) >> (vec2<u32>(28726u, reverseBits(arg_1.d.x)) % vec2<u32>(32u))));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1775f, -582f) + 958f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(59205u, Struct_1(arg_1.a, vec3<u32>(1945u, u_input.d, u_input.b), true, vec3<u32>(arg_2.x, u_input.d, u_input.d)))).x - _wgslsmith_f_op_f32(var_0.x * var_0.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = all(select(vec2<bool>(true, true), vec2<bool>(true, !all(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    var_0 = true;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(min(select(-u_input.e.x, max(-1i, -11337i), false), u_input.c), _wgslsmith_div_i32(u_input.e.x, 70556i), u_input.c), vec3<i32>(min(u_input.c, -abs(2147483647i)), ~(-1i), ~(-59800i)));
    var_0 = func_2(_wgslsmith_f_op_f32(select(-502f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(631f + -112f), _wgslsmith_div_f32(1231f, -448f)), 569f)), true)), Struct_1(u_input.e, vec3<u32>(u_input.d, ~(arg_0.x & 16309u), arg_0.x), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false)), arg_0), arg_0);
    let var_2 = u_input.e.xyw;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1027f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(ceil(-224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1354f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(634f)), -108f, _wgslsmith_f_op_f32(1412f * -600f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(abs(vec3<u32>(1u, _wgslsmith_mult_u32(u_input.d, 4294967295u), 1u) | vec3<u32>(max(4294967295u, 64508u), reverseBits(1u), arg_2 & 4294967295u)))).ww;
    var var_1 = arg_3.a.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -442f);
    let var_2 = arg_0;
    let var_3 = arg_3;
    return Struct_1(vec4<i32>(reverseBits(u_input.c), reverseBits(arg_3.a.x), (i32(-1i) * -var_3.a.x) >> (min(arg_3.b.x, ~38521u) % 32u), u_input.c), arg_3.b, var_3.c, vec3<u32>(firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(arg_3.d.x, 1u))), ~(~_wgslsmith_dot_vec2_u32(arg_3.d.yx, vec2<u32>(7812u, 32588u))), ~1u & (arg_3.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_3.d.x), vec3<u32>(arg_0, 1u, arg_3.b.x)) % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = 2147483647i;
    let var_2 = !vec3<bool>(all(!(!vec3<bool>(arg_3.c, true, true))), var_0.c, true);
    global0 = -345f;
    var var_3 = -1000f;
    return var_0;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(select(u_input.e << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_1.d.x, u_input.b), vec4<u32>(arg_0.x, arg_0.x, arg_1.d.x, 58057u)) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(arg_1.a.x, -u_input.e.x, u_input.e.x, arg_1.a.x)), arg_2), select(select(min(vec3<u32>(arg_1.d.x, 4294967295u, 4294967295u), arg_1.b), arg_1.b, arg_1.c | arg_2.x), ~arg_1.b & _wgslsmith_mod_vec3_u32(arg_1.b, vec3<u32>(1u, 1u, u_input.d)), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_1.c, arg_1.c, arg_2.x), arg_1.c)) & vec3<u32>(23386u, 38576u, arg_0.x), (~(~arg_1.d.x) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, arg_0.x, 1u), vec4<u32>(arg_0.x, 1112u, arg_0.x, arg_1.d.x))) != false, ~(~arg_1.d));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_vec3_u32(var_0.d, func_4(1u, vec4<f32>(394f, -272f, -806f, -1217f), var_0.d.x, Struct_1(var_0.a, var_0.b, false, var_0.b)).d))).x - 171f));
    var var_1 = Struct_1(-(~(u_input.e >> (vec4<u32>(arg_0.x, 1u, arg_1.b.x, 4410u) % vec4<u32>(32u)))), var_0.d, true & all(vec4<bool>(var_0.c, true, 42228i >= var_0.a.x, true)), vec3<u32>(firstLeadingBit(var_0.d.x), u_input.a, ~reverseBits(16159u)));
    var var_2 = func_5(var_0, func_5(Struct_1(var_1.a, ~select(vec3<u32>(u_input.b, var_1.b.x, var_1.d.x), arg_1.b, true), true, var_1.d & min(var_1.d, var_0.b)), func_5(var_0, var_0, arg_1, func_4(42868u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, -575f, 1025f, 2228f)), 95188u, arg_1)), var_0, arg_1), func_4(1u >> (~_wgslsmith_sub_u32(var_0.d.x, arg_1.d.x) % 32u), vec4<f32>(_wgslsmith_div_f32(-257f, _wgslsmith_f_op_f32(max(638f, 1504f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1121f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1052f * 134f))), -1107f), ~(~u_input.b), var_0), arg_1);
    let var_3 = !arg_1.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(firstTrailingBit(select(vec2<u32>(1u, u_input.d | u_input.a), ~vec2<u32>(0u, u_input.d) ^ ~vec2<u32>(u_input.d, u_input.b), true)), func_5(func_4(~0u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(100262u, u_input.a, u_input.d))))), ~1u, Struct_1(-u_input.e, abs(vec3<u32>(u_input.a, 12097u, 4294967295u)), all(vec2<bool>(true, true)), ~vec3<u32>(0u, u_input.d, u_input.d))), func_4(~(~u_input.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, 680f, 896f, 182f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, 1958f, -757f, 616f)))), firstLeadingBit(86686u), Struct_1(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.c), vec3<u32>(u_input.a, 21416u, u_input.a) & vec3<u32>(1462u, 0u, u_input.b), true, ~vec3<u32>(1u, u_input.a, u_input.b))), Struct_1(min(~vec4<i32>(u_input.c, u_input.e.x, -13630i, 2147483647i), ~vec4<i32>(-1i, u_input.e.x, u_input.e.x, 0i)), vec3<u32>(_wgslsmith_mult_u32(3900u, u_input.d), 4294967295u >> (u_input.b % 32u), u_input.d), false, firstLeadingBit(vec3<u32>(u_input.d, 24641u, u_input.d)) ^ vec3<u32>(4294967295u, 4294967295u, 78832u)), func_4(u_input.b, vec4<f32>(-532f, _wgslsmith_f_op_f32(f32(-1f) * -640f), -312f, -1769f), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 22927u, 21150u) | vec3<u32>(26418u, u_input.b, 10085u), ~vec3<u32>(u_input.b, 0u, u_input.a)), func_4(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -764f, 458f, 1184f)), 42338u, func_4(u_input.d, vec4<f32>(-1526f, 1333f, 1000f, 512f), 85897u, Struct_1(u_input.e, vec3<u32>(22625u, u_input.b, u_input.d), false, vec3<u32>(90630u, 22627u, u_input.a)))))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), true));
    let var_1 = ~_wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(u_input.a, 0u, var_0.d.x)), func_6(vec2<u32>(1u, 50114u), func_5(Struct_1(u_input.e, vec3<u32>(u_input.d, 0u, var_0.d.x), var_0.c, var_0.b), func_4(4294967295u, vec4<f32>(877f, 1607f, -2590f, -855f), var_0.d.x, Struct_1(var_0.a, vec3<u32>(var_0.d.x, 4294967295u, var_0.d.x), var_0.c, var_0.b)), func_5(Struct_1(vec4<i32>(u_input.e.x, u_input.c, u_input.e.x, 62954i), var_0.d, true, var_0.d), Struct_1(vec4<i32>(var_0.a.x, -10000i, 11515i, 21103i), var_0.b, false, var_0.d), Struct_1(u_input.e, var_0.b, true, var_0.b), Struct_1(u_input.e, var_0.b, false, vec3<u32>(var_0.d.x, u_input.b, u_input.a))), Struct_1(u_input.e, var_0.b, var_0.c, var_0.b)), !(!vec4<bool>(var_0.c, var_0.c, false, var_0.c))).d.x);
    let var_2 = vec2<bool>(true, !(1222f < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(206f, -1432f)))));
    var_0 = func_5(func_5(Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 45473i, var_0.a.x, -30789i), u_input.e)), vec3<u32>(~29103u, reverseBits(var_1), ~4836u), func_4(_wgslsmith_mult_u32(u_input.d, var_0.b.x), vec4<f32>(-2156f, -1165f, 170f, -1000f), _wgslsmith_sub_u32(1u, u_input.d), Struct_1(u_input.e, vec3<u32>(var_0.d.x, 0u, 4294967295u), true, vec3<u32>(var_1, 26178u, 40177u))).c, reverseBits(vec3<u32>(4294967295u, 4294967295u, 30300u) & var_0.b)), func_6(_wgslsmith_div_vec2_u32(firstTrailingBit(var_0.b.xx), ~vec2<u32>(4294967295u, 0u)), func_5(func_4(u_input.b, vec4<f32>(1000f, 526f, -1085f, 1000f), u_input.b, Struct_1(vec4<i32>(2147483647i, 4570i, u_input.c, u_input.c), vec3<u32>(var_1, 11276u, var_0.d.x), var_0.c, var_0.d)), func_5(Struct_1(vec4<i32>(-1814i, var_0.a.x, 33372i, u_input.e.x), var_0.d, true, vec3<u32>(var_0.d.x, 0u, var_0.d.x)), Struct_1(u_input.e, var_0.b, var_2.x, var_0.b), Struct_1(var_0.a, vec3<u32>(4294967295u, u_input.b, u_input.a), var_0.c, var_0.b), Struct_1(vec4<i32>(var_0.a.x, 10158i, u_input.c, var_0.a.x), vec3<u32>(var_1, u_input.b, 64526u), false, vec3<u32>(var_1, var_1, u_input.b))), Struct_1(vec4<i32>(u_input.e.x, u_input.e.x, var_0.a.x, var_0.a.x), vec3<u32>(28184u, 49210u, 1u), false, vec3<u32>(var_0.d.x, u_input.a, var_1)), Struct_1(vec4<i32>(var_0.a.x, u_input.c, u_input.e.x, var_0.a.x), var_0.b, false, var_0.b)), !vec4<bool>(true, var_2.x, false, var_0.c)), Struct_1(var_0.a, ~abs(var_0.b), !(!var_0.c), _wgslsmith_mod_vec3_u32(var_0.d, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.d.x, 4294967295u), var_0.d))), func_6(_wgslsmith_sub_vec2_u32(var_0.b.xz, var_0.b.zz) & abs(vec2<u32>(27372u, 0u)), func_6(firstLeadingBit(var_0.b.xz), func_6(var_0.b.xz, Struct_1(u_input.e, var_0.b, true, vec3<u32>(var_0.b.x, 0u, 14434u)), vec4<bool>(var_0.c, var_0.c, var_0.c, var_2.x)), vec4<bool>(var_2.x, true, true, var_2.x)), !(!vec4<bool>(false, var_0.c, false, var_2.x)))), Struct_1(_wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.e), u_input.e), abs(func_4(var_0.d.x, vec4<f32>(-2023f, 1049f, 802f, 809f), var_1, Struct_1(vec4<i32>(var_0.a.x, 0i, -44868i, -2147483647i), vec3<u32>(31934u, 1u, var_1), true, var_0.b)).b << (firstTrailingBit(var_0.b) % vec3<u32>(32u))), var_0.c, max(var_0.d, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(0u, var_1, 4294967295u)), ~vec3<u32>(1u, var_1, 4294967295u)))), func_5(Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.a.x, -1i, -15732i, 0i), vec4<i32>(u_input.e.x, var_0.a.x, -28621i, u_input.e.x)), abs(var_0.b << (vec3<u32>(54461u, var_1, u_input.b) % vec3<u32>(32u))), var_0.c, select(reverseBits(vec3<u32>(9953u, var_1, var_0.b.x)), var_0.b, !vec3<bool>(var_2.x, true, false))), func_4(firstLeadingBit(1u), vec4<f32>(1727f, 1253f, -737f, -1737f), 1u, Struct_1(func_5(Struct_1(u_input.e, var_0.b, false, var_0.d), Struct_1(u_input.e, vec3<u32>(38989u, var_0.b.x, var_1), false, var_0.b), Struct_1(var_0.a, vec3<u32>(4294967295u, u_input.a, 46154u), false, vec3<u32>(var_0.d.x, 88030u, 35608u)), Struct_1(var_0.a, vec3<u32>(var_1, var_0.d.x, var_0.b.x), true, var_0.b)).a, vec3<u32>(4294967295u, var_0.b.x, var_0.d.x), true, vec3<u32>(6738u, var_1, 9512u))), func_6(var_0.d.xz, Struct_1(func_4(4294967295u, vec4<f32>(1157f, -2118f, -988f, -1050f), u_input.a, Struct_1(vec4<i32>(u_input.e.x, 20424i, var_0.a.x, u_input.c), vec3<u32>(81u, 1u, var_0.d.x), var_0.c, var_0.d)).a, func_6(var_0.b.yy, Struct_1(u_input.e, var_0.d, var_0.c, vec3<u32>(4294967295u, 0u, 4294967295u)), vec4<bool>(var_0.c, true, false, var_0.c)).d, true, ~vec3<u32>(115335u, var_1, u_input.a)), !vec4<bool>(false, var_2.x, var_2.x, var_0.c)), Struct_1(_wgslsmith_add_vec4_i32(~var_0.a, u_input.e | vec4<i32>(u_input.e.x, -30451i, u_input.c, var_0.a.x)), vec3<u32>(countOneBits(u_input.b), var_0.d.x, _wgslsmith_add_u32(13414u, u_input.d)), var_0.c, var_0.d)), func_5(func_6(_wgslsmith_mult_vec2_u32(abs(var_0.b.zx), var_0.b.zx), func_6(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 46027u), var_0.b.zy), func_4(4294967295u, vec4<f32>(1049f, -569f, -431f, -1800f), var_1, Struct_1(vec4<i32>(-49322i, u_input.c, var_0.a.x, var_0.a.x), vec3<u32>(1u, 4294967295u, var_1), true, var_0.d)), select(vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(true, false, var_0.c, false), vec4<bool>(false, true, true, var_0.c))), !select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, false, true, true), vec4<bool>(var_0.c, var_0.c, false, false))), func_4(~func_4(var_0.b.x, vec4<f32>(1236f, 1344f, 563f, 1193f), 62087u, Struct_1(var_0.a, var_0.b, false, var_0.b)).b.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(-167f + 462f), _wgslsmith_f_op_f32(min(-165f, 1319f)), 698f), func_6(_wgslsmith_add_vec2_u32(var_0.b.xy, var_0.b.xx), Struct_1(vec4<i32>(u_input.e.x, var_0.a.x, var_0.a.x, 1i), var_0.b, var_2.x, var_0.b), select(vec4<bool>(var_0.c, var_2.x, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_2.x), var_0.c)).d.x, func_6(vec2<u32>(1u, var_0.b.x), Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, -5431i), vec3<u32>(4294967295u, 4294967295u, 1u), var_0.c, var_0.d), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_0.c, true, var_2.x, false), false))), Struct_1(vec4<i32>(~var_0.a.x, ~1i, -2147483647i, 28696i), select(~var_0.b, vec3<u32>(var_1, 1u, 73372u), var_2.x), false && (false == var_0.c), var_0.b), Struct_1(max(u_input.e, countOneBits(u_input.e)), var_0.b, !var_0.c, vec3<u32>(var_0.b.x, 1u, ~var_1))));
    var var_3 = vec3<bool>(true, !(all(!vec3<bool>(var_0.c, true, var_0.c)) || var_0.c), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, vec3<u32>(_wgslsmith_div_u32(var_1, 28860u), var_0.d.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(48000u, 1u), u_input.d)), -55049i | (36407i ^ (_wgslsmith_add_i32(-32945i, var_0.a.x) ^ -2147483647i)));
}

