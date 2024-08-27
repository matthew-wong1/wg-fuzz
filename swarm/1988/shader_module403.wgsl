struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = all(vec3<bool>(arg_2.x, _wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(trunc(-566f))) != -864f, !(!arg_1.c.x)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, -1050f, 698f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1028f, -1085f, 2073f), vec3<f32>(828f, 687f, 632f)))))));
    let var_2 = Struct_1(arg_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(16516i, 9365i, arg_0.b.x, arg_1.b.x), ~vec4<i32>(2147483647i, -14328i, arg_0.b.x, -2147483647i)), i32(-1i) * -5063i, _wgslsmith_add_i32(-11230i, -7342i) << (1u % 32u), 0i), arg_1.b), arg_1.c, -_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, arg_0.b.x)) >> (_wgslsmith_mod_u32(1u, 80200u) % 32u), arg_1.a);
    return vec3<bool>(!any(select(arg_1.c, vec3<bool>(var_2.c.x, true, arg_0.c.x), vec3<bool>(arg_2.x, true, false))), arg_1.c.x, !arg_0.c.x | var_2.c.x);
}

fn func_3() -> vec4<i32> {
    let var_0 = -u_input.a.x <= -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1732f)))))))) - -1000f);
    let var_2 = Struct_1(24222u, -countOneBits(vec4<i32>(u_input.a.x, 3469i, 2147483647i, u_input.a.x) | ~vec4<i32>(-13720i, -30117i, 1i, u_input.a.x)), vec3<bool>(var_0, all(vec3<bool>(true, true, true)), false), 1i, select(~1u, 0u, select(var_0, any(!vec4<bool>(true, var_0, false, var_0)), false)));
    let var_3 = _wgslsmith_f_op_f32(358f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-309f)), 1321f))));
    var_1 = var_3;
    return ~(~vec4<i32>(max(9478i, var_2.b.x), var_2.d & u_input.a.x, 11769i, 0i) << (~vec4<u32>(1u, _wgslsmith_mult_u32(var_2.e, 45269u), 28567u ^ var_2.e, ~var_2.a) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(55699u, select(select(-vec4<i32>(u_input.a.x, u_input.a.x, -15745i, 1i) << (vec4<u32>(arg_1.a, 18423u, arg_1.a, arg_1.e) % vec4<u32>(32u)), ~(vec4<i32>(u_input.a.x, u_input.a.x, 64i, u_input.a.x) & arg_1.b), func_2(Struct_1(64735u, vec4<i32>(18538i, u_input.a.x, 1i, u_input.a.x), vec3<bool>(arg_0.x, false, false), u_input.a.x, arg_1.e), arg_1, select(vec2<bool>(arg_1.c.x, arg_1.c.x), arg_0.wy, arg_0.wy)).x), arg_1.b, true == all(select(arg_0.wxw, vec3<bool>(true, arg_1.c.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x)))), vec3<bool>(true, any(!arg_1.c), arg_1.a != ~abs(4294967295u)), _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, _wgslsmith_add_i32(arg_1.b.x, arg_1.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.e, firstLeadingBit(_wgslsmith_add_u32(arg_1.e, arg_1.e))), ~select(min(vec2<u32>(46106u, arg_1.a), vec2<u32>(4294967295u, arg_1.e)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.e, arg_1.a), vec2<u32>(0u, 0u), vec2<u32>(5477u, 0u)), select(arg_0.zx, vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32((vec3<i32>(2147483647i, 2147483647i, 0i) & vec3<i32>(var_0.d, var_0.b.x, arg_1.b.x)) | -arg_1.b.yyy, vec3<i32>(-2147483647i, firstLeadingBit(var_0.d), select(1i, 0i, var_0.c.x)))) | (u_input.a.x & ~(~(-arg_1.d)));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(14600u, 0u, var_0.a, var_0.e)) << (vec4<u32>(1273u, arg_1.e << (arg_1.a % 32u), ~arg_1.a, var_0.a & 0u) % vec4<u32>(32u)), select((vec4<u32>(25799u, arg_1.e, 597u, arg_1.a) >> (vec4<u32>(51093u, var_0.a, var_0.a, var_0.e) % vec4<u32>(32u))) << ((vec4<u32>(arg_1.e, var_0.e, arg_1.a, 75071u) | vec4<u32>(1u, 0u, 4294967295u, var_0.a)) % vec4<u32>(32u)), min(vec4<u32>(76178u, 0u, var_0.e, 36334u) << (vec4<u32>(24745u, arg_1.a, 1201u, arg_1.e) % vec4<u32>(32u)), ~vec4<u32>(var_0.a, var_0.e, 1u, 33265u)), vec4<bool>(var_0.c.x && var_0.c.x, u_input.a.x < var_0.b.x, any(vec2<bool>(false, true)), all(arg_0.yw)))), _wgslsmith_div_vec4_i32(vec4<i32>(min(u_input.a.x, -2147483647i), _wgslsmith_add_i32(-var_0.b.x, -20179i), var_0.d, _wgslsmith_mult_i32(-1i, abs(arg_1.d))), -(~var_0.b)), arg_1.c, _wgslsmith_dot_vec2_i32(-u_input.a.xx, vec2<i32>(_wgslsmith_add_i32(var_0.b.x, arg_1.b.x), -1i)), arg_1.a);
    var_0 = Struct_1(4294967295u, var_0.b, vec3<bool>(true || !(true && arg_1.c.x), !all(!vec3<bool>(false, arg_0.x, arg_0.x)), -42839i < arg_1.d), ~(-1i), 0u);
    let var_2 = vec4<i32>(select(max(-u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.b.zz, vec2<i32>(-77499i, arg_1.b.x)), ~vec2<i32>(-84757i, -2147483647i))), -(~min(-2147483647i, var_0.b.x)), (var_0.c.x & (false && arg_0.x)) | !all(vec2<bool>(arg_1.c.x, false))), arg_1.d ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(14640i, arg_1.b.x, u_input.a.x), ~u_input.a.x), _wgslsmith_sub_i32(var_0.b.x, 1i), _wgslsmith_sub_i32(min(arg_1.b.x, -1864i) >> (1u % 32u), _wgslsmith_clamp_i32(-u_input.a.x, arg_1.b.x, u_input.a.x)));
    return var_0.b;
}

