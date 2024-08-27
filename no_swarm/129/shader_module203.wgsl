struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = vec3<bool>(!((u_input.a != u_input.a) & any(vec3<bool>(true, false, true))) || true, all(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1127f)), 1328f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-743f, 298f))))));
    let var_1 = _wgslsmith_f_op_f32(abs(-1139f));
    var_0 = select(!vec3<bool>(true, !all(vec4<bool>(false, false, var_0.x, true)), false), !(!vec3<bool>(all(vec4<bool>(false, var_0.x, false, true)), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x)), true);
    return select(select(vec4<bool>(-arg_0.x > ~u_input.b, var_0.x, all(!vec3<bool>(var_0.x, false, var_0.x)), true), select(select(vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), !vec4<bool>(false, var_0.x, var_0.x, false)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, false), var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), all(select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x)), !vec3<bool>(false, var_0.x, true)))), vec4<bool>(any(vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), true, any(vec4<bool>(var_0.x, true, false, var_0.x)))), var_0.x, var_0.x, !var_0.x && !any(vec3<bool>(true, false, true))), !(!vec4<bool>(true, !var_0.x, false, var_0.x)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = vec4<bool>(select(false, false, all(func_3(countOneBits(arg_1.b.d)))), true, true, any(vec2<bool>(true, ~arg_0.c >= 28938u)));
    var var_1 = Struct_2(arg_0.a, Struct_1(arg_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(1956f - _wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x + -1523f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.b.x, -1000f)))), arg_1.b.c, countOneBits(_wgslsmith_sub_vec2_i32(arg_0.b.a.xx, ~arg_0.b.d)), ~firstLeadingBit(arg_1.b.a.xzz)), (arg_0.b.c & (arg_1.b.c << ((0u | arg_1.c) % 32u))) | arg_0.b.c);
    global0 = array<vec2<bool>, 2>();
    var var_2 = -83565i;
    global0 = array<vec2<bool>, 2>();
    return ~(i32(-1i) * -1i);
}

