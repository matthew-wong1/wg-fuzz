struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~vec3<i32>(~16499i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 15645i, -4888i, -26233i), _wgslsmith_mult_vec4_i32(vec4<i32>(-31125i, 12545i, 4504i, 42934i), vec4<i32>(43742i, 0i, -24239i, 23437i))) << (u_input.a % 32u), -_wgslsmith_clamp_i32(1058i, select(20765i, -1i, true), ~21295i));
    return Struct_1(-218f, min(_wgslsmith_mult_i32(var_0.x, var_0.x), 1i), var_0.x, vec2<u32>(33422u, _wgslsmith_mod_u32(u_input.a, 0u)), var_0.x);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = 1i;
    var_0 = -1i;
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(40965u, u_input.a), vec2<u32>(~0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(11578u, 6163u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))), (u_input.a & 63168u) | 33416u, reverseBits(0u))));
    var var_2 = select(!vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - -1000f), 1000f) == _wgslsmith_f_op_f32(floor(arg_0)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, !all(vec4<bool>(true, true, false, true)), false)));
    var_0 = _wgslsmith_clamp_i32(-max(1i, ~0i), 2147483647i, max(-51819i, 2147483647i));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a)))) * arg_3.a));
    let var_1 = arg_0;
    let var_2 = select(arg_3.d, var_1.d, false);
    let var_3 = min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(29258u, 4294967295u, var_2.x, arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 10533u, 30991u, var_2.x), vec4<u32>(22325u, 1u, 4294967295u, var_1.d.x))), vec4<u32>(4294967295u, arg_0.d.x, ~1u, _wgslsmith_mult_u32(55555u, var_2.x))), _wgslsmith_mult_vec4_u32((vec4<u32>(93538u, arg_3.d.x, 21176u, 53381u) ^ vec4<u32>(var_2.x, 4294967295u, var_1.d.x, 35757u)) << (~vec4<u32>(var_2.x, var_2.x, arg_0.d.x, 1u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, var_2.x, var_1.d.x), vec3<u32>(10171u, var_1.d.x, 1u)), ~arg_3.d.x, ~1u, var_2.x))) & _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(56873u, 0u, 47192u, 1u), vec4<u32>(var_2.x, arg_0.d.x, var_1.d.x, var_2.x) | vec4<u32>(1u, var_2.x, arg_0.d.x, 77884u)), vec4<u32>(_wgslsmith_sub_u32(~126159u, select(25719u, 6040u, true)), 1583u, 1u, ~func_2(false, var_0).d.x), select(abs(vec4<u32>(arg_0.d.x, u_input.a, arg_0.d.x, 4294967295u)), vec4<u32>(36354u, var_2.x, 4294967295u, arg_0.d.x) >> (vec4<u32>(0u, arg_1, 13487u, u_input.a) % vec4<u32>(32u)), true));
    let var_4 = var_1;
    return Struct_2(_wgslsmith_f_op_f32(trunc(-572f)));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(145f)));
    var_0 = func_4(func_2(true, Struct_2(_wgslsmith_div_f32(var_0.a, var_0.a))), abs(0u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1311f)))), Struct_1(807f, ~countOneBits(abs(-60693i)), -max(_wgslsmith_mod_i32(18846i, -19976i), abs(40509i)), min(vec2<u32>(arg_0, func_2(false, Struct_2(1630f)).d.x), ~vec2<u32>(21970u, 12120u)), func_2(true, Struct_2(var_0.a)).c));
    var_0 = func_4(Struct_1(-1203f, -1i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -2147483647i, 37436i), max(vec3<i32>(69251i, -1i, 1i), vec3<i32>(-50951i, 787i, -12996i))), vec2<u32>(arg_0, ~(~u_input.a)), 42520i), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(10654u, 8477u) ^ vec2<u32>(4294967295u, u_input.a))), Struct_2(func_2(true, func_4(func_2(false, Struct_2(-1125f)), ~0u, Struct_2(var_0.a), func_2(false, Struct_2(551f)))).a), func_2(true, func_4(Struct_1(1000f, _wgslsmith_add_i32(79i, -40039i), select(-37921i, 0i, false), vec2<u32>(1u, 1u) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), select(1i, 0i, false)), ~arg_0, Struct_2(_wgslsmith_f_op_f32(-var_0.a)), Struct_1(_wgslsmith_div_f32(var_0.a, var_0.a), select(-54487i, 2147483647i, false), 1i, vec2<u32>(arg_0, 4294967295u), _wgslsmith_mod_i32(2406i, -18617i)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-1189f - _wgslsmith_f_op_f32(-241f - var_0.a)));
    let var_1 = -1i;
    return -abs(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, -6478i), vec3<i32>(10038i, var_1, 1i)), vec3<i32>(var_1, -1i, 0i) | vec3<i32>(-1i, 1i, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1251f, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(40812i, 1i, -1i), vec3<i32>(17533i, -1i, 1i)), func_1(u_input.a)) ^ max(-2147483647i, 28431i)), -1i, ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(568u, 0u), ~(~vec2<u32>(7916u, 25685u)), abs(vec2<u32>(1u, 23296u))), func_1(u_input.a).x);
    var_0 = func_2(any(select(vec2<bool>(u_input.a != 4294967295u, false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), !all(vec2<bool>(false, false)))), Struct_2(1476f));
    let var_1 = Struct_1(_wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_0.e, var_0.b, 12104i, var_0.e) ^ vec4<i32>(-43006i, var_0.b, var_0.c, var_0.c)), vec4<i32>(_wgslsmith_div_i32(var_0.b, 0i), reverseBits(-var_0.b), -var_0.e, _wgslsmith_mod_i32(0i, var_0.e | var_0.c))), ~(-1i), vec2<u32>(~(var_0.d.x << (35372u % 32u)), ~(~47895u)) >> (((vec2<u32>(var_0.d.x, 43616u) & abs(vec2<u32>(var_0.d.x, var_0.d.x))) & vec2<u32>(8981u >> (var_0.d.x % 32u), u_input.a & 7200u)) % vec2<u32>(32u)), -1i);
    let var_2 = (_wgslsmith_dot_vec4_u32(vec4<u32>(min(var_0.d.x, u_input.a), _wgslsmith_clamp_u32(var_0.d.x, var_1.d.x, 38412u), 9421u, ~var_0.d.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.d.x, var_0.d.x, 22324u, 16935u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(20523u, var_0.d.x, var_1.d.x, 4294967295u))) < 0u) == (var_1.b < var_1.e);
    let var_3 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-9355i << (u_input.a % 32u), -62555i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11248i, var_1.c, var_1.e), vec3<i32>(var_0.b, var_0.c, var_1.b))) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, var_1.c, -37130i), vec3<i32>(var_0.b, var_0.c, -2147483647i)), _wgslsmith_add_vec3_i32(~vec3<i32>(var_0.e, var_1.c, 1568i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2667i, 10561i, var_1.e), vec3<i32>(var_0.b, -33017i, var_0.c), vec3<i32>(var_0.b, var_1.b, 2147483647i))) << (reverseBits(vec3<u32>(4294967295u, 37799u, 1u)) % vec3<u32>(32u)));
    var var_4 = abs(abs(select(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, var_1.c, var_3.x, 2147483647i), vec4<i32>(var_0.e, 2147483647i, var_3.x, var_1.c)), ~vec4<i32>(-24137i, var_3.x, var_3.x, -1i), vec4<bool>(false, true, true, false)), vec4<i32>(19827i, _wgslsmith_dot_vec3_i32(var_3, var_3), 18653i, reverseBits(-22662i)), !(!vec4<bool>(true, var_2, true, true)))));
    let var_5 = var_1.d.x;
    let var_6 = 20198i;
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(11373i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(753f, _wgslsmith_f_op_f32(func_3(1617f))), var_0.a, -1010f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 1816f, var_0.a)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, -854f, 879f), vec3<f32>(1204f, 1469f, var_0.a))))), !var_2)), reverseBits(reverseBits(countOneBits(~vec4<u32>(1u, 118758u, 4294967295u, 85401u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_1.a, 1446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_0.a)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_0.a, var_0.a, var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_0.a, var_1.a, 809f)), !var_2))))), _wgslsmith_mult_i32(var_0.c & var_1.c, ~(i32(-1i) * -1i)));
}

