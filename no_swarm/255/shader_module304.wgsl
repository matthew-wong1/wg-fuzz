struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, -1000f, _wgslsmith_f_op_f32(-485f + 250f))))));
    var var_1 = select(vec3<bool>(true, !(true | all(vec2<bool>(false, false))), !any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), select(vec3<bool>(select(true, false, any(vec4<bool>(false, false, true, false))), true && select(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_2 = u_input.a.x;
    var var_3 = u_input.a.x;
    var var_4 = ~abs(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(33810u, 0u, 88767u, u_input.b)), ~vec4<u32>(u_input.b, 39127u, 1480u, u_input.b) >> (~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u))));
    return var_1.x;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1656f, 173f, -1329f, -1812f) - vec4<f32>(-281f, 396f, -182f, -1000f)) + vec4<f32>(-1715f, -232f, -1000f, 388f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1357f, 948f, 1f, _wgslsmith_f_op_f32(step(-1012f, 1000f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_0.yyz)))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1000f))), -1323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))));
    let var_2 = Struct_2(!arg_2.a, vec3<u32>(u_input.b, countOneBits(97454u | arg_0), ~5355u));
    let var_3 = vec4<bool>(true, -2147483647i >= _wgslsmith_mod_i32(~abs(u_input.a.x), _wgslsmith_sub_i32(~(-1i), reverseBits(0i))), select(-875f != _wgslsmith_f_op_f32(select(-444f, _wgslsmith_f_op_f32(340f + -433f), true)), select(arg_2.a, all(!vec2<bool>(var_2.a, arg_2.a)), true), any(vec3<bool>(true, true, true))), all(!vec3<bool>(false, all(vec3<bool>(arg_1, false, true)), true && arg_1)));
    var var_4 = max(~vec4<i32>(-1i, -1i, 13730i, 0i) << (vec4<u32>(1u, u_input.b, var_2.b.x | 1u, ~4294967295u) % vec4<u32>(32u)), max(~vec4<i32>(-2147483647i, 42301i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x >> (1u % 32u)))) & ~firstLeadingBit(vec4<i32>(select(u_input.a.x, u_input.a.x, false), abs(u_input.a.x), -2147483647i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 24076i)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_1.x)))), -1077f, -521f));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = vec2<bool>(any(vec2<bool>(arg_1, all(!vec3<bool>(arg_1, false, true)))), arg_1);
    var_0 = !vec2<bool>(select((arg_0.x >= 997f) || !arg_1, var_0.x, -u_input.a.x < ~4111i), select(!arg_1 && !var_0.x, !(-395f == arg_0.x), all(vec4<bool>(false, var_0.x, false, false))));
    var var_1 = select(max(vec4<u32>(~3754u, ~1u, ~(~u_input.b), 15033u), ~abs(~vec4<u32>(u_input.b, u_input.b, 31615u, 1u))), firstTrailingBit(max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), vec4<u32>(1280u, 27053u, 29042u, u_input.b)), vec4<u32>(0u, 1u, u_input.b, 4294967295u)) | (firstLeadingBit(vec4<u32>(1u, 9666u, u_input.b, 0u)) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), select(!(!select(vec4<bool>(false, var_0.x, arg_1, true), vec4<bool>(false, var_0.x, false, false), vec4<bool>(arg_1, var_0.x, false, true))), vec4<bool>(true, false || arg_1, !(false || arg_1), _wgslsmith_f_op_f32(exp2(arg_0.x)) == arg_0.x), true));
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(func_4(20933u, !func_3(i32(-1i) * -35344i), Struct_2(true, var_1.xxy))), vec2<bool>(false, true), var_0.x & true);
    var var_3 = _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a, max(5960i, -2459i), countOneBits(u_input.a.x), -1i), firstTrailingBit(vec4<i32>(var_2.a, var_2.a, -41103i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-4550i), _wgslsmith_clamp_i32(countOneBits(-2147483647i), -13682i, _wgslsmith_div_i32(14394i, var_2.a)), min(~var_2.a, u_input.a.x), _wgslsmith_mult_i32(0i, var_2.a)), ~max(vec4<i32>(-1i, var_2.a, 2147483647i, var_2.a), vec4<i32>(-7113i, u_input.a.x, var_2.a, var_2.a)) >> (vec4<u32>(var_1.x ^ u_input.b, 1u, ~var_1.x, 32743u) % vec4<u32>(32u)), (-vec4<i32>(var_2.a, u_input.a.x, var_2.a, u_input.a.x) << (abs(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u)) % vec4<u32>(32u))) ^ min(~vec4<i32>(u_input.a.x, var_2.a, u_input.a.x, var_2.a), vec4<i32>(var_2.a, var_2.a, 33472i, -8150i) << (vec4<u32>(22247u, 67640u, var_1.x, 1u) % vec4<u32>(32u)))));
    return ~(~_wgslsmith_div_u32(~u_input.b, 75635u | u_input.b));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = -19371i << ((_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4194u, 44313u, u_input.b), abs(vec3<u32>(4294967295u, u_input.b, 0u))), 4294967295u, ~(arg_0.x ^ 1u)) & 1u) % 32u);
    var var_1 = Struct_2(1u == ~select(4294967295u >> (u_input.b % 32u), ~74322u, any(vec2<bool>(true, true))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(select(71u, 24015u, true), u_input.b, ~u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.yy), 67614u >> (arg_0.x % 32u), abs(4294967295u)) | ~arg_0));
    let var_2 = vec2<u32>(1u, var_1.b.x) >> (var_1.b.xy % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f))) - 1000f));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3, -2020f, var_3)))), vec3<f32>(var_3, var_3, _wgslsmith_div_f32(392f, 493f)))), vec3<f32>(-198f, var_3, var_3), all(select(select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(true, var_1.a, var_1.a, var_1.a), var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, false), !vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(542f, 1000f), _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(var_3 + var_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1182f, -1027f, var_3))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, 734f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(-652f - var_3), -266f))))));
    return Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(var_4 * vec3<f32>(_wgslsmith_f_op_f32(abs(650f)), _wgslsmith_f_op_f32(round(1f)), -1185f)), vec2<bool>(all(vec3<bool>(true, false, true)), var_1.a), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = arg_0.x;
    var var_1 = func_5(vec3<u32>(_wgslsmith_mult_u32(~(~arg_2.b.x), _wgslsmith_dot_vec2_u32(arg_2.b.xy >> (arg_2.b.yx % vec2<u32>(32u)), arg_2.b.xz)), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_2.b ^ arg_2.b), vec3<u32>(_wgslsmith_div_u32(arg_2.b.x, 1u), func_2(arg_0.yy, arg_2.a), u_input.b)), countOneBits(~arg_2.b.x) | max(arg_2.b.x, arg_2.b.x ^ arg_2.b.x)), 12985i);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_4(abs(arg_2.b.x), arg_1, Struct_2(true, arg_2.b))).x, _wgslsmith_f_op_f32(-arg_0.x), true)) - func_5(arg_2.b << (~vec3<u32>(u_input.b, arg_2.b.x, 0u) % vec3<u32>(32u)), var_1.a).b.x));
    let var_2 = false && all(select(!(!vec3<bool>(false, arg_1, true)), select(vec3<bool>(false, var_1.d, arg_2.a), vec3<bool>(true, true, true), vec3<bool>(arg_1, false, true)), func_5(~arg_2.b, u_input.a.x).c.x));
    var var_3 = var_1.b.x;
    return var_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1;
    let var_1 = abs(-reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, u_input.a.x, arg_0.a), vec4<i32>(u_input.a.x, 0i, 0i, 1i)) << (select(vec4<u32>(1u, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, arg_1.b.x, 1u), false) % vec4<u32>(32u))));
    var var_2 = 94340u;
    var var_3 = func_5(vec3<u32>(abs(abs(firstTrailingBit(u_input.b))), _wgslsmith_mod_u32(~(~arg_1.b.x), u_input.b), firstLeadingBit(~var_0.b.x | 28240u)), var_1.x).c.x;
    var_2 = firstTrailingBit(_wgslsmith_mod_u32(select(arg_1.b.x, ~_wgslsmith_div_u32(arg_1.b.x, var_0.b.x), !arg_0.c.x), ~(~u_input.b ^ _wgslsmith_clamp_u32(var_0.b.x, 0u, u_input.b))));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(i32(-1i) * -1272i, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1038f, -462f) + vec3<f32>(1142f, -1031f, 433f)), true, Struct_2(true, vec3<u32>(u_input.b, 4294967295u, u_input.b)))), !func_5(vec3<u32>(u_input.b, u_input.b, u_input.b), 23916i).c, !func_3(-18729i)), Struct_2(true, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 44060u))))) * 1000f);
    let var_1 = func_5(_wgslsmith_div_vec3_u32(vec3<u32>(~60065u, _wgslsmith_mult_u32(~37900u, u_input.b), select(u_input.b, firstLeadingBit(4294967295u), 4294967295u > u_input.b)), countOneBits(~(~vec3<u32>(4294967295u, 0u, 4294967295u)))), u_input.a.x);
    let var_2 = Struct_2(false, vec3<u32>(~u_input.b, 4294967295u, _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u), vec2<bool>(var_1.c.x, false))), ~(~vec2<u32>(u_input.b, u_input.b)))));
    let var_3 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -453f) < _wgslsmith_f_op_f32(-var_1.b.x), var_1.c.x), !select(select(select(vec3<bool>(true, var_1.d, false), vec3<bool>(var_2.a, var_1.c.x, false), true), select(vec3<bool>(var_2.a, true, true), vec3<bool>(var_2.a, true, false), var_2.a), vec3<bool>(var_2.a, true, var_1.d)), select(select(vec3<bool>(false, true, var_2.a), vec3<bool>(false, false, var_2.a), vec3<bool>(var_2.a, false, var_2.a)), vec3<bool>(var_1.d, true, false), var_2.b.x <= var_2.b.x), var_1.d), all(select(!vec4<bool>(var_1.d, true, true, var_2.a), !select(vec4<bool>(var_2.a, var_1.c.x, var_1.d, var_2.a), vec4<bool>(false, true, false, var_1.c.x), var_2.a), vec4<bool>(!var_1.d, all(vec3<bool>(var_1.d, true, true)), var_2.a == true, false))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(var_1, var_2))) * var_1.b.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_div_f32(412f, var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-631f))), _wgslsmith_f_op_f32(-var_1.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1228f - -529f), func_5(var_2.b, 40564i).b.x, _wgslsmith_f_op_f32(sign(702f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.x, var_1.b.x, 1413f)))))));
    var_0 = 308f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x)))), var_1.a);
}

