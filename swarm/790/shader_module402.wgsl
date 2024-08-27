struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 522f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = vec3<u32>(firstLeadingBit(max(18251u, select(~6293u, select(arg_0.a.a, 49598u, true), all(vec4<bool>(true, true, true, false))))), select(~26980u, countOneBits(4294967295u), all(vec2<bool>(any(vec4<bool>(false, true, false, false)), true))), arg_0.a.a);
    var var_1 = Struct_1(var_0.x);
    let var_2 = Struct_5(Struct_4(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -377f)))), true, Struct_2(arg_0.d, arg_0.b, ~(~vec4<i32>(arg_0.e, arg_0.e, -1i, arg_0.c.x)), arg_0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(5339i, -2147483647i, arg_0.e), vec3<i32>(31350i, arg_0.c.x, arg_0.e)) & ~1i), ~(-2147483647i)), ~_wgslsmith_clamp_i32(~(i32(-1i) * -19142i), _wgslsmith_div_i32(arg_0.c.x, arg_0.c.x) ^ -1i, firstLeadingBit(~6604i)), select(firstLeadingBit(~vec4<u32>(u_input.c, 0u, arg_0.a.a, u_input.c)), vec4<u32>(~(~4294967295u), ~arg_0.d.a, ~(4309u | arg_0.d.a), ~22278u), !vec4<bool>(arg_0.b.x >= arg_0.b.x, all(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false)), true)), _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f * arg_0.b.x)))))), 181f);
    let var_3 = var_2.a.b;
    var_1 = arg_0.a;
    return _wgslsmith_add_u32(var_2.c.x, abs(_wgslsmith_clamp_u32(47434u, _wgslsmith_div_u32(var_2.a.c.d.a << (15968u % 32u), var_2.a.c.d.a << (arg_0.d.a % 32u)), var_2.c.x)));
}

fn func_2() -> Struct_5 {
    let var_0 = func_3(Struct_2(Struct_1(countOneBits(0u)), vec3<f32>(1320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2200f))), _wgslsmith_f_op_f32(select(-903f, _wgslsmith_f_op_f32(step(375f, -632f)), any(vec3<bool>(false, true, true))))), ~(vec4<i32>(2147483647i, -43841i, 31087i, -2715i) >> ((vec4<u32>(4294967295u, u_input.a, 1u, 1u) ^ vec4<u32>(24878u, 4294967295u, 0u, 10368u)) % vec4<u32>(32u))), Struct_1(countOneBits(u_input.c)), 1i));
    let var_1 = vec2<i32>(-2147483647i, firstLeadingBit(1i)) >> (vec2<u32>(min(40650u, ~var_0), 36599u) % vec2<u32>(32u));
    let var_2 = -556f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * -245f), _wgslsmith_f_op_f32(trunc(439f))))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2, var_2)));
    return Struct_5(Struct_4(-1672f, (-45161i <= _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(var_1.x, var_1.x))) | select(any(vec3<bool>(true, true, false)), true, true), Struct_2(Struct_1(~0u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, 921f), vec3<f32>(var_2, 1483f, var_2), vec3<bool>(false, false, false))), vec3<f32>(var_2, 2337f, 839f)), ~vec4<i32>(-72437i, 0i, var_1.x, -20895i), Struct_1(var_0), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(13824i, 1i, var_1.x, 0i), vec4<i32>(-1i, var_1.x, -91586i, -2147483647i)), vec4<i32>(var_1.x, var_1.x, var_1.x, -2147483647i) ^ vec4<i32>(var_1.x, var_1.x, -2147483647i, 2147483647i))), -(~var_1.x)), firstTrailingBit(-30288i), ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0, 4294967295u, u_input.a), vec4<u32>(u_input.a, 23746u, u_input.b, var_0), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)) >> (firstTrailingBit(vec4<u32>(89754u, 1u, 0u, 1u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f - -422f)))), -605f);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~(~(vec2<u32>(0u, u_input.c) >> (vec2<u32>(u_input.b, 18468u) % vec2<u32>(32u))))), vec2<u32>(abs(u_input.c), 4294967295u));
    global0 = 1000f;
    let var_1 = all(arg_1);
    let var_2 = 7362u;
    let var_3 = func_2();
    return var_3.a.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-137f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), 1f))));
    global0 = _wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2568f * _wgslsmith_f_op_f32(719f - 530f))))));
    let var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1334f + 1076f)))), !select(true, false, true), Struct_2(func_1(-1000f, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, -876f, 1000f) * vec3<f32>(-584f, -801f, -577f)) + vec3<f32>(1018f, 116f, 355f)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -18099i, 36598i, -25118i), vec4<i32>(0i, 0i, 1i, 24972i)), Struct_1(_wgslsmith_mod_u32(u_input.b, u_input.c)), -1i), -_wgslsmith_div_i32(-64886i, 1i)), ~(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-12979i, -2147483647i, 46545i), -1i) | -2147483647i), _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, 23250u, 60440u)), 1u, u_input.b, 1u), ~vec4<u32>(~1u, ~u_input.c, _wgslsmith_sub_u32(u_input.a, u_input.b), func_2().c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(102f)))))), 741f);
    let var_1 = func_2();
    var var_2 = var_1.a.c;
    let var_3 = var_1.c.x;
    var_2 = func_2().a.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e), var_1.d))) + _wgslsmith_f_op_f32(min(-357f, _wgslsmith_f_op_f32(-var_1.e))));
    global0 = _wgslsmith_div_f32(949f, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.a))))), func_2().c, vec4<i32>(-2147483647i, -1i, _wgslsmith_mod_i32(select(~var_0.b, max(1i, 2147483647i), false && var_0.a.b), -39301i), _wgslsmith_clamp_i32(var_0.a.d, 1i, -(~var_2.e))), -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.a.d, 2147483647i, var_1.a.c.c.x), -20051i), select(firstTrailingBit(1i), var_0.b, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-24913i, 73791i, var_1.a.c.e) >> (var_0.c.zwz % vec3<u32>(32u)), var_1.a.c.c.xxx)));
}

