struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(~4294967295u), ~55936u, select(1u, 24977u, true)), abs(vec3<u32>(~1u, 0u, _wgslsmith_sub_u32(91741u, 1u)))), min(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(28120u, 65158u, 23392u, 0u), firstLeadingBit(vec4<u32>(1u, 50022u, 48574u, 116530u))), abs(max(45949u, 1u))), ~(~_wgslsmith_add_u32(72139u, 3081u))));
    var var_1 = vec3<u32>(0u, ~firstTrailingBit(1u) & ~(~(~91891u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15328u, 69819u, 26562u, 4294967295u), vec4<u32>(69770u, 1u, 0u, 72528u)), ~4294967295u) & ~select(~1u, 1u, all(vec3<bool>(true, true, true))));
    var_1 = vec3<u32>(~4294967295u, ~var_1.x, 1u);
    let var_2 = vec4<f32>(-1756f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -550f) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -135f), 1129f);
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-406f, -393f))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f + _wgslsmith_f_op_f32(round(-191f))) * _wgslsmith_f_op_f32(floor(575f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(581f, 1199f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1181f - _wgslsmith_div_f32(-238f, -526f)), u_input.a == -u_input.a)));
    let var_1 = Struct_1(!all(vec4<bool>(var_0, false, true, var_0)), vec3<u32>(~4294967295u, 64853u, 48210u), vec3<f32>(852f, _wgslsmith_f_op_f32(min(-1490f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(523f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(f32(-1f) * -535f)) * _wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(select(1074f, 427f, var_0))))), vec4<bool>(!(!var_0 | true), !var_0, var_0, var_0));
    let var_2 = false;
    let var_3 = var_1.b.x;
    var var_4 = Struct_2(Struct_1(all(var_1.d.wyx), countOneBits(~vec3<u32>(4294967295u, var_1.b.x, var_3)), vec3<f32>(_wgslsmith_f_op_f32(func_3(-2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1109f)), -485f), var_1.c.x), !select(select(var_1.d, var_1.d, vec4<bool>(var_1.d.x, var_1.a, true, var_1.a)), select(var_1.d, var_1.d, var_2), false)));
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2.b.x;
    var var_1 = Struct_2(Struct_1(true, arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_2.c.x, -526f)), vec4<bool>(!all(vec3<bool>(arg_2.a, false, true)), arg_2.a, arg_2.a, true)));
    let var_2 = vec2<i32>(~2147483647i, 0i);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.a.c.x))));
    var var_4 = -1i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -298f)));
}