fn func_1() -> i32 {
    let var_0 = vec3<bool>(any(vec2<bool>(all(func_2(Struct_1(34807u, vec4<i32>(12637i, u_input.a.x, 13264i, u_input.a.x), vec3<bool>(false, true, true), u_input.a.x, 0u), Struct_1(0u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false), 40691i, 4294967295u), vec2<bool>(true, false))), true)), false, true);
    var var_1 = Struct_1(~(42234u << (1u % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(~11817i, min(2413i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), -1i, u_input.a.x), ~vec4<i32>(~(-2430i), u_input.a.x, u_input.a.x, -u_input.a.x)), var_0, _wgslsmith_add_i32(~u_input.a.x, -24761i), _wgslsmith_add_u32(~4294967295u, ~1u));
    var var_2 = _wgslsmith_f_op_f32(floor(652f));
    var_1 = Struct_1(~(~(~var_1.e) | reverseBits(3384u)), func_4(!select(!vec4<bool>(var_0.x, var_1.c.x, var_0.x, var_0.x), !vec4<bool>(var_1.c.x, var_0.x, var_1.c.x, var_1.c.x), vec4<bool>(false, var_0.x, true, true)), Struct_1(38372u, func_3(), select(select(var_0, vec3<bool>(var_1.c.x, var_1.c.x, false), false), !var_0, vec3<bool>(false, false, var_0.x)), _wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, var_0.x), -10202i), min(min(57460u, var_1.a), var_1.e))), var_0, u_input.a.x, ~var_1.a);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(224f, -233f))), 234f))) * -1407f);
    return _wgslsmith_div_i32(abs(-5390i), -(~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, -1i), ~vec3<i32>(var_1.d, 0i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(93058u, countOneBits(vec4<i32>(-u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 9809i), vec3<i32>(-28160i, -1171i, 0i)), -27033i >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u), func_1())), vec3<bool>(true, true, true), ~(-func_1()) ^ u_input.a.x, _wgslsmith_mult_u32(firstTrailingBit(1u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(50120u, 68255u), _wgslsmith_div_vec2_u32(vec2<u32>(52175u, 10512u), vec2<u32>(4294967295u, 677u)))));
    let var_1 = 15088u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1603f), -873f))))) == -1114f;
    var var_3 = Struct_1(~0u, var_0.b, select(vec3<bool>(!var_2, false, (var_1 ^ 0u) <= _wgslsmith_sub_u32(0u, var_0.e)), !(!(!var_0.c)), vec3<bool>(false, var_2, var_0.c.x)), 25776i, _wgslsmith_add_u32(var_1, _wgslsmith_sub_u32(0u & ~var_0.a, ~(113248u >> (var_1 % 32u)))));
    let var_4 = var_3.b << (vec4<u32>(1u, ~(~abs(4294967295u)), _wgslsmith_clamp_u32(~var_3.e, var_3.e, var_1 >> (var_0.e % 32u)), var_0.a) % vec4<u32>(32u));
    var_3 = Struct_1(8791u, -(~(vec4<i32>(var_0.d, var_0.b.x, u_input.a.x, u_input.a.x) >> (~vec4<u32>(var_0.e, var_1, 69995u, 0u) % vec4<u32>(32u)))), vec3<bool>(all(select(select(vec4<bool>(var_3.c.x, var_2, var_2, var_3.c.x), vec4<bool>(var_2, var_0.c.x, var_2, var_2), vec4<bool>(false, var_2, var_0.c.x, var_2)), vec4<bool>(var_3.c.x, var_3.c.x, false, var_3.c.x), var_0.a <= var_1)), !var_3.c.x, var_3.c.x), _wgslsmith_sub_i32((1i | _wgslsmith_add_i32(72738i, var_0.d)) | -func_3().x, 0i), _wgslsmith_mult_u32(abs(countOneBits(~2165u)), var_3.e | _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_3.e, var_1)), vec2<u32>(1u, var_1))));
    let var_5 = ~vec3<u32>(~56029u, _wgslsmith_sub_u32(4294967295u, var_3.e) | 23646u, select(var_0.e, 4294967295u, !var_2)) ^ abs(max(vec3<u32>(0u, var_0.e, 4294967295u), vec3<u32>(var_3.e, var_3.a, 1u) & firstTrailingBit(vec3<u32>(var_3.e, var_0.e, 27092u))));
    var_3 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_5, reverseBits(var_5)), 61665u), _wgslsmith_div_vec4_i32(~var_4 & (var_0.b << (vec4<u32>(0u, var_5.x, var_5.x, var_1) % vec4<u32>(32u))), var_4) | ~vec4<i32>(-20118i, var_4.x | u_input.a.x, var_4.x >> (var_3.a % 32u), -26532i), var_3.c, max(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, 2147483647i), -47597i, var_4.x), 1i), 1222i), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(652f, 317f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1091f, 1201f)), -108f)))), abs(firstLeadingBit(~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1571f, -733f, -659f), vec3<f32>(386f, -1000f, -723f))))))), _wgslsmith_add_u32(0u, ~abs(var_3.e)) & (~4294967295u ^ var_3.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-798f, _wgslsmith_div_f32(717f, -2206f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-456f, -393f)))))));
}

