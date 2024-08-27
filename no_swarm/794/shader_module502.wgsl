struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), abs(~1u), _wgslsmith_mod_u32(abs(firstTrailingBit(4294967295u)), 1u), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(29920i, u_input.b, arg_0)), vec3<i32>(arg_0, arg_0, -1i) << (min(vec3<u32>(58653u, 1u, 1u), vec3<u32>(7188u, 45300u, 4294967295u)) % vec3<u32>(32u)))), Struct_1(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(false, false, true) & true), 1u, 1u, arg_0), Struct_1(vec3<bool>(true, true, true), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(select(vec4<u32>(4294967295u, 1u, 41998u, 0u), vec4<u32>(0u, 1u, 8970u, 9716u), vec4<bool>(true, false, true, true)))), 19843i));
    let var_1 = vec4<u32>(108267u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 19471u, 4294967295u, 5802u) >> (vec4<u32>(var_0.a.b, 1u, var_0.c.c, var_0.c.c) % vec4<u32>(32u))), ~(~vec4<u32>(var_0.b.b, var_0.a.b, var_0.c.c, var_0.c.c))) & 20120u, _wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(select(vec4<u32>(4294967295u, 48543u, var_0.b.c, var_0.a.c), vec4<u32>(1u, var_0.a.c, var_0.a.c, var_0.c.b), vec4<bool>(true, false, true, var_0.a.a.x)))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(34238u, 4294967295u, var_0.b.b, var_0.a.b)), vec4<u32>(1u, ~10445u, 45215u, 38976u << (var_0.a.c % 32u)))), 4263u);
    var var_2 = Struct_4(0u << (1u % 32u), _wgslsmith_add_vec3_i32(u_input.a.yxz, u_input.d));
    let var_3 = !all(!var_0.c.a.yz);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-111f, 698f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f) + -540f))), true)));
    return var_2.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_1(!(!(!(!vec3<bool>(true, arg_0.a.x, arg_0.a.x)))), arg_1.x >> ((countOneBits(arg_1.x) << (47352u % 32u)) % 32u), 1u, arg_0.d);
    var var_1 = _wgslsmith_f_op_f32(ceil(634f));
    var_0 = arg_0;
    let var_2 = true;
    var_0 = Struct_1(var_0.a, ~arg_1.x ^ reverseBits(_wgslsmith_div_u32(47739u, ~arg_1.x)), 1u, var_0.d);
    return u_input.a.yxz;
}

