struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.a.x, -551f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a.xxz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, var_0.a.x, -1953f) + var_0.a.wyw) + _wgslsmith_f_op_vec3_f32(step(arg_1.b.a.wyx, vec3<f32>(-145f, -1195f, 219f)))), vec3<bool>(14151u > arg_0.b.x, true, select(true, true, false))))));
    let var_2 = 4294967295u;
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-507f, -626f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let var_3 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.b, u_input.c << (arg_1.a.xxy % vec3<u32>(32u))), var_2) & min(countOneBits(min(u_input.b, 1u)), ~(~_wgslsmith_clamp_u32(var_2, 40191u, 0u)));
    return ~_wgslsmith_mult_u32(var_3, ~_wgslsmith_clamp_u32(abs(80256u), ~28676u, max(var_3, arg_0.b.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<u32>(0u, abs(_wgslsmith_mod_u32(func_3(Struct_2(-762f, vec3<u32>(4294967295u, u_input.b, u_input.c.x), Struct_1(vec4<f32>(-372f, -1601f, -1000f, -897f), 1129f)), Struct_3(vec4<u32>(u_input.b, u_input.b, 1u, 1u), Struct_1(vec4<f32>(892f, 1000f, -253f, 1928f), 1000f), 4294967295u), Struct_1(vec4<f32>(299f, -407f, -1337f, 390f), 1051f)), func_3(Struct_2(-840f, u_input.c, Struct_1(vec4<f32>(-2581f, -317f, -494f, -914f), -1828f)), Struct_3(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 10682u), Struct_1(vec4<f32>(-642f, 1767f, 594f, 1000f), -584f), u_input.c.x), Struct_1(vec4<f32>(-1153f, 318f, -958f, -232f), 1033f)))), ~_wgslsmith_add_u32(u_input.b, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b | u_input.c.x)), 0u);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-863f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 1475f))) * _wgslsmith_f_op_f32(862f + -621f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(2586f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1816f, 326f) + -451f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(-843f * 502f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1200f, -964f) - vec2<f32>(-629f, -300f))) + vec2<f32>(1071f, _wgslsmith_f_op_f32(f32(-1f) * -238f))))));
    var_0 = vec4<u32>(var_0.x, func_3(Struct_2(var_1.x, u_input.c | u_input.c, Struct_1(vec4<f32>(var_1.x, 1112f, var_1.x, var_1.x), var_1.x)), Struct_3(select(vec4<u32>(u_input.c.x, u_input.c.x, 19537u, var_0.x), vec4<u32>(0u, 16707u, 0u, 57549u), vec4<bool>(false, true, true, true)), Struct_1(vec4<f32>(-624f, var_1.x, var_1.x, 1292f), 628f), 11029u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, -849f, var_1.x, 1143f)), _wgslsmith_f_op_f32(var_1.x + var_1.x))) >> (~(39024u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), var_0.ww)) % 32u), _wgslsmith_add_u32(11825u, min(~var_0.x >> (min(u_input.b, 39902u) % 32u), ~_wgslsmith_sub_u32(var_0.x, 28829u))), ~19241u);
    return Struct_3(vec4<u32>(var_0.x, _wgslsmith_mult_u32(1163u, 28759u >> ((var_0.x >> (42165u % 32u)) % 32u)), 4294967295u, var_0.x), Struct_1(vec4<f32>(465f, var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(ceil(var_1.x))), var_1.x), _wgslsmith_add_u32(4294967295u, 0u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = -vec3<i32>(select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -1i, 30818i, -26951i)), -vec4<i32>(-6629i, u_input.a, u_input.a, 11944i)), firstLeadingBit(~u_input.a), arg_2.x), ~(-(i32(-1i) * -2147483647i)), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.a.xzx + _wgslsmith_f_op_vec3_f32(-arg_0.b.a.xyx)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.a.wwz), _wgslsmith_f_op_vec3_f32(select(arg_0.b.a.wxy, _wgslsmith_f_op_vec3_f32(arg_0.b.a.yxy + arg_0.b.a.zyz), true)))));
    let var_2 = abs(countOneBits(vec4<i32>(abs(u_input.a) | 1i, ~(-var_0.x), u_input.a, var_0.x ^ _wgslsmith_add_i32(-1i, -1i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.b.a.zz)))))));
    let var_4 = ~_wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 28557u) >> (abs(vec4<u32>(11843u, 1u, 66037u, u_input.b)) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, 4294967295u, arg_0.c, u_input.c.x), vec4<bool>(-2147483647i >= var_0.x, true, arg_2.x, !arg_1.x)), arg_0.a);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(111f, var_3.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1519f * -385f) - _wgslsmith_f_op_f32(var_3.x + var_3.x))))), reverseBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_4.x, 1u, 69902u), var_4.ywz, _wgslsmith_clamp_vec3_u32(~vec3<u32>(105088u, u_input.b, 0u), var_4.xxx | arg_0.a.wyw, u_input.c))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.b.a)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, -689f, arg_0.b.a.x, -441f), vec4<f32>(-1645f, arg_0.b.a.x, 1000f, -342f)))), _wgslsmith_f_op_f32(trunc(var_1.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = func_4(func_2(), !(!select(!vec3<bool>(true, arg_2.x, true), !vec3<bool>(false, true, arg_2.x), arg_2.x || arg_2.x)), vec4<bool>(any(select(!vec3<bool>(false, arg_2.x, false), vec3<bool>(true, false, arg_2.x), true)), _wgslsmith_dot_vec2_i32(arg_0 & arg_0, ~vec2<i32>(-26613i, arg_0.x)) <= _wgslsmith_mod_i32(u_input.a, u_input.a), true, !arg_2.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c.a, var_0.c.a, false)) + _wgslsmith_f_op_vec4_f32(var_0.c.a + var_0.c.a)))) * vec4<f32>(679f, -494f, var_0.a, var_0.c.a.x)), var_0.a);
    global0 = var_0.a;
    var_0 = Struct_2(964f, abs(var_0.b), var_1);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -840f);
    return ~(-max(vec4<i32>(-19836i, u_input.a, u_input.a, -2147483647i) >> (~vec4<u32>(25397u, u_input.c.x, 1u, arg_1) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 2147483647i, 2147483647i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = select(select(vec4<bool>(arg_1, !arg_1, all(vec3<bool>(arg_1, true, arg_1)), !(arg_2.c != 27887u)), vec4<bool>(arg_3.x, !all(vec3<bool>(true, arg_1, true)), true, false), select(select(vec4<bool>(true, arg_1, arg_1, arg_3.x), vec4<bool>(arg_1, arg_3.x, arg_1, true), vec4<bool>(false, arg_1, arg_3.x, arg_3.x)), select(select(vec4<bool>(false, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, false, false, false), vec4<bool>(arg_3.x, true, true, false)), !vec4<bool>(arg_1, arg_3.x, arg_1, true), vec4<bool>(arg_3.x, true, arg_1, true)), !vec4<bool>(arg_1, false, arg_1, arg_3.x))), vec4<bool>(false, ~arg_2.a.x > arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.b))) > arg_2.b.a.x, true), select(!vec4<bool>(all(vec2<bool>(arg_3.x, arg_1)), arg_1, !arg_3.x, true), vec4<bool>(true, all(vec3<bool>(false, arg_3.x, arg_1)), !(u_input.b > u_input.c.x), arg_3.x), select(select(!vec4<bool>(arg_3.x, arg_3.x, arg_1, arg_1), select(vec4<bool>(false, false, arg_3.x, arg_3.x), vec4<bool>(arg_1, false, arg_3.x, arg_1), false), select(vec4<bool>(false, arg_3.x, arg_1, arg_1), vec4<bool>(true, arg_1, false, false), vec4<bool>(arg_1, true, arg_1, true))), vec4<bool>(true, true, true, true), true & arg_3.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.a.x, 527f) * arg_2.b.a.x);
    global0 = arg_2.b.b;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(374f))))));
    let var_1 = Struct_3(~arg_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.x, 2559f, arg_2.b.a.x, -1108f))), arg_2.b.b), _wgslsmith_sub_u32(23410u << (arg_2.a.x % 32u), ~(~arg_2.a.x << (~36061u % 32u))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(true, false), vec2<bool>(false, false), false);
    var_0 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), var_0.x), true), vec2<bool>(true, !(!var_0.x)), all(func_5(func_1(vec2<i32>(26468i, u_input.a), u_input.c.x, vec2<bool>(var_0.x, true)), true, func_2(), vec3<bool>(true, false, var_0.x))));
    let var_1 = Struct_3(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(75298u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.b))), func_4(Struct_3(vec4<u32>(u_input.c.x, 1u, min(u_input.b, u_input.c.x), u_input.c.x), func_4(Struct_3(vec4<u32>(4294967295u, 27656u, 1u, u_input.b), Struct_1(vec4<f32>(-973f, 609f, 1086f, 446f), -110f), 1u), vec3<bool>(true, true, true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)).c, 4294967295u), vec3<bool>(any(vec4<bool>(false, false, true, var_0.x)), var_0.x, !(false | var_0.x)), vec4<bool>(true, ~0i <= _wgslsmith_clamp_i32(8497i, u_input.a, u_input.a), true, var_0.x)).c, u_input.b);
    var var_2 = func_4(func_2(), select(select(!vec3<bool>(true, var_0.x, var_0.x), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true), var_0.x), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, false)), vec3<bool>(var_0.x, var_0.x && false, func_5(vec4<i32>(u_input.a, 26486i, -5421i, u_input.a), var_0.x, var_1, vec3<bool>(true, false, true)).x), !(!vec3<bool>(true, false, var_0.x))), func_5(vec4<i32>(u_input.a, u_input.a, -30256i, 23568i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -40249i, 0i), vec4<i32>(-1i, -1i, u_input.a, u_input.a)), true, Struct_3(var_1.a, Struct_1(vec4<f32>(var_1.b.b, var_1.b.a.x, 1908f, var_1.b.a.x), var_1.b.b), 4294967295u), vec3<bool>(func_5(vec4<i32>(2147483647i, u_input.a, u_input.a, 0i), var_0.x, Struct_3(var_1.a, var_1.b, 1u), vec3<bool>(var_0.x, false, false)).x, var_1.b.a.x <= -457f, true))), vec4<bool>(!var_0.x, -2147483647i >= u_input.a, true, false));
    var var_3 = ~min(select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -30536i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a)), select(vec4<i32>(u_input.a, 1i, u_input.a, -22017i), vec4<i32>(u_input.a, 30879i, 19388i, u_input.a), vec4<bool>(false, var_0.x, var_0.x, false))), firstTrailingBit(-vec4<i32>(60594i, -2147483647i, u_input.a, u_input.a)), false), reverseBits(~(-vec4<i32>(u_input.a, 23708i, -40978i, 3968i))));
    var var_4 = vec2<i32>(-1i, 2147483647i);
    let var_5 = Struct_3(_wgslsmith_sub_vec4_u32(var_1.a, ~vec4<u32>(u_input.c.x, 4294967295u, var_1.a.x, var_2.b.x) & var_1.a), func_2().b, 3742u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, countOneBits(_wgslsmith_div_i32(var_4.x, ~var_3.x)), var_3.x, -var_4.x), _wgslsmith_sub_u32(func_3(func_4(Struct_3(var_5.a, var_5.b, 1u), !vec3<bool>(var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), true)), var_5, Struct_1(var_5.b.a, 163f)), var_5.a.x));
}

