struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c | 5134u, _wgslsmith_mult_u32(u_input.c, u_input.c)), _wgslsmith_div_vec3_u32(select(vec3<u32>(17038u, 4294967295u, u_input.c), vec3<u32>(9321u, 51183u, 19341u), vec3<bool>(false, true, false)), select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), false))), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), Struct_1(u_input.c, -abs(u_input.b.x), 113871u, ~u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, 504f))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(22193u, 47803u), vec2<u32>(u_input.c, u_input.c)) & ~25827u, u_input.a.x, 33747u, 1u, vec2<f32>(_wgslsmith_f_op_f32(-1000f + 608f), 654f))));
    var var_1 = !(!var_0.a.b);
    var var_2 = Struct_2(~(var_0.a.a << (vec3<u32>(~13017u, 0u, u_input.c) % vec3<u32>(32u))), any(!(!(!vec2<bool>(var_0.a.b, false)))), Struct_1(~4294967295u, ~u_input.b.x, 32777u, 7094u, _wgslsmith_f_op_vec2_f32(var_0.a.c.e - vec2<f32>(878f, _wgslsmith_f_op_f32(f32(-1f) * -833f)))), Struct_1(var_0.a.c.c, 12912i, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.a.x, var_0.a.c.d, var_0.a.a.x, u_input.c), vec4<u32>(0u, var_0.a.c.d, var_0.a.a.x, u_input.c)), vec4<u32>(u_input.c, 0u, u_input.c, 29739u)), 78204u, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-877f - var_0.a.d.e.x))), var_0.a.d.e.x)));
    var var_3 = Struct_1(var_2.c.c, firstLeadingBit(43354i), var_0.a.c.d, 6969u, var_2.d.e);
    var_0 = Struct_3(var_0.a);
    return -8851i;
}

fn func_2() -> Struct_2 {
    let var_0 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c, u_input.c, firstTrailingBit(0u)), vec3<u32>(50363u & u_input.c, max(u_input.c, 13817u), u_input.c | u_input.c)) >> (vec3<u32>(u_input.c, max(~4294967295u, u_input.c), _wgslsmith_clamp_u32(1u, u_input.c, u_input.c)) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, 0u, 1u));
    let var_1 = ~abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) | func_3());
    let var_2 = Struct_2(min(~_wgslsmith_div_vec3_u32(var_0, reverseBits(vec3<u32>(11427u, u_input.c, var_0.x))), _wgslsmith_sub_vec3_u32(~var_0 & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 46364u)), var_0)), true, Struct_1(u_input.c, ~u_input.a.x, var_0.x, var_0.x, vec2<f32>(-1013f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1541f + -330f), _wgslsmith_f_op_f32(trunc(-1000f))))), Struct_1(0u, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), -u_input.a), var_0.x, var_0.x, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1559f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1045f, 250f))))));
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(abs(abs(var_1)), 1i) ^ _wgslsmith_sub_i32(~_wgslsmith_sub_i32(0i, -3976i), 10008i), var_1, ~var_2.c.b, ~6299i);
    var_3 = _wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(_wgslsmith_mult_i32(1i, var_2.c.b), -21237i, 27909i, -15062i)), u_input.b);
    return Struct_2(max(var_2.a, ~(~var_2.a | _wgslsmith_sub_vec3_u32(var_2.a, var_2.a))), var_2.b, Struct_1(994u, var_3.x, countOneBits(var_2.c.a), ~(~1u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(-129f)), _wgslsmith_f_op_f32(select(1137f, 1000f, var_2.b)))))), var_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_vec2_i32(~(-(vec2<i32>(arg_0.b, 33980i) >> (arg_1.a.yy % vec2<u32>(32u)))), vec2<i32>(-25148i, func_3()));
    var var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(~u_input.c), var_0.d.c), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 0u, 1u), vec3<u32>(var_0.c.a, 4294967295u, arg_1.a.x)))), 1842i, _wgslsmith_add_u32(arg_1.d.d, _wgslsmith_mult_u32(arg_1.c.d, _wgslsmith_sub_u32(abs(arg_0.d), u_input.c))), ~(~(~(~65548u))), var_0.d.e);
    var_3 = Struct_1(arg_0.d, max(var_1.x, abs(_wgslsmith_mult_i32(var_3.b, arg_0.b)) >> ((u_input.c & func_2().c.a) % 32u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.d, 1u), ~firstTrailingBit(var_3.c)), arg_1.d.a), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), -189f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(934f, 310f), vec2<f32>(457f, var_0.d.e.x)) * func_2().c.e) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-2066f - -654f)))));
    return var_3.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = ~0u;
    let var_1 = func_4(Struct_1(u_input.c, i32(-1i) * -47137i, u_input.c, 1009u, vec2<f32>(-878f, 1168f)), func_2());
    let var_2 = func_2();
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(~25718u, 1u) ^ _wgslsmith_clamp_u32(62436u, var_2.c.a, ~0u)), min(var_2.a.x, ~_wgslsmith_mod_u32(max(var_2.c.d, 4294967295u), ~4294967295u)));
    var_0 = func_4(var_2.c, func_2());
    return u_input.c;
}

fn func_5(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = func_2().d;
    var var_1 = Struct_2(_wgslsmith_sub_vec3_u32(min(arg_0.zww, abs(arg_0.ywx)), ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c, 56527u), u_input.c >> (arg_0.x % 32u))), true, func_2().c, func_2().d);
    let var_2 = vec2<i32>(firstTrailingBit(reverseBits(_wgslsmith_sub_i32(firstLeadingBit(var_1.d.b), var_0.b | -5041i))), -2147483647i);
    var_1 = func_2();
    let var_3 = Struct_2(vec3<u32>(~func_1(vec3<f32>(var_0.e.x, var_0.e.x, 1059f), var_0.e, vec3<bool>(true, var_1.b, false)) ^ var_1.a.x, var_1.d.d, ~0u), all(!vec4<bool>(var_1.b, false, false, var_1.b)) && (countOneBits(u_input.b.x) > -firstLeadingBit(-54249i)), Struct_1(max(arg_0.x, ~1u), var_0.b, ~var_0.c, u_input.c, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(219f)))), 1299f)), var_1.d);
    return Struct_3(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(_wgslsmith_add_vec4_u32(vec4<u32>(func_1(vec3<f32>(-942f, 372f, -389f), vec2<f32>(-705f, 147f), vec3<bool>(true, false, false)), 1u, _wgslsmith_add_u32(u_input.c, 86177u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34579u, 45150u), vec3<u32>(0u, u_input.c, u_input.c))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 79218u, 26753u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 2295u)), abs(vec4<u32>(1u, u_input.c, u_input.c, u_input.c))))));
    let var_1 = var_0;
    let var_2 = var_1.a.a.x;
    var var_3 = func_5(vec4<u32>((u_input.c ^ max(1u, var_1.a.c.d)) ^ countOneBits(var_0.a.d.c), 1u, var_0.a.a.x, u_input.c)).a;
    var var_4 = ~max(firstLeadingBit(var_1.a.a), _wgslsmith_sub_vec3_u32(var_0.a.a, var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~select(4294967295u, var_4.x, var_1.a.b), ~(_wgslsmith_add_u32(1u, var_0.a.d.c) << (35263u % 32u))), u_input.b.yz, _wgslsmith_sub_u32(u_input.c, ~(~abs(var_0.a.d.d))));
}