fn func_2() -> vec2<f32> {
    var var_0 = func_4(Struct_1(vec3<bool>(true, true, true), 1u, 45102u, abs(u_input.a.x)), vec3<u32>(_wgslsmith_mod_u32(~75783u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(13725u, 64425u)))), ~_wgslsmith_add_u32(1u, 9584u), 1u), func_3(-2147483647i) & ~((u_input.c.x >> (4294967295u % 32u)) << (reverseBits(49160u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-654f, -1215f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(510f, -1070f), _wgslsmith_f_op_f32(-1345f * -277f), true))))));
    let var_1 = Struct_2(Struct_1(vec3<bool>(true, true, false), ~countOneBits(~1u), ~0u, 57812i ^ var_0.x), Struct_1(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), false), true), ~1u, firstLeadingBit(~(~4294967295u)), reverseBits(1i)), Struct_1(vec3<bool>(false, all(vec3<bool>(false, true, false)) | all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, true)) || true), 1u, max(1u, ~(~7537u)), ~(-u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(337f, -711f)), _wgslsmith_f_op_f32(f32(-1f) * -761f))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-430f)) * _wgslsmith_f_op_f32(-149f + 201f)))), 1347f)));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1);
    let var_1 = ~arg_3.b.b;
    var var_2 = ~arg_3.c.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1110f, 1886f, arg_1.x), vec3<f32>(var_0.x, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) * vec3<f32>(436f, var_0.x, -1610f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, var_0.x, arg_1.x)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(-2142f, arg_1.x, var_0.x)))))))));
    var_2 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(44749u, reverseBits(var_1), var_1 << (4294967295u % 32u), ~var_1)), vec4<u32>(var_1, ~max(abs(62077u), _wgslsmith_sub_u32(arg_3.a.c, 5560u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34285u, var_1, var_1), vec3<u32>(7100u, arg_3.b.c, arg_3.b.c)), arg_3.a.c), 54863u << (var_1 % 32u)));
    return Struct_2(arg_3.a, arg_3.a, Struct_1(!(!select(arg_2.zxy, arg_2.zwz, vec3<bool>(arg_3.b.a.x, arg_3.c.a.x, true))), 1867u, firstLeadingBit(_wgslsmith_div_u32(countOneBits(arg_3.a.c), 4294967295u)), ~2147483647i));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_5(abs(min(~u_input.c.x, reverseBits(36717i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1383f, -2281f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1784f, 336f), vec2<f32>(534f, -2545f))))), select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, true, true), vec4<bool>(true, u_input.e <= -2372i, all(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), 4294967295u << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 48630u, 0u), vec4<u32>(65777u, 36478u, 28721u, 0u)), u_input.b), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), 1u, ~0u, ~30635i), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), ~4294967295u, 35901u, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.e, -2147483647i, u_input.c.x))))), _wgslsmith_f_op_f32(max(441f, -1000f)));
    var var_1 = _wgslsmith_mod_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b >> (var_0.a.c.c % 32u), u_input.a.x, ~u_input.a.x), ~(-u_input.d)), u_input.d), vec3<i32>(-(~(~var_0.a.c.d)), func_4(Struct_1(!vec3<bool>(var_0.a.a.a.x, false, var_0.a.a.a.x), ~var_0.a.b.c, var_0.a.c.c, var_0.a.c.d), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.a.b, var_0.a.c.c, 1130u), vec3<u32>(var_0.a.c.b, var_0.a.c.b, var_0.a.b.c)), vec3<u32>(var_0.a.b.c, 4294967295u, 4043u)), _wgslsmith_dot_vec3_i32(u_input.d, ~u_input.d), 780f).x, -var_0.a.c.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_vec2_f32(func_2()).x, 679f));
    var var_3 = Struct_4(~4294967295u, -(~(select(vec3<i32>(u_input.a.x, var_1.x, 1i), u_input.d, var_0.a.b.a.x) | vec3<i32>(u_input.c.x, var_0.a.b.d, -29298i))));
    var var_4 = _wgslsmith_sub_u32(~(~(~_wgslsmith_div_u32(var_0.a.c.c, 15402u))), 0u);
    return 1094f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, !(!all(vec3<bool>(false, false, false)))), vec2<bool>(!(!all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(min(-1979f, -619f))));
    let var_1 = func_5(-u_input.d.x | -u_input.e, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2218f + 518f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-101f, 279f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032f, -156f)), select(func_5(-1i, vec2<f32>(-1112f, -188f), vec4<bool>(var_0.x, var_0.x, true, false), Struct_2(Struct_1(vec3<bool>(true, true, false), 4294967295u, 4294967295u, u_input.b), Struct_1(vec3<bool>(var_0.x, var_0.x, true), 0u, 37651u, u_input.a.x), Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), 54232u, 43470u, 0i))).a.a.yz, !vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)))))), select(vec4<bool>(var_0.x, func_5(-19616i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, -236f)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), func_5(u_input.a.x, vec2<f32>(-1000f, -715f), vec4<bool>(true, var_0.x, var_0.x, true), Struct_2(Struct_1(vec3<bool>(var_0.x, true, true), 0u, 78345u, 2147483647i), Struct_1(vec3<bool>(true, true, true), 41383u, 24557u, -1i), Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), 1u, 1u, u_input.a.x)))).c.a.x, true == var_0.x, any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x))), vec4<bool>(true & all(vec3<bool>(false, true, true)), true, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), false)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 53525i, u_input.b), vec4<i32>(u_input.b, u_input.e, u_input.b, u_input.d.x)) != -1i), select(select(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, false, var_0.x, true)), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), !(!vec4<bool>(false, var_0.x, true, var_0.x)), any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, false), true)))), func_5(~(i32(-1i) * -1i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-634f)), _wgslsmith_f_op_f32(max(-451f, 440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(417f * 1026f))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, true, var_0.x, var_0.x))), Struct_2(Struct_1(!vec3<bool>(var_0.x, false, true), 0u, 1u, abs(u_input.d.x)), Struct_1(vec3<bool>(false, var_0.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 32017u, 4294967295u)), 39070u, -63702i >> (0u % 32u)), func_5(-2147483647i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1416f, -189f))), vec4<bool>(true, var_0.x, true, true), func_5(u_input.a.x, vec2<f32>(277f, 1856f), vec4<bool>(var_0.x, false, true, true), Struct_2(Struct_1(vec3<bool>(var_0.x, var_0.x, true), 16690u, 0u, u_input.e), Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), 4294967295u, 1u, -3024i), Struct_1(vec3<bool>(false, true, true), 79455u, 4294967295u, u_input.e)))).a))).a;
    var_0 = select(var_1.a.yz, vec2<bool>(true, var_1.a.x), true);
    var var_2 = 0u;
    var var_3 = countOneBits(~firstTrailingBit(~0u));
    var_3 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(8469u, var_1.b << (var_1.c % 32u), 35650u, 34382u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(43751u, 25144u, 4294967295u, var_1.b)), max(vec4<u32>(11659u, 14510u, 1u, 1u), vec4<u32>(var_1.c, 60427u, var_1.c, 48425u)))));
    let var_4 = -(firstLeadingBit(-var_1.d) ^ var_1.d);
    let var_5 = Struct_3(func_5(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_4, var_4) >> (~36049u % 32u), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, 618f) + vec2<f32>(1301f, 1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2083f, 1366f), vec2<f32>(-341f, -266f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2707f, 449f) * vec2<f32>(1732f, -237f)))), vec4<bool>(true | !var_1.a.x, var_0.x, !var_0.x, var_1.a.x), func_5(-1294i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-865f, 1000f))) - vec2<f32>(-444f, -139f)), vec4<bool>(false, true, func_5(-2147483647i, vec2<f32>(-1818f, -1053f), vec4<bool>(var_0.x, var_1.a.x, var_1.a.x, false), Struct_2(var_1, Struct_1(var_1.a, 36535u, var_1.c, -54139i), var_1)).b.a.x, var_1.a.x), Struct_2(var_1, func_5(u_input.b, vec2<f32>(-1714f, -1881f), vec4<bool>(false, true, false, var_0.x), Struct_2(var_1, Struct_1(var_1.a, 601u, var_1.b, -1i), var_1)).c, func_5(2147483647i, vec2<f32>(-802f, 887f), vec4<bool>(true, true, false, true), Struct_2(Struct_1(var_1.a, 1u, var_1.c, var_1.d), var_1, Struct_1(vec3<bool>(true, true, var_0.x), var_1.c, var_1.b, u_input.d.x))).c))), _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(-383f - 753f)));
    var_0 = !vec2<bool>(!(!(var_0.x | var_0.x)), !(var_5.b > _wgslsmith_f_op_f32(var_5.b + -850f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, 73219i), _wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(_wgslsmith_add_i32(1i, select(var_1.d, u_input.b, false)), u_input.d.x), firstLeadingBit(vec2<i32>(var_4, _wgslsmith_mult_i32(var_5.a.a.d, var_5.a.a.d)))), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(42991i, 36928i), u_input.d.zy)), min(~vec2<i32>(var_1.d, var_1.d), ~vec2<i32>(32964i, 7445i))));
}