fn func_1() -> u32 {
    var var_0 = -380f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-697f * 1f)) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2928f, 1000f, -349f, 1028f))), func_2(), func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -461f), 1067f, 323f);
    let var_2 = Struct_2(func_2());
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f + var_1.x)), !var_2.a.a)) + -1653f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2().c.x + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(func_3(u_input.a))))));
    let var_4 = var_2.a.b.x;
    return ~min(_wgslsmith_add_u32(firstTrailingBit(1u), min(var_4, var_4)), var_4 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(108707u, 0u) >> (var_2.a.b.yx % vec2<u32>(32u)), var_2.a.b.zz) % 32u));
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(73381u, 13939u, arg_1)), vec3<u32>(38739u, 63699u, arg_1) ^ ~vec3<u32>(arg_1, arg_1, arg_1)), arg_1));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(40593i, 43132i, u_input.a, -31844i), ~vec4<i32>(0i, u_input.a, 1i, u_input.a)) & vec4<i32>(u_input.a, 2147483647i, ~0i, u_input.a ^ u_input.a), vec4<i32>(32878i, _wgslsmith_clamp_i32(u_input.a, -u_input.a, reverseBits(u_input.a)), -u_input.a, ~_wgslsmith_div_i32(u_input.a, u_input.a))) >> (vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(23761u), var_1.b.x), 356u >> ((var_0.x << (87322u % 32u)) % 32u), ~(~4294967295u & ~var_1.b.x), firstTrailingBit(~var_1.b.x << (var_1.b.x % 32u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(37436u, var_0.x, 4294967295u, 0u), vec4<u32>(var_1.b.x, 3541u, arg_1, var_0.x) >> (vec4<u32>(var_0.x, arg_1, 4294967295u, 811u) % vec4<u32>(32u))), (firstTrailingBit(vec4<u32>(50211u, var_0.x, var_0.x, arg_1)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, 4451u, var_0.x, 4294967295u), vec4<u32>(4294967295u, 36352u, 542u, var_0.x), vec4<u32>(arg_1, var_0.x, var_0.x, var_0.x))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, 85721u), vec4<u32>(arg_1, 34236u, var_0.x, var_0.x)) % vec4<u32>(32u))) ^ max(~vec4<u32>(var_0.x, 1u, max(arg_1, var_0.x), 1u), (abs(vec4<u32>(17867u, 52648u, 18100u, 24705u)) & ~vec4<u32>(var_0.x, 58012u, 10355u, var_1.b.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, var_1.b.x, var_0.x, 4104u), vec4<u32>(arg_1, var_0.x, var_1.b.x, var_0.x)) % vec4<u32>(32u)));
    return Struct_2(Struct_1(!((arg_1 ^ var_0.x) >= 32541u), vec3<u32>(~4294967295u, _wgslsmith_mult_u32(1u, var_3.x), select(arg_1, 9009u, var_1.d.x)) & select(~vec3<u32>(var_0.x, 4294967295u, var_0.x), max(vec3<u32>(var_1.b.x, 35447u, 4294967295u), vec3<u32>(var_3.x, var_3.x, 0u)), func_2().d.zwy), _wgslsmith_f_op_vec3_f32(step(var_1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(var_1.c - var_1.c)))), var_1.d));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_f32(min(682f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_1.c.x, -852f, 880f), vec4<f32>(arg_1.c.x, arg_0.a.c.x, arg_0.a.c.x, arg_1.c.x), false)))), func_5(_wgslsmith_f_op_f32(select(-354f, -204f, true)), 28345u).a, func_2())))), arg_0.a.b.x).a;
    let var_1 = 1f;
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, arg_1.b.x), 1u, _wgslsmith_sub_u32(0u, var_0.b.x)), ~(~arg_0.a.b.x), ~countOneBits(83741u)), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, arg_1.b.x, var_0.b.x, arg_0.a.b.x), vec4<u32>(4742u, arg_1.b.x, arg_1.b.x, 4294967295u), arg_1.d), vec4<u32>(0u, 15789u, arg_1.b.x, arg_0.a.b.x) ^ vec4<u32>(0u, var_0.b.x, arg_0.a.b.x, 1u)));
    var var_3 = Struct_1(all(!arg_1.d.yy), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(21138u, 4294967295u, var_0.b.x) & arg_1.b), vec3<u32>(arg_0.a.b.x, 0u, 50718u) ^ (vec3<u32>(var_2.x, var_2.x, 58053u) >> (var_2.xxy % vec3<u32>(32u)))), vec3<u32>(arg_0.a.b.x, func_2().b.x, _wgslsmith_div_u32(var_2.x, func_1()))), vec3<f32>(arg_1.c.x, 302f, func_5(_wgslsmith_f_op_f32(-var_1), ~(0u | var_0.b.x)).a.c.x), select(vec4<bool>(true || all(vec4<bool>(arg_2, false, arg_2, arg_1.a)), var_0.a, 2147483647i <= countOneBits(arg_3.x), arg_0.a.a), arg_0.a.d, !vec4<bool>(54719u == arg_0.a.b.x, all(var_0.d), !arg_2, func_5(var_1, var_2.x).a.d.x)));
    let var_4 = !arg_1.d.zyy;
    return func_5(var_1, ~min(~1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, arg_1.b.x), arg_0.a.b.zz, true), vec2<u32>(var_3.b.x, var_0.b.x)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(false, false)), true, true), (u_input.a << (1u % 32u)) <= -30212i), vec4<bool>(true, true || any(vec4<bool>(true, true, false, true)), true, true), true);
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) - 2548f)), ~func_1()), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(799f, -1673f, false)), _wgslsmith_f_op_f32(-673f + -1834f)))), _wgslsmith_mod_u32(4294967295u, 1u)).a, false, -min(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -18760i, 3336i, 1i), vec4<i32>(u_input.a, -25441i, u_input.a, 92920i), vec4<i32>(u_input.a, u_input.a, u_input.a, -36656i)), vec4<i32>(46843i, -1i, u_input.a, u_input.a)), min(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a), vec4<i32>(1i, -1i, 2147483647i, 8793i)) << (vec4<u32>(2917u, 0u, 4294967295u, 0u) % vec4<u32>(32u))));
    let var_2 = Struct_2(func_2());
    var var_3 = func_5(-1000f, ~var_2.a.b.x);
    var_3 = func_5(_wgslsmith_f_op_f32(ceil(var_2.a.c.x)), ~_wgslsmith_div_u32(~(~var_2.a.b.x), 264u << (_wgslsmith_add_u32(45920u, var_3.a.b.x) % 32u)));
    let var_4 = func_5(_wgslsmith_div_f32(-1000f, -230f), 1119u).a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(-max(vec3<i32>(23598i, -21329i, -1i), vec3<i32>(u_input.a, u_input.a, -36480i)))), var_3.a.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(49045u, var_1.b.x, 1u), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 50209u, 87844u)), ~vec3<u32>(var_1.b.x, 58207u, 33487u), vec3<u32>(10167u, var_1.b.x, var_1.b.x))), 3431u << (firstLeadingBit(~var_3.a.b.x) % 32u)));
}

