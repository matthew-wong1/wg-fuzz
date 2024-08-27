struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(max(var_0, -24977i), select(u_input.a & var_0, -33716i, true), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(12898i, var_0, 7480i, u_input.b.x), vec4<i32>(10267i, u_input.a, u_input.a, var_0)), var_0, -3822i)), i32(-1i) * -_wgslsmith_add_i32(-1i, 0i)), Struct_1(19718i), Struct_1(-2470i), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-15600i, u_input.a, 2147483647i, u_input.a) & ~vec4<i32>(2147483647i, 40755i, u_input.b.x, u_input.a), select(-vec4<i32>(2147483647i, u_input.a, var_0, u_input.a), vec4<i32>(-2147483647i, u_input.a, -2147483647i, 2147483647i), true))), !select(vec4<bool>(u_input.b.x < u_input.a, true, any(vec2<bool>(false, true)), false), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), true));
    var var_2 = _wgslsmith_clamp_u32(1u, ~(~13669u), ~(~(~reverseBits(25903u))));
    var var_3 = Struct_1(-12007i);
    var_2 = _wgslsmith_add_u32(~select(62433u, ~1u, var_1.e.x) >> (~reverseBits(12914u) % 32u), 72447u);
    return _wgslsmith_dot_vec2_u32(abs(abs(abs(~vec2<u32>(32781u, 1u)))), select(_wgslsmith_add_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(1u, 0u))), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(44586u, 55453u), vec2<u32>(42991u, 8357u)), vec2<u32>(1u, 1u)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(12182u, 4294967295u, 4294967295u), vec3<u32>(41320u, 1u, 78450u)) < ~8980u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = countOneBits(vec4<u32>(4294967295u, _wgslsmith_sub_u32(75651u, ~4294967295u), 14561u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(101410u, 40313u, 4294967295u, 47080u), abs(vec4<u32>(8698u, 7869u, 4395u, 1u)))));
    let var_1 = Struct_1(2147483647i);
    var var_2 = _wgslsmith_mult_vec4_u32(~var_0, _wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_0.x, firstTrailingBit(15429u), var_0.x >> (22337u % 32u), ~var_0.x), vec4<u32>(firstLeadingBit(0u), 1u, 1u, func_3())), ~var_0, select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), var_0), _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(var_0.x, 1163u, var_0.x, var_0.x))), ~var_0, !all(vec4<bool>(false, true, arg_1, true)))));
    var var_3 = !select(select(select(arg_0, arg_0, arg_0), !(!arg_0), vec3<bool>(1u >= var_0.x, true, !arg_0.x)), arg_0, !vec3<bool>(any(arg_0), arg_1, arg_1));
    var var_4 = _wgslsmith_clamp_i32(19782i, _wgslsmith_mult_i32(13116i, 1i), -(var_1.a & abs(~var_1.a)));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(32482i, 1i), -reverseBits(u_input.b));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(-236f * -225f))) + _wgslsmith_f_op_f32(-451f + _wgslsmith_div_f32(-711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1911f)))));
    let var_1 = Struct_2(_wgslsmith_mult_i32(-16627i, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_3.a, -1i), vec4<i32>(u_input.b.x, arg_3.a, arg_1.x, u_input.a)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(35715i, u_input.a, arg_1.x), vec3<i32>(arg_3.a, arg_1.x, -13628i)) >> (firstLeadingBit(arg_2.x) % 32u)), Struct_1(select(-10883i, arg_3.a, false) >> (~28378u % 32u)), arg_3, vec4<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), -1414f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f - var_0)), true, false));
    var var_2 = var_1;
    var_2 = Struct_2(max(max(~abs(var_1.d.a), 0i), var_1.c.a), Struct_1(~58275i), var_1.c, arg_3, var_2.e);
    var_2 = Struct_2(~(~(~_wgslsmith_sub_i32(arg_1.x, -12210i))), arg_3, Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.d.a, 36794i), _wgslsmith_div_i32(-59659i, arg_3.a)), -23222i, 1i)), Struct_1(arg_1.x), select(var_2.e, !(!vec4<bool>(true, var_2.e.x, true, var_1.e.x)), vec4<bool>(true, false, !select(true, var_2.e.x, var_2.e.x), all(vec3<bool>(var_1.e.x, false, false)))));
    return Struct_2(_wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(func_2(vec3<bool>(var_1.e.x, false, false), false), ~37521i)), var_2.a), Struct_1(1i), Struct_1(-76i), Struct_1(-(~var_1.d.a)), select(vec4<bool>(var_2.e.x, true, true, var_2.e.x), var_1.e, vec4<bool>(var_2.e.x, all(vec4<bool>(var_1.e.x, var_1.e.x, false, false)), all(var_1.e), true)));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(select(1u, 0u, !any(vec2<bool>(false, true))), vec3<i32>(0i, func_2(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true), !any(vec2<bool>(true, false))), max(_wgslsmith_div_i32(u_input.a, u_input.b.x) ^ -u_input.b.x, -(u_input.a | u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(1u, 1825u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(36438u, 107436u), vec2<u32>(80940u, 7326u))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(13057u, 23704u), vec2<u32>(0u, 0u), vec2<bool>(false, true)) & vec2<u32>(21433u, 40626u), ~vec2<u32>(1u, 1u))), Struct_1(i32(-1i) * -30704i));
    let var_1 = 907f;
    var var_2 = true;
    var_2 = func_4(min(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(65562u), select(4294967295u, 0u, var_0.e.x), 12733u, ~63635u), vec4<u32>(countOneBits(72044u), ~11294u, reverseBits(31758u), _wgslsmith_dot_vec3_u32(vec3<u32>(87504u, 72644u, 18244u), vec3<u32>(65973u, 1u, 8387u)))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 40734u), vec4<u32>(1u, 1u, 1u, 1u)), 1u)), vec3<i32>(_wgslsmith_sub_i32(reverseBits(~u_input.b.x), 2147483647i), -2147483647i ^ (var_0.c.a << (~29473u % 32u)), u_input.b.x), abs(vec2<u32>(_wgslsmith_div_u32(~1u, firstTrailingBit(1u)), 1u)), var_0.b).e.x;
    let var_3 = func_4(abs(_wgslsmith_add_u32(0u, 46326u) >> (_wgslsmith_mult_u32(0u, 1u) % 32u)) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 57136u, 59075u, 54714u)), ~(~vec4<u32>(17472u, 4294967295u, 8541u, 56087u))) % 32u), vec3<i32>(_wgslsmith_add_i32(-u_input.b.x, _wgslsmith_div_i32(2147483647i, u_input.a)), ~func_4(4294967295u, vec3<i32>(10065i, 2147483647i, var_0.b.a), vec2<u32>(5652u, 4294967295u), var_0.c).a, -(~var_0.d.a)) ^ select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_0.d.a, -31795i), vec3<i32>(-6768i, 0i, u_input.b.x), vec3<i32>(var_0.d.a, var_0.c.a, 1i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1i, var_0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.a, var_0.c.a, var_0.c.a), vec3<i32>(1590i, 0i, u_input.b.x)), vec3<i32>(u_input.a, 0i, var_0.c.a)), true), firstLeadingBit(firstTrailingBit(reverseBits(vec2<u32>(1u, 1u)))), Struct_1(-1i)).e;
    return vec4<u32>(1u, 1u, 1u, 1u);
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(arg_3.c.a, arg_3.d, arg_3.c, func_4(_wgslsmith_clamp_u32(arg_2.x, firstTrailingBit(firstTrailingBit(arg_2.x)), countOneBits(func_1().x)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, arg_3.b.a), _wgslsmith_mult_vec3_i32(vec3<i32>(58080i, 9532i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, -2147483647i)))), ~vec2<u32>(1u, ~38054u), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, arg_3.c.a, -4534i), firstTrailingBit(vec3<i32>(2147483647i, -55925i, u_input.a))))).c, !func_4(_wgslsmith_mod_u32(_wgslsmith_mod_u32(11126u, 1u), ~arg_2.x), ~(vec3<i32>(-56516i, arg_3.a, arg_3.c.a) >> (vec3<u32>(arg_2.x, arg_2.x, 4294967295u) % vec3<u32>(32u))), ~firstLeadingBit(vec2<u32>(35926u, arg_2.x)), Struct_1(u_input.b.x ^ 17392i)).e);
    let var_1 = var_0;
    var var_2 = 16908u;
    var_2 = 16105u;
    var_2 = 7379u;
    return _wgslsmith_div_i32(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_3.c.a, ~u_input.a, arg_3.d.a, 41388i), select(~vec4<i32>(u_input.b.x, var_0.c.a, u_input.b.x, -43925i), -vec4<i32>(0i, 34652i, var_1.c.a, var_0.a), vec4<bool>(false, arg_3.e.x, true, arg_3.e.x))), 52406i);
}