fn func_1() -> Struct_1 {
    return Struct_1(select(-(vec4<i32>(-12215i, u_input.b, -10798i, 2147483647i) ^ (vec4<i32>(33380i, 0i, -11337i, -64687i) | vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(41254i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, -1825i, -2147483647i)), max(-16725i, -76876i), u_input.b, _wgslsmith_clamp_i32(func_2(Struct_2(227f, Struct_1(vec4<i32>(-1i, 1i, u_input.b, u_input.b), vec4<f32>(-1652f, 2042f, 320f, -819f), 4504u, vec2<i32>(u_input.b, 18808i), vec3<i32>(u_input.b, u_input.b, 1i)), 1u), Struct_2(603f, Struct_1(vec4<i32>(u_input.b, u_input.b, 2147483647i, 24144i), vec4<f32>(-584f, 933f, -727f, 1026f), u_input.a, vec2<i32>(u_input.b, -1i), vec3<i32>(8191i, u_input.b, u_input.b)), 10826u)), -8092i, ~u_input.b)), false), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1413f + -1252f), _wgslsmith_f_op_f32(sign(354f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(512f, 176f)))))), ~(~1u), firstTrailingBit(vec2<i32>(i32(-1i) * -2147483647i, u_input.b)), vec3<i32>(_wgslsmith_add_i32(~func_2(Struct_2(966f, Struct_1(vec4<i32>(-24023i, -2147483647i, -1i, -2147483647i), vec4<f32>(-1556f, -474f, 213f, -137f), 44842u, vec2<i32>(u_input.b, u_input.b), vec3<i32>(1i, u_input.b, -2147483647i)), 4294967295u), Struct_2(702f, Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), vec4<f32>(-1455f, -1348f, -1277f, 350f), 1u, vec2<i32>(u_input.b, -24941i), vec3<i32>(-1i, 2147483647i, u_input.b)), 18578u)), select(reverseBits(u_input.b), u_input.b, true)), -1i, u_input.b));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(974f - _wgslsmith_div_f32(arg_2.b.x, func_1().b.x)), Struct_1(~(~vec4<i32>(arg_1.b.e.x, arg_2.d.x, 43545i, arg_2.e.x)), _wgslsmith_div_vec4_f32(arg_2.b, arg_2.b), 44069u, abs(vec2<i32>(arg_1.b.d.x, firstLeadingBit(-65336i))), vec3<i32>(-13734i, -1i, _wgslsmith_mod_i32(arg_3.x, arg_3.x)) | max(_wgslsmith_add_vec3_i32(vec3<i32>(272i, arg_2.a.x, -691i), vec3<i32>(-2147483647i, -1i, arg_1.b.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -62968i, -51826i), arg_2.a.zwz))), ~arg_1.b.c);
    var var_1 = vec3<i32>(u_input.b, 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.b.a, arg_1.b.a), 0i, ~arg_3.x), var_0.b.a.yxz), ~u_input.b);
    var_1 = vec3<i32>(var_1.x, ~var_1.x, var_1.x);
    var_0 = Struct_2(arg_1.a, Struct_1(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.e.x, 2804i, var_0.b.a.x, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, 2147483647i, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1000f, 961f, arg_0) * vec4<f32>(arg_0, 487f, var_0.b.b.x, -588f))), min(80226u, arg_1.b.c << (var_0.c % 32u)) & 95877u, var_1.yy, arg_3.zwy), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_0 + -280f)))) * 1f) - 1279f);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1329f))), Struct_1(arg_2.a, vec4<f32>(func_1().b.x, 1312f, 2457f, _wgslsmith_f_op_f32(min(1073f, _wgslsmith_f_op_f32(arg_0 - -1000f)))), arg_1.c, min(var_0.b.d, var_0.b.d), arg_2.a.zxx), arg_1.b.c);
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.b.e.x ^ u_input.b;
    var var_1 = func_3(vec2<i32>(-3513i, reverseBits(var_0)));
    let var_2 = func_1();
    let var_3 = _wgslsmith_dot_vec2_i32(var_2.e.yy, vec2<i32>(2147483647i << (((var_2.c & 21868u) << (~4294967295u % 32u)) % 32u), _wgslsmith_div_i32(var_0 >> (arg_0.c % 32u), var_2.e.x) ^ -_wgslsmith_mod_i32(u_input.b, 14897i)));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.b.b.x))));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1167f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2364f + -1299f) + -1234f))))), _wgslsmith_f_op_f32(func_5(func_4(1000f, Struct_2(-318f, Struct_1(vec4<i32>(u_input.b, u_input.b, -2147483647i, 1i), vec4<f32>(837f, -661f, -2203f, -625f), u_input.a, vec2<i32>(5217i, u_input.b), vec3<i32>(2147483647i, u_input.b, 1i)), _wgslsmith_mult_u32(41061u, u_input.a)), func_1(), abs(vec4<i32>(u_input.b, -41626i, u_input.b, u_input.b) ^ vec4<i32>(0i, u_input.b, -41123i, -2147483647i))))), 885f);
    var var_1 = reverseBits(firstLeadingBit(select(vec2<i32>(1i, func_1().a.x), vec2<i32>(u_input.b << (u_input.a % 32u), u_input.b), !(u_input.b >= u_input.b))));
    var_1 = ~(-abs(-vec2<i32>(var_1.x, -5523i)));
    let var_2 = -22899i;
    let var_3 = reverseBits(max(vec3<i32>(max(var_2 << (1u % 32u), ~var_1.x), var_1.x, -12238i), -vec3<i32>(-33559i, var_2, _wgslsmith_add_i32(var_1.x, var_1.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(484f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(322f, 199f, var_0.x, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1164f, var_0.x), vec4<f32>(-269f, 709f, var_0.x, var_0.x)))))))));
    global0 = array<vec2<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_1.x, firstTrailingBit(var_1.x), u_input.b, var_1.x), ~vec4<i32>(-2147483647i, 0i, var_2, var_1.x) & vec4<i32>(var_2, u_input.b, var_1.x, 0i)), var_1.x), firstLeadingBit(func_4(_wgslsmith_f_op_f32(var_0.x + var_0.x), func_4(var_0.x, Struct_2(614f, Struct_1(vec4<i32>(var_2, 1i, var_3.x, 34176i), vec4<f32>(766f, var_0.x, var_0.x, var_0.x), 18901u, var_3.zx, var_3), u_input.a), Struct_1(vec4<i32>(31079i, var_2, var_2, u_input.b), vec4<f32>(-442f, 139f, var_0.x, 217f), 1u, vec2<i32>(0i, var_3.x), vec3<i32>(20972i, -14441i, 1i)), vec4<i32>(u_input.b, var_3.x, u_input.b, var_2)), func_1(), ~vec4<i32>(2147483647i, 1i, -1i, var_2)).b.a.zzw) & vec3<i32>(i32(-1i) * -var_2, func_1().d.x | _wgslsmith_mod_i32(var_1.x, var_1.x), _wgslsmith_mod_i32(var_2, func_4(var_0.x, Struct_2(var_0.x, Struct_1(vec4<i32>(var_1.x, 1i, var_1.x, 0i), vec4<f32>(var_0.x, 424f, 736f, -1000f), u_input.a, vec2<i32>(u_input.b, var_2), var_3), u_input.a), Struct_1(vec4<i32>(var_1.x, 0i, var_3.x, u_input.b), vec4<f32>(1150f, 1810f, var_0.x, -1065f), u_input.a, var_3.zx, vec3<i32>(var_1.x, -8913i, 52265i)), vec4<i32>(0i, -21547i, var_1.x, var_3.x)).b.d.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(734f))) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1093f - var_0.x)))), _wgslsmith_dot_vec4_i32(~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-2204i, -2147483647i, -2147483647i, var_3.x), vec4<i32>(var_2, 16565i, var_1.x, 1i))), abs(vec4<i32>(~var_1.x, ~(-69304i), _wgslsmith_add_i32(1i, u_input.b), var_3.x))), firstLeadingBit((vec4<u32>(0u, 5558u, 4294967295u, u_input.a) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(2605u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 38238u, u_input.a, 0u)) % vec4<u32>(32u))) & (vec4<u32>(max(u_input.a, u_input.a), ~u_input.a, 1u, 0u) | select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 125633u, u_input.a), vec4<u32>(128219u, 39601u, u_input.a, 1u)), vec4<u32>(35864u, u_input.a, u_input.a, u_input.a), func_3(var_3.zz))));
}

