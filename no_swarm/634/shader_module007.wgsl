struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<u32> {
    return ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 15171u, u_input.c.x)) << ((vec3<u32>(23657u, u_input.c.x, u_input.c.x) | vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 6292u, u_input.c.x), vec3<u32>(1u, 35086u, 21409u) & vec3<u32>(u_input.c.x, 41289u, 58363u))), vec3<u32>(4294967295u, 1u, ~1u), select(vec3<u32>(~u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 0u), ~u_input.c.x), ~(vec3<u32>(45918u, 4294967295u, u_input.c.x) << (vec3<u32>(65509u, 4294967295u, u_input.c.x) % vec3<u32>(32u))), true));
}

fn func_2() -> i32 {
    let var_0 = !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, false);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), 56588u, u_input.c.x << (u_input.c.x % 32u)) ^ (vec3<u32>(u_input.c.x, ~u_input.c.x, ~33335u) | abs(func_3(4248i, true))), ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(32246u, u_input.c.x, u_input.c.x)), firstTrailingBit(~vec3<u32>(u_input.c.x, 1u, u_input.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 0u) | vec3<u32>(85596u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), vec3<u32>(u_input.c.x, u_input.c.x, abs(39999u) & u_input.c.x) ^ ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 71058u, u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(27347u, u_input.c.x, u_input.c.x)), vec3<u32>(u_input.c.x, 55603u, u_input.c.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1516f, 1670f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, -251f)), vec2<f32>(-600f, 420f), var_0.x && var_0.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3160f), _wgslsmith_f_op_f32(-217f - -334f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1685f)))))), Struct_2(u_input.a, 1f, _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(68538u, u_input.c.x), var_1.xx)), vec2<u32>(u_input.c.x, var_1.x))), vec4<u32>(u_input.c.x, 14156u, 1u, func_3(u_input.b, true).x), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f + 1019f)) <= _wgslsmith_f_op_f32(round(-1111f)), !any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.wzz)), true));
    let var_3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, var_2.d.x, var_2.c.c.x, u_input.c.x), var_2.d), countOneBits(countOneBits(var_2.d)), var_2.d));
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, var_2.c.b))), var_2.b, Struct_2(select(firstTrailingBit(vec4<i32>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x, 0i)) << (reverseBits(var_3) % vec4<u32>(32u)), max(vec4<i32>(-21623i, 62108i, 2147483647i, u_input.b), select(var_2.c.a, var_2.c.a, vec4<bool>(false, var_2.e.x, true, true))), vec4<bool>(var_3.x >= var_2.c.c.x, var_0.x, true, true)), -1000f, vec2<u32>(u_input.c.x, 8962u)), max(~var_3 | ~(var_2.d | var_3), vec4<u32>(_wgslsmith_dot_vec3_u32(~var_1, ~vec3<u32>(var_2.c.c.x, 21910u, var_2.d.x)), ~(~7664u), var_3.x, abs(var_1.x) << (_wgslsmith_clamp_u32(var_1.x, 0u, 4294967295u) % 32u))), !var_2.e);
    return u_input.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = -((reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 20619i, arg_0.c.a.x), vec3<i32>(u_input.a.x, -1i, arg_1))) | vec3<i32>(arg_1 << (1u % 32u), func_2(), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))) << (_wgslsmith_clamp_vec3_u32(abs(abs(vec3<u32>(u_input.c.x, 15854u, arg_0.d.x))), abs(vec3<u32>(28440u, u_input.c.x, 0u) | arg_0.d.xxy), ~(~vec3<u32>(0u, arg_0.d.x, arg_0.c.c.x))) % vec3<u32>(32u)));
    let var_1 = firstLeadingBit(1u);
    var_0 = vec3<i32>(-2147483647i, -2147483647i, u_input.b);
    var var_2 = -u_input.a.ww;
    var_0 = -(~(-max(-u_input.a.xwy, vec3<i32>(-1i, -1i, 286i) & arg_0.c.a.yzx)));
    return arg_0.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_2.e.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.b.a, _wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(arg_3.c.b + _wgslsmith_f_op_f32(-arg_2.a.x))))), -510f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b)))))));
    var var_2 = _wgslsmith_mod_u32(arg_2.c.c.x, ~(~arg_3.c.c.x));
    let var_3 = 614f;
    var_2 = ~14110u;
    return arg_3;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    return -2137i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_i32(u_input.b, -1i);
    let var_1 = func_5(1725f, func_4(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-5234i, 11348i, u_input.a.x, u_input.b))), u_input.a.x >> (select(u_input.c.x, u_input.c.x, true) % 32u), _wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(vec4<i32>(0i, -2147483647i, 47877i, -68414i)))), ~(u_input.c.x << ((18898u | u_input.c.x) % 32u)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(751f, -1485f), vec2<f32>(402f, -502f), vec2<bool>(true, false)))), func_1(Struct_3(vec2<f32>(248f, 207f), Struct_1(1495f, 437f), Struct_2(vec4<i32>(-2147483647i, 0i, u_input.a.x, 44048i), -172f, u_input.c), vec4<u32>(u_input.c.x, 0u, 44123u, u_input.c.x), vec3<bool>(false, false, true)), -1i), Struct_2(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -392f), u_input.c ^ vec2<u32>(8340u, u_input.c.x)), min(vec4<u32>(66177u, 1u, 0u, u_input.c.x), vec4<u32>(46043u, 0u, u_input.c.x, 41978u)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true)), Struct_3(vec2<f32>(2536f, _wgslsmith_f_op_f32(select(167f, 656f, true))), Struct_1(-1000f, -1381f), Struct_2(u_input.a << (vec4<u32>(u_input.c.x, 25046u, 32911u, 37453u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-282f * 623f), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 48371u, u_input.c.x, u_input.c.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false)))), func_4(vec3<i32>(u_input.b, ~func_2(), -(~u_input.a.x)), ~(~func_3(1i, true).x), func_4(select(u_input.a.yyx, -vec3<i32>(-1i, 37477i, u_input.b), vec3<bool>(false, true, false)), _wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), func_4(~vec3<i32>(u_input.b, -6748i, 24340i), u_input.c.x, Struct_3(vec2<f32>(-530f, 1000f), Struct_1(590f, -728f), Struct_2(u_input.a, -1000f, vec2<u32>(u_input.c.x, 1u)), vec4<u32>(1u, 1u, u_input.c.x, 1u), vec3<bool>(false, true, true)), func_4(vec3<i32>(17395i, u_input.b, u_input.b), 42032u, Struct_3(vec2<f32>(290f, 857f), Struct_1(-724f, -2941f), Struct_2(u_input.a, 2354f, u_input.c), vec4<u32>(1421u, 4294967295u, 1u, u_input.c.x), vec3<bool>(false, false, true)), Struct_3(vec2<f32>(-1000f, 884f), Struct_1(-602f, -1234f), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b), 426f, u_input.c), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 28535u), vec3<bool>(true, false, false)))), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1811f, -537f), vec2<f32>(633f, 895f))), Struct_1(-1354f, 400f), func_4(u_input.a.zyw, 55663u, Struct_3(vec2<f32>(-1000f, 975f), Struct_1(507f, -3035f), Struct_2(u_input.a, -201f, u_input.c), vec4<u32>(u_input.c.x, 53444u, u_input.c.x, 0u), vec3<bool>(true, false, false)), Struct_3(vec2<f32>(1000f, 1264f), Struct_1(-421f, -697f), Struct_2(u_input.a, -2220f, u_input.c), vec4<u32>(15130u, u_input.c.x, u_input.c.x, 4294967295u), vec3<bool>(false, false, false))).c, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 51931u), vec4<u32>(u_input.c.x, u_input.c.x, 5110u, 1u), vec4<u32>(0u, 0u, u_input.c.x, u_input.c.x)), vec3<bool>(true, true, true))), func_4(vec3<i32>(_wgslsmith_add_i32(-1i, -1i), _wgslsmith_sub_i32(u_input.b, -2147483647i), 0i), u_input.c.x, Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1181f, 562f), vec2<f32>(-1979f, 423f))), func_4(u_input.a.wxw, 1u, Struct_3(vec2<f32>(-477f, 812f), Struct_1(-3016f, -930f), Struct_2(u_input.a, -494f, u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec3<bool>(true, false, false)), Struct_3(vec2<f32>(-143f, -1034f), Struct_1(-1323f, -1849f), Struct_2(vec4<i32>(u_input.b, 0i, u_input.a.x, 1i), -1647f, u_input.c), vec4<u32>(0u, u_input.c.x, u_input.c.x, 34106u), vec3<bool>(true, true, false))).b, Struct_2(u_input.a, -1346f, vec2<u32>(1u, u_input.c.x)), vec4<u32>(10824u, u_input.c.x, 48075u, 1u), vec3<bool>(false, true, false)), Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-474f, 1661f), vec2<f32>(-755f, 2174f), true)), Struct_1(750f, 544f), Struct_2(vec4<i32>(u_input.a.x, 34478i, u_input.a.x, 1i), 1000f, vec2<u32>(u_input.c.x, 66454u)), _wgslsmith_sub_vec4_u32(vec4<u32>(22537u, 70747u, 0u, 38104u), vec4<u32>(12864u, 8132u, 0u, u_input.c.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))));
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f * _wgslsmith_f_op_f32(floor(-287f))) + _wgslsmith_f_op_f32(f32(-1f) * -1363f)), func_4(max(u_input.a.ywx, reverseBits(abs(vec3<i32>(3192i, 23173i, 0i)))), _wgslsmith_mod_u32(4294967295u, u_input.c.x) << (33798u % 32u), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, -955f))), Struct_1(-1233f, _wgslsmith_f_op_f32(368f * -464f)), func_4(vec3<i32>(u_input.b, u_input.a.x, 2147483647i), _wgslsmith_mod_u32(33769u, 55192u), Struct_3(vec2<f32>(-1649f, 495f), Struct_1(-289f, -1281f), Struct_2(u_input.a, -432f, u_input.c), vec4<u32>(5199u, 4294967295u, u_input.c.x, u_input.c.x), vec3<bool>(false, false, false)), Struct_3(vec2<f32>(326f, 693f), Struct_1(-1438f, 1046f), Struct_2(vec4<i32>(u_input.b, u_input.a.x, 26756i, var_1), 879f, vec2<u32>(4294967295u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec3<bool>(false, true, false))).c, vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.x, u_input.c.x, _wgslsmith_add_u32(4294967295u, 0u)), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-316f, -2898f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1243f))))), func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1), vec3<i32>(-3022i, 32804i, u_input.b)), ~u_input.c.x, func_4(vec3<i32>(var_1, var_1, 2147483647i), u_input.c.x, Struct_3(vec2<f32>(-1154f, -740f), Struct_1(-1000f, -553f), Struct_2(vec4<i32>(0i, 0i, -1i, var_1), 413f, u_input.c), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 6933u), vec3<bool>(false, true, false)), Struct_3(vec2<f32>(1501f, -904f), Struct_1(-1295f, 473f), Struct_2(vec4<i32>(0i, var_1, var_1, u_input.a.x), 247f, u_input.c), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(false, true, false))), Struct_3(vec2<f32>(-162f, -1201f), Struct_1(509f, 469f), Struct_2(u_input.a, 938f, u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(false, true, true))).b, Struct_2(u_input.a ^ u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -854f), u_input.c), _wgslsmith_sub_vec4_u32(func_4(u_input.a.www, u_input.c.x, Struct_3(vec2<f32>(-1785f, 254f), Struct_1(688f, 333f), Struct_2(vec4<i32>(u_input.b, -18295i, -19477i, 10723i), 189f, u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 905u), vec3<bool>(false, true, true)), Struct_3(vec2<f32>(-1286f, -1000f), Struct_1(131f, 1157f), Struct_2(u_input.a, 709f, vec2<u32>(1u, 88125u)), vec4<u32>(1u, 4294967295u, 4294967295u, 60020u), vec3<bool>(false, true, true))).d, countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))), vec3<bool>(true, true, true))), Struct_3(vec2<f32>(-1499f, 1075f), func_4(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_1, var_1, var_1, 21757i)), 5030i, 0i), 4294967295u, func_4(u_input.a.zww, ~u_input.c.x, Struct_3(vec2<f32>(782f, 591f), Struct_1(275f, -391f), Struct_2(vec4<i32>(u_input.a.x, var_1, -14141i, 0i), 378f, vec2<u32>(31070u, 20584u)), vec4<u32>(33330u, u_input.c.x, u_input.c.x, 78238u), vec3<bool>(false, false, true)), Struct_3(vec2<f32>(-2205f, 1310f), Struct_1(723f, 1202f), Struct_2(vec4<i32>(u_input.b, u_input.b, var_1, -1i), -465f, u_input.c), vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x), vec3<bool>(false, false, true))), func_4(vec3<i32>(-2147483647i, 2147483647i, u_input.b), _wgslsmith_sub_u32(1u, 0u), func_4(vec3<i32>(var_1, 2147483647i, -22267i), u_input.c.x, Struct_3(vec2<f32>(-1418f, -1775f), Struct_1(1585f, 1480f), Struct_2(vec4<i32>(51444i, -1i, var_1, 23927i), 335f, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x), vec3<bool>(false, true, false)), Struct_3(vec2<f32>(671f, -1000f), Struct_1(-214f, 871f), Struct_2(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b), 1072f, vec2<u32>(u_input.c.x, u_input.c.x)), vec4<u32>(65504u, 1u, 0u, 48221u), vec3<bool>(true, true, true))), func_4(u_input.a.wyx, 1u, Struct_3(vec2<f32>(-964f, 1000f), Struct_1(1000f, -1000f), Struct_2(vec4<i32>(-2147483647i, u_input.a.x, var_1, 2147483647i), 558f, u_input.c), vec4<u32>(63130u, u_input.c.x, 0u, u_input.c.x), vec3<bool>(true, false, true)), Struct_3(vec2<f32>(857f, -2089f), Struct_1(-136f, -2116f), Struct_2(vec4<i32>(var_1, 31014i, -1i, var_1), -1000f, vec2<u32>(1u, 4097u)), vec4<u32>(0u, 1u, 0u, 0u), vec3<bool>(false, true, true))))).b, Struct_2(u_input.a, _wgslsmith_f_op_f32(-595f - _wgslsmith_f_op_f32(-440f * -167f)), func_4(vec3<i32>(var_1, var_1, -88155i) ^ vec3<i32>(-2147483647i, u_input.b, 2147483647i), u_input.c.x | u_input.c.x, func_4(u_input.a.wxw, 11187u, Struct_3(vec2<f32>(-116f, 577f), Struct_1(322f, 1213f), Struct_2(u_input.a, -185f, vec2<u32>(11185u, u_input.c.x)), vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x), vec3<bool>(false, true, false)), Struct_3(vec2<f32>(947f, 131f), Struct_1(832f, -428f), Struct_2(vec4<i32>(var_1, 0i, u_input.b, u_input.b), -989f, u_input.c), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u), vec3<bool>(true, true, false))), func_4(vec3<i32>(var_1, 0i, u_input.b), u_input.c.x, Struct_3(vec2<f32>(934f, 1000f), Struct_1(1049f, -1000f), Struct_2(vec4<i32>(-9265i, 1i, 356i, 16080i), 467f, vec2<u32>(u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, 0u, 4294967295u, 53486u), vec3<bool>(false, false, true)), Struct_3(vec2<f32>(324f, 1080f), Struct_1(1732f, 172f), Struct_2(vec4<i32>(var_1, var_1, -23839i, -2147483647i), -1651f, u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, 15648u, u_input.c.x), vec3<bool>(true, true, false)))).c.c), vec4<u32>(countOneBits(max(54810u, 26178u)), u_input.c.x, u_input.c.x, u_input.c.x), func_4(u_input.a.yxy, select(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 2674u, u_input.c.x, u_input.c.x)), true), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-695f, 490f), vec2<f32>(215f, -840f))), Struct_1(-1326f, 845f), func_4(u_input.a.wwx, u_input.c.x, Struct_3(vec2<f32>(-1372f, 636f), Struct_1(-119f, 1516f), Struct_2(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), 981f, u_input.c), vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u), vec3<bool>(true, true, true)), Struct_3(vec2<f32>(1089f, -2212f), Struct_1(-900f, 755f), Struct_2(u_input.a, 986f, u_input.c), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 21322u), vec3<bool>(true, false, true))).c, abs(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u)), vec3<bool>(false, true, false)), func_4(u_input.a.wyz, func_4(u_input.a.wzw, 27678u, Struct_3(vec2<f32>(1847f, -250f), Struct_1(-641f, 1746f), Struct_2(vec4<i32>(-2147483647i, var_1, -24325i, 24074i), 1701f, u_input.c), vec4<u32>(25220u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(true, false, true)), Struct_3(vec2<f32>(-380f, 991f), Struct_1(475f, 1000f), Struct_2(vec4<i32>(-47553i, var_1, 1i, 1443i), 1190f, u_input.c), vec4<u32>(45018u, 0u, 0u, u_input.c.x), vec3<bool>(false, false, true))).d.x, func_4(u_input.a.xww, u_input.c.x, Struct_3(vec2<f32>(684f, -684f), Struct_1(-363f, -798f), Struct_2(u_input.a, -1000f, vec2<u32>(65370u, u_input.c.x)), vec4<u32>(43794u, u_input.c.x, 1u, 8301u), vec3<bool>(true, false, true)), Struct_3(vec2<f32>(-948f, -1000f), Struct_1(-1003f, 307f), Struct_2(u_input.a, -541f, u_input.c), vec4<u32>(48672u, 10026u, 54091u, u_input.c.x), vec3<bool>(true, false, true))), func_4(vec3<i32>(var_1, -5741i, -17879i), 75729u, Struct_3(vec2<f32>(628f, -2199f), Struct_1(-1306f, -177f), Struct_2(u_input.a, -416f, vec2<u32>(4294967295u, 22781u)), vec4<u32>(36882u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(true, true, false)), Struct_3(vec2<f32>(965f, -1832f), Struct_1(1473f, 172f), Struct_2(vec4<i32>(u_input.a.x, u_input.b, var_1, 5866i), 627f, vec2<u32>(0u, 43544u)), vec4<u32>(58959u, 1u, 3273u, 0u), vec3<bool>(true, true, false))))).e));
    var var_3 = func_4(abs(select(firstTrailingBit(u_input.a.xzy), _wgslsmith_add_vec3_i32(u_input.a.xxw, vec3<i32>(var_1, var_1, -2147483647i)) & func_4(vec3<i32>(var_1, u_input.a.x, -2147483647i), 18509u, Struct_3(vec2<f32>(-869f, -212f), Struct_1(-1559f, -1701f), Struct_2(vec4<i32>(-2147483647i, var_1, -1i, -2147483647i), 430f, vec2<u32>(15757u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 29894u, u_input.c.x), vec3<bool>(false, false, false)), Struct_3(vec2<f32>(-595f, -289f), Struct_1(1508f, 221f), Struct_2(u_input.a, 420f, vec2<u32>(u_input.c.x, 4294967295u)), vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x), vec3<bool>(true, true, false))).c.a.wyy, true)), ~(~4294967295u), func_4(-vec3<i32>(func_2(), -1i & u_input.b, reverseBits(-1i)), 33998u, Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1570f, -903f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 1251f)))), func_4(vec3<i32>(25355i, -2147483647i, -5002i), 4294967295u, func_4(u_input.a.yyw, 0u, Struct_3(vec2<f32>(-893f, 2276f), Struct_1(-331f, 710f), Struct_2(vec4<i32>(2147483647i, var_1, -27492i, -21357i), -1056f, vec2<u32>(u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 90824u, u_input.c.x), vec3<bool>(false, true, false)), Struct_3(vec2<f32>(-1000f, -1875f), Struct_1(382f, 971f), Struct_2(u_input.a, -1090f, u_input.c), vec4<u32>(0u, 37795u, 0u, 47468u), vec3<bool>(false, false, false))), func_4(vec3<i32>(u_input.b, u_input.b, var_1), u_input.c.x, Struct_3(vec2<f32>(2113f, 1234f), Struct_1(423f, 658f), Struct_2(u_input.a, 867f, vec2<u32>(53606u, 11405u)), vec4<u32>(54779u, 4294967295u, u_input.c.x, u_input.c.x), vec3<bool>(true, false, false)), Struct_3(vec2<f32>(1053f, -1070f), Struct_1(-703f, -447f), Struct_2(u_input.a, -145f, vec2<u32>(1u, 2986u)), vec4<u32>(13646u, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(true, true, true)))).b, Struct_2(u_input.a, -2102f, ~vec2<u32>(0u, u_input.c.x)), ~(~vec4<u32>(31649u, u_input.c.x, 5165u, u_input.c.x)), vec3<bool>(any(vec2<bool>(true, true)), true, select(true, true, false))), Struct_3(vec2<f32>(1f, 1f), Struct_1(1f, 436f), func_4(-vec3<i32>(-1i, u_input.b, -1i), u_input.c.x, func_4(u_input.a.zwy, u_input.c.x, Struct_3(vec2<f32>(1934f, 670f), Struct_1(-1340f, -763f), Struct_2(vec4<i32>(u_input.b, var_1, -12591i, 979i), -334f, u_input.c), vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x), vec3<bool>(true, true, false)), Struct_3(vec2<f32>(-1079f, 1735f), Struct_1(1540f, -1868f), Struct_2(u_input.a, -324f, u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(false, true, false))), Struct_3(vec2<f32>(-196f, -420f), Struct_1(-389f, -752f), Struct_2(u_input.a, 258f, vec2<u32>(36256u, 96199u)), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec3<bool>(false, true, false))).c, ~(vec4<u32>(u_input.c.x, 26854u, u_input.c.x, u_input.c.x) << (vec4<u32>(58390u, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))), vec3<bool>(true, true, u_input.c.x < u_input.c.x))), func_4(u_input.a.zwz, ~firstTrailingBit(1u), func_4(u_input.a.ywy, u_input.c.x, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, 309f)), Struct_1(625f, -1833f), func_4(u_input.a.wyx, u_input.c.x, Struct_3(vec2<f32>(787f, -749f), Struct_1(-2005f, 600f), Struct_2(u_input.a, -791f, u_input.c), vec4<u32>(20396u, u_input.c.x, u_input.c.x, 35229u), vec3<bool>(false, false, false)), Struct_3(vec2<f32>(882f, 753f), Struct_1(-1000f, -1181f), Struct_2(vec4<i32>(var_1, -41260i, var_1, u_input.a.x), -1000f, vec2<u32>(u_input.c.x, 4294967295u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 22607u), vec3<bool>(true, true, true))).c, vec4<u32>(u_input.c.x, 40985u, u_input.c.x, 1u), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-966f, -422f), vec2<f32>(190f, -1000f)), Struct_1(606f, 1300f), Struct_2(u_input.a, 1426f, vec2<u32>(1u, u_input.c.x)), reverseBits(vec4<u32>(u_input.c.x, 0u, 0u, 20317u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), func_4(-_wgslsmith_add_vec3_i32(u_input.a.xyx, vec3<i32>(var_1, 2147483647i, -35534i)), ~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1332f, -920f), vec2<f32>(1212f, -1637f))), Struct_1(757f, -173f), Struct_2(u_input.a, -515f, u_input.c), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 317u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, -1i, u_input.a.x), vec3<i32>(u_input.b, -2147483647i, u_input.b)), _wgslsmith_div_u32(27562u, 205u), Struct_3(vec2<f32>(565f, -300f), Struct_1(-1017f, 671f), Struct_2(u_input.a, -1405f, vec2<u32>(u_input.c.x, 45607u)), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 39212u), vec3<bool>(true, false, false)), Struct_3(vec2<f32>(-789f, -367f), Struct_1(186f, -1000f), Struct_2(u_input.a, 243f, vec2<u32>(1471u, 0u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec3<bool>(false, false, true)))))).b;
    let var_4 = Struct_4(false);
    let x = u_input.a;
    s_output = StorageBuffer(1u, min(u_input.a.ywx, vec3<i32>(countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -u_input.b) & _wgslsmith_sub_vec3_i32(u_input.a.zyw, abs(u_input.a.zyz))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), -24505i);
}

