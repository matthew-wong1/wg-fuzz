struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_2(false, Struct_1(firstLeadingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(70533i, u_input.a, u_input.a, 60227i), vec4<i32>(u_input.a, arg_0.x, -2147483647i, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(725f, 2037f, 298f, -604f)))))), select(min(vec4<u32>(4294967295u, 0u, ~43358u, 1u), select(~vec4<u32>(1u, 21178u, 39890u, 0u), vec4<u32>(28232u, 1u, 98008u, 24805u), !vec4<bool>(arg_1.x, arg_1.x, true, true))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)), !(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), Struct_1(vec4<i32>(reverseBits(-1i), -(arg_0.x >> (480u % 32u)), -2147483647i, firstLeadingBit(1i) & arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-524f, -478f, 293f, 1347f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1120f, -587f, -926f, -1575f)))))), Struct_1(reverseBits(vec4<i32>(arg_0.x, abs(u_input.a), arg_0.x | arg_0.x, u_input.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-389f, 1744f, -1080f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -1000f, -1000f, -1453f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(844f, -956f, 345f, 1405f) * vec4<f32>(1025f, -1000f, -753f, 272f)))))));
    var var_1 = !vec4<bool>(var_0.a, any(arg_1) && !(216f >= var_0.d.b.x), all(!(!arg_1.zyy)), all(!select(vec3<bool>(arg_1.x, var_0.a, false), vec3<bool>(true, var_0.a, false), vec3<bool>(true, arg_1.x, false))));
    var_1 = vec4<bool>(false && (!(!var_0.a) | (_wgslsmith_f_op_f32(floor(var_0.d.b.x)) >= _wgslsmith_f_op_f32(-317f * var_0.e.b.x))), false, all(select(arg_1, select(vec4<bool>(var_0.a, var_1.x, var_1.x, true), arg_1, true), false)), arg_1.x);
    let var_2 = _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(var_0.c.zx, vec2<u32>(~var_0.c.x, ~16102u))), ~min(~(~var_0.c.xx), vec2<u32>(max(122969u, var_0.c.x), var_0.c.x)));
    var var_3 = Struct_5(Struct_3(_wgslsmith_f_op_f32(floor(var_0.b.b.x)), var_0.d.a.x ^ _wgslsmith_div_i32(var_0.b.a.x, _wgslsmith_sub_i32(-1959i, 34834i)), var_0.c ^ var_0.c, !arg_1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(774f, var_0.e.b.x, -271f, 1347f))))) * var_0.b.b), vec4<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x * var_0.e.b.x)), var_0.e.b.x, -1465f)));
    return ~var_0.c.x;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_1(-vec4<i32>(-arg_0.x, _wgslsmith_sub_i32(-26720i, select(u_input.c, -10936i, true)), -2332i, abs(-1i) & arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1874f, -331f, 1862f, 1208f) + vec4<f32>(-501f, 1915f, -1000f, 396f)) - vec4<f32>(-171f, -634f, -723f, -299f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(789f, 646f, 507f, 407f), vec4<f32>(527f, 216f, -230f, -1033f))))));
    var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.x, -55035i, -2147483647i, var_0.a.x), -reverseBits(vec4<i32>(-2147483647i, -14370i, u_input.a, 1i))), 13502i << (firstTrailingBit(func_3(var_0.a.zxw, vec4<bool>(true, false, true, false))) % 32u), ~u_input.a | (~(-1i) ^ var_0.a.x), min(1i, firstLeadingBit(u_input.b) << (_wgslsmith_mod_u32(4818u, 4294967295u) % 32u))), vec4<f32>(-1076f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1988f, var_0.b.x)), var_0.b.x, 2264f));
    var_0 = Struct_1(_wgslsmith_mod_vec4_i32(var_0.a, var_0.a & var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), -658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - 1000f)) + var_0.b));
    let var_1 = true;
    let var_2 = Struct_5(Struct_3(2050f, ~min(2147483647i, min(arg_0.x, 1i)), _wgslsmith_add_vec4_u32(vec4<u32>(16908u, func_3(var_0.a.yzw, vec4<bool>(var_1, false, var_1, true)), 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), var_1), var_0.b);
    return max(_wgslsmith_dot_vec2_i32(select(~countOneBits(vec2<i32>(var_2.a.b, 1i)), min(max(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(u_input.b, arg_0.x)), ~var_0.a.yz), !all(vec4<bool>(false, var_1, false, false))), vec2<i32>(0i, _wgslsmith_add_i32(u_input.c, arg_0.x)) << (vec2<u32>(61307u, _wgslsmith_mod_u32(var_2.a.c.x, var_2.a.c.x)) % vec2<u32>(32u))), max(~(~28241i) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.c.x, var_2.a.c.x, var_2.a.c.x), vec3<u32>(var_2.a.c.x, 0u, var_2.a.c.x)) % 32u), arg_0.x));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(~u_input.c, 8623i, ~(-7414i), 39003i);
    var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(-arg_0.a.b, 0i, u_input.b, 1i), max(vec4<i32>(max(u_input.c, 2147483647i), -arg_0.a.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b, 12796i), vec2<i32>(var_0.x, var_0.x)), arg_0.a.b), -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.b, u_input.a, 2147483647i, 1i), vec4<i32>(2147483647i, -1i, -9856i, 0i), vec4<i32>(37263i, 72678i, var_0.x, -2147483647i)), abs(vec4<i32>(var_0.x, 0i, var_0.x, var_0.x)))));
    var_0 = -vec4<i32>(abs(75066i), func_2(vec3<i32>(var_0.x, arg_0.a.b, u_input.b)) >> (4294967295u % 32u), _wgslsmith_add_i32(-3394i, 0i), -34754i ^ _wgslsmith_mod_i32(-var_0.x, abs(arg_0.a.b)));
    var var_1 = select(vec4<bool>(false, !arg_0.a.d, false, !(_wgslsmith_mod_u32(arg_1.x, 4294967295u) <= (arg_1.x >> (25258u % 32u)))), vec4<bool>(arg_0.a.d == true, true, true, all(!vec4<bool>(arg_0.a.d, false, true, false))), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.b.yxx);
    return Struct_1(-_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b, 0i, 2147483647i), vec4<i32>(35884i, u_input.a, 6467i, -1i)), select(vec4<i32>(arg_0.a.b, arg_0.a.b, -2147483647i, -2147483647i), vec4<i32>(arg_0.a.b, 4944i, var_0.x, var_0.x), vec4<bool>(true, var_1.x, true, true))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.c.x, ~86869u, 1u, arg_1.x), ~(~arg_0.a.c)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.b, arg_0.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -887f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f + var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a.a)), _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    return u_input.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    return vec4<i32>(u_input.c, ~func_2(arg_0.xwx), _wgslsmith_div_i32((u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_3.e.a.x), vec2<i32>(2147483647i, u_input.a))) >> (~arg_3.c.x % 32u), arg_3.d.a.x), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(u_input.b != _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, -2147483647i), i32(-1i) * -39762i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.c, -2147483647i)) >> (_wgslsmith_add_u32(1u, 13198u) % 32u)));
    let var_1 = func_5(vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.b >> (~3493u % 32u), func_4(_wgslsmith_clamp_u32(1u, 20211u, 4294967295u), vec3<f32>(424f, 1533f, -292f), func_1(Struct_5(Struct_3(2304f, 0i, vec4<u32>(1u, 1u, 0u, 4294967295u), false), vec4<f32>(822f, -1407f, -662f, -536f)), vec2<u32>(4294967295u, 4294967295u)))), -1i, -(~u_input.b)), vec4<u32>(min(~(~0u), ~reverseBits(0u)), _wgslsmith_div_u32(1u, abs(1u)), _wgslsmith_clamp_u32(~57008u, _wgslsmith_mod_u32(min(4294967295u, 1u), ~29779u), 1u), ~1u), 880f, Struct_2(true, func_1(Struct_5(Struct_3(-656f, -1i, vec4<u32>(80492u, 0u, 8300u, 47935u), var_0), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-614f, -1378f, 716f, -222f), vec4<f32>(-1515f, -521f, 1387f, 598f)))), ~select(vec2<u32>(1u, 14458u), vec2<u32>(5813u, 1u), var_0)), vec4<u32>(_wgslsmith_mult_u32(0u, abs(79543u)), 1u, 1u, func_3(firstLeadingBit(vec3<i32>(u_input.a, 1i, u_input.a)), vec4<bool>(true, true, var_0, false))), Struct_1(-(vec4<i32>(-36924i, 20014i, u_input.a, -2147483647i) ^ vec4<i32>(u_input.c, u_input.b, -1i, -27498i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(988f, 584f, 1365f, 989f))))), func_1(Struct_5(Struct_3(453f, 2147483647i, vec4<u32>(48172u, 1u, 66502u, 75904u), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, -783f, 2144f, -663f))), countOneBits(vec2<u32>(62207u, 14329u)))));
    let var_2 = !(!(!(var_0 & var_0)));
    let var_3 = Struct_1(select(-func_5(_wgslsmith_clamp_vec4_i32(var_1, var_1, vec4<i32>(-59773i, var_1.x, u_input.b, 1i)), ~vec4<u32>(25913u, 4294967295u, 48796u, 1u), _wgslsmith_f_op_f32(-1187f + 223f), Struct_2(false, Struct_1(var_1, vec4<f32>(331f, 1939f, -1036f, 760f)), vec4<u32>(4294967295u, 870u, 0u, 0u), Struct_1(var_1, vec4<f32>(1128f, 254f, 1265f, 350f)), Struct_1(var_1, vec4<f32>(-662f, -395f, -1159f, 540f)))), var_1, select(select(vec4<bool>(false, var_2, false, true), select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_2, true, var_2, var_0), vec4<bool>(var_0, false, var_2, false)), true), vec4<bool>(!var_0, var_0, true, var_0), !var_2 & true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, 635f, -303f, -551f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_f_op_f32(abs(1597f)), -1329f, _wgslsmith_f_op_f32(step(-701f, -884f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, 714f, 1351f, -1001f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(280f, 886f, -1360f, -938f), vec4<f32>(323f, 771f, -905f, -830f)))))));
    let var_4 = -192f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~select(vec3<i32>(u_input.a, 31276i, var_1.x), vec3<i32>(var_3.a.x, var_3.a.x, u_input.a), vec3<bool>(true, var_0, var_2)), var_1.wzz), _wgslsmith_sub_vec3_i32(func_5(min(var_3.a, var_1), abs(vec4<u32>(78505u, 36140u, 15085u, 42061u)), _wgslsmith_f_op_f32(-var_3.b.x), Struct_2(var_0, Struct_1(var_1, vec4<f32>(-2666f, var_3.b.x, var_3.b.x, var_3.b.x)), vec4<u32>(4294967295u, 7101u, 0u, 3511u), Struct_1(vec4<i32>(1i, 0i, u_input.c, -6551i), var_3.b), var_3)).wxy, ~(var_3.a.zyz ^ var_3.a.xzw))), var_3.b.xwx, _wgslsmith_f_op_f32(min(485f, 1000f)), ~(~_wgslsmith_sub_u32(0u >> (0u % 32u), firstLeadingBit(4294967295u))));
}

