struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = 0i;
    var_0 = ~(-reverseBits(u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - 401f) * -815f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(863f, -289f)), _wgslsmith_f_op_f32(sign(227f)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(248f)) - _wgslsmith_f_op_f32(-802f - 862f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(395f, _wgslsmith_f_op_f32(abs(-1000f)))))));
    var_1 = 1f;
    var var_2 = true;
    return ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(40942u, u_input.a, u_input.a, 1u), vec4<u32>(19724u, u_input.d, u_input.d, 66292u)), ~vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.d)) ^ vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.d, firstTrailingBit(105031u)), u_input.a, u_input.d & (u_input.d | u_input.d)));
}

fn func_3() -> u32 {
    let var_0 = select((((4294967295u << (u_input.a % 32u)) > 24080u) && (~15419i <= countOneBits(u_input.e))) != (14432u != u_input.a), (~(~5201u) ^ reverseBits(8009u ^ u_input.a)) >= _wgslsmith_clamp_u32(~4294967295u, 67360u, 2643u), true);
    let var_1 = -reverseBits(-vec3<i32>(min(u_input.c.x, u_input.e), u_input.b, ~u_input.c.x));
    let var_2 = vec3<bool>(4294967295u >= (8726u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1199u, 47222u), vec2<u32>(4294967295u, u_input.a))) % 32u)), var_0, true);
    var var_3 = Struct_1(-u_input.c, ~var_1.x, 2147483647i, vec2<u32>(1u, ~(u_input.d | u_input.d)) | vec2<u32>(92467u, 0u), true);
    let var_4 = _wgslsmith_add_u32(u_input.a, u_input.d);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = u_input.c.x;
    var_0 = u_input.e;
    var_0 = 1i;
    var_0 = ~52875i;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)));
    return _wgslsmith_mod_vec4_u32(select(vec4<u32>(func_3() << (1u % 32u), 4294967295u, _wgslsmith_add_u32(reverseBits(u_input.d), ~u_input.d), firstTrailingBit(0u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(66980u, arg_0.d.x, 1u, arg_1.d.x) ^ vec4<u32>(arg_0.d.x, u_input.d, arg_1.d.x, 21988u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 0u), vec4<u32>(u_input.d, 13240u, arg_1.d.x, 1u), vec4<u32>(47381u, 4294967295u, 3415u, 4294967295u)), vec4<u32>(arg_0.d.x, 0u, arg_0.d.x, u_input.d))), select(select(vec4<bool>(false, arg_1.e, true, true), !vec4<bool>(false, false, arg_2.x, true), select(vec4<bool>(arg_2.x, arg_1.e, arg_1.e, true), vec4<bool>(true, arg_2.x, arg_0.e, true), false)), select(!vec4<bool>(arg_2.x, true, arg_1.e, false), select(vec4<bool>(arg_2.x, true, arg_0.e, false), vec4<bool>(false, true, arg_1.e, false), false), false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.e, arg_1.e, false), arg_1.e), !vec4<bool>(false, true, arg_1.e, true), select(vec4<bool>(arg_2.x, arg_0.e, true, arg_1.e), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_0.e, true))))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d, 57637u, 1u, 3354u) & _wgslsmith_div_vec4_u32(vec4<u32>(58910u, u_input.a, 5059u, u_input.a), vec4<u32>(u_input.d, 80558u, 0u, 0u))), firstTrailingBit(vec4<u32>(~1u, 59353u, _wgslsmith_add_u32(13198u, arg_0.d.x), arg_1.d.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec4<u32>(~reverseBits(0u), ~1u, arg_1.x, func_1(u_input.e).x);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-813f, -1000f, -1354f, 190f), vec4<f32>(-170f, -903f, -1050f, 664f), vec4<bool>(false, arg_0.e, arg_0.e, arg_0.e)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), -314f, _wgslsmith_f_op_f32(659f - -1046f), _wgslsmith_f_op_f32(select(-1032f, 588f, arg_0.e)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1340f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2304f))), _wgslsmith_f_op_f32(select(112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(896f)) - _wgslsmith_f_op_f32(341f + 1081f)), all(vec4<bool>(false, arg_0.e, arg_0.e, arg_0.e)) && all(vec2<bool>(arg_0.e, false)))), -597f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1079f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)));
    let var_3 = arg_0;
    var var_4 = select(vec4<bool>(false, ~(~var_3.a.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, -36425i, var_3.c), vec3<i32>(var_3.c, arg_0.b, arg_0.c)), firstLeadingBit(-u_input.c.x) == u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(step(-655f, 1000f))) > -282f), vec4<bool>(select(any(vec4<bool>(true, true, arg_0.e, var_3.e)) || true, false, true || (4294967295u != arg_0.d.x)), true, u_input.c.x > (0i | (var_3.c | arg_0.b)), any(!select(vec2<bool>(false, true), vec2<bool>(var_3.e, true), true))), !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(38039i, var_3.a.x), var_3.a.zz) <= 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, -177f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(u_input.c.x, 2147483647i, -26169i, 25744i) & vec4<i32>(-3834i, u_input.b, u_input.b, u_input.c.x), _wgslsmith_sub_i32(6853i, u_input.c.x), u_input.c.x, vec2<u32>(0u, u_input.d), 1u == u_input.a), func_1(i32(-1i) * -1i), min(func_2(Struct_1(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.e), u_input.b, u_input.b, vec2<u32>(u_input.a, 12703u), false), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -2147483647i), 14130i, 11404i, vec2<u32>(u_input.d, 0u), false), vec2<bool>(true, false)), ~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)))))));
    var var_1 = Struct_1(u_input.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(~31707i, -2553i, _wgslsmith_add_i32(u_input.c.x, -59874i)), min(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zxy, vec3<i32>(0i, 32349i, -7858i)), u_input.c.yzx), vec3<i32>(u_input.c.x >> (28235u % 32u), u_input.b & -2147483647i, abs(-35908i)))), ~_wgslsmith_div_i32(firstTrailingBit(~(-25585i)), min(u_input.b, 2147483647i) & u_input.b), _wgslsmith_mult_vec2_u32(select(~vec2<u32>(7368u, 26932u), vec2<u32>(u_input.a, 4294967295u), any(vec4<bool>(false, false, true, true))), _wgslsmith_sub_vec2_u32(vec2<u32>(53634u, u_input.a), vec2<u32>(0u, u_input.a)) & vec2<u32>(u_input.d, 61554u)) >> (abs(abs(vec2<u32>(u_input.d, u_input.a))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1078f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1223f + -1000f)))));
    var_1 = Struct_1(var_1.a, -_wgslsmith_add_i32(~(-2147483647i), ~(-u_input.b)), countOneBits(var_1.b), var_1.d, true);
    var var_2 = select(0u, u_input.d, var_1.e);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-194f + 779f))))));
    var var_3 = vec3<bool>(!(!var_1.e), false, true);
    let var_4 = ~(~u_input.d) | _wgslsmith_dot_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d, 1u), vec4<u32>(50731u, 0u, u_input.d, u_input.d)) & vec4<u32>(52939u, 4294967295u, var_1.d.x, u_input.a)) << (~max(vec4<u32>(1u, var_1.d.x, 5759u, 59266u), vec4<u32>(u_input.a, 20478u, u_input.a, 18464u)) % vec4<u32>(32u)), ~(~vec4<u32>(49852u, u_input.d, 4294967295u, 33087u)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.d.x, 4294967295u), vec3<u32>(u_input.a, 4294967295u, var_1.d.x)), countOneBits(117712u), ~u_input.a, ~var_1.d.x));
    let var_5 = Struct_1(vec4<i32>(-(~firstTrailingBit(var_1.c)), countOneBits(~(var_1.c & u_input.c.x)), ~max(-1i, ~var_1.b), countOneBits(-11082i)), max(1i, countOneBits(u_input.e)), firstLeadingBit(37998i), ~abs(~reverseBits(var_1.d)), any(!vec3<bool>(var_3.x, false, true)) != any(!vec3<bool>(false, var_1.e, false)));
    var_3 = select(select(vec3<bool>(var_5.e, all(vec2<bool>(var_1.e, true)) || all(vec4<bool>(var_5.e, var_1.e, var_3.x, true)), true), vec3<bool>(_wgslsmith_clamp_u32(var_4, var_1.d.x, 14362u) < ~61304u, true, var_5.e), !(!(!vec3<bool>(var_5.e, false, var_5.e)))), select(select(vec3<bool>(var_3.x, any(vec3<bool>(var_3.x, false, true)), all(vec4<bool>(false, var_5.e, true, var_3.x))), select(vec3<bool>(false, var_1.e, var_5.e), vec3<bool>(var_1.e, false, true), select(vec3<bool>(var_5.e, false, var_1.e), vec3<bool>(var_1.e, var_1.e, var_3.x), vec3<bool>(true, var_1.e, true))), select(true, false, false)), vec3<bool>(~(-8062i) > (2147483647i >> (var_1.d.x % 32u)), !any(vec2<bool>(false, var_3.x)), false), true), vec3<bool>(false, all(var_3.zx), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zx, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1183f, -544f, 200f, -781f) - vec4<f32>(587f, -537f, -1932f, -519f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(-1822f + _wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_f_op_f32(abs(1183f)), _wgslsmith_f_op_f32(floor(-936f))))));
}