fn func_6(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = vec3<bool>(func_4(12131u, ~vec3<i32>(1i, arg_0, -u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(1u, 1u)), abs(vec2<u32>(1u, 1u))), func_4(4294967295u, reverseBits(vec3<i32>(arg_0, u_input.b.x, 19223i)) | -vec3<i32>(arg_0, 17364i, -33263i), ~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, arg_1.x)), func_4(~37247u, abs(vec3<i32>(-11089i, 0i, 42502i)), ~vec2<u32>(4294967295u, 1u), func_4(4294967295u, vec3<i32>(2147483647i, arg_0, u_input.a), vec2<u32>(21677u, 1u), Struct_1(u_input.a)).d).b).d).e.x, arg_1.x, true);
    let var_1 = _wgslsmith_f_op_f32(1001f * -1866f);
    let var_2 = 1u;
    var var_3 = ~vec4<u32>(1u, _wgslsmith_add_u32(countOneBits(var_2), ~var_2), var_2, ~countOneBits(var_2)) ^ ~vec4<u32>(51169u, abs(firstLeadingBit(72195u)), ~4294967295u & var_2, 0u);
    var var_4 = vec3<bool>(!any(vec2<bool>(!var_0.x, arg_1.x)), select(arg_0, 0i, any(vec2<bool>(true, true))) != (~arg_0 >> (0u % 32u)), any(arg_1.wwy));
    return Struct_2(-32366i, Struct_1(abs(~(~(-38470i)))), Struct_1(-2147483647i), func_4(var_2 << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.x, 14450u), var_3.x) % 32u), ~(~vec3<i32>(arg_0, u_input.a, 13618i) | abs(vec3<i32>(6555i, arg_0, 7166i))), var_3.yy << ((~var_3.yw ^ func_1().yx) % vec2<u32>(32u)), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 62537i, arg_0), vec4<i32>(arg_0, -23573i, u_input.a, u_input.a)), -2147483647i))).d, vec4<bool>(any(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !all(vec2<bool>(false, var_4.x)), var_4.x, 4294967295u <= ~(var_2 ^ 59069u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1209f, -1561f))))), abs(func_1()), func_4(27036u, ~reverseBits(vec3<i32>(u_input.a, u_input.a, -1i)), vec2<u32>(_wgslsmith_sub_u32(4687u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2420u, 0u))), func_4(1u, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, 20128i), vec3<i32>(u_input.a, u_input.a, -45128i)), ~vec2<u32>(27187u, 0u), Struct_1(-2147483647i)).b)), !vec4<bool>(all(vec2<bool>(true, true)) | false, false, select(all(vec4<bool>(false, false, false, false)), u_input.b.x >= u_input.b.x, func_4(1u, vec3<i32>(-33686i, u_input.a, -12325i), vec2<u32>(4294967295u, 4294967295u), Struct_1(u_input.a)).e.x), all(vec4<bool>(false, true, false, false))));
    var var_1 = var_0.e.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-320f, 1010f), _wgslsmith_f_op_f32(sign(641f)), 813f, 1996f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_3 = -func_6(-func_6(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 54963i), vec3<i32>(u_input.b.x, 26314i, u_input.b.x)), var_0.e).a, var_0.e).b.a;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, min(75671u, 31895u), -(u_input.b | select(-vec2<i32>(-2147483647i, var_0.d.a), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.x, -174f), 385f, _wgslsmith_f_op_f32(max(var_2.x, 1000f)))), _wgslsmith_sub_i32(var_0.a, u_input.b.x));
}

