struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    return arg_1.b;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(u_input.a.yx, _wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(_wgslsmith_div_i32(42793i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))));
    var var_1 = !select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec4<bool>(false, false, false, false)), false, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), true);
    let var_2 = Struct_1(!var_1.zyw, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -103f, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(81896u, 13309u, 72911u), vec3<u32>(0u, 1668u, 29189u)), 6050u), _wgslsmith_add_vec2_u32(~(~vec2<u32>(23057u, 1u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(18448u, 71601u), var_1.zw), vec2<u32>(14767u, 0u)))));
    var var_3 = 2147483647i;
    var_3 = var_0.x;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i | reverseBits(u_input.a.x), i32(-1i) * -2147483647i), -u_input.a.x);
    var var_1 = reverseBits(u_input.a.x);
    var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), ~u_input.a.x, -_wgslsmith_add_i32(var_0, var_0), ~min(u_input.a.x, 61059i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(22880i, u_input.a.x, var_0, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 36368i)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(67323u, 0u, 57585u))), vec3<u32>(func_1(Struct_3(Struct_2(true, Struct_1(vec3<bool>(true, false, false), true, 1000f, 10527u), Struct_1(arg_1.wyw, false, arg_3, 4294967295u))), Struct_2(false, func_1(Struct_3(Struct_2(arg_1.x, Struct_1(vec3<bool>(true, true, true), arg_0, arg_2.x, 1u), Struct_1(vec3<bool>(arg_1.x, arg_0, true), true, arg_3, 1u))), Struct_2(arg_1.x, Struct_1(vec3<bool>(false, false, false), true, -1689f, 1u), Struct_1(vec3<bool>(true, true, false), arg_0, arg_3, 9328u))), Struct_1(arg_1.www, arg_0, -1589f, 36696u))).d, ~1u, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(0u, 35548u)) | func_1(Struct_3(Struct_2(true, Struct_1(vec3<bool>(arg_0, arg_0, arg_0), arg_0, arg_2.x, 4294967295u), Struct_1(arg_1.xyx, false, arg_3, 0u))), Struct_2(false, Struct_1(vec3<bool>(arg_0, true, false), false, -220f, 29560u), Struct_1(vec3<bool>(true, false, true), false, arg_2.x, 64701u))).d));
    var var_3 = Struct_3(Struct_2(arg_0, Struct_1(!arg_1.zyw, true, arg_3, var_2), Struct_1(func_1(Struct_3(Struct_2(false, Struct_1(arg_1.xxz, arg_1.x, arg_2.x, var_2), Struct_1(arg_1.zzz, true, arg_3, var_2))), Struct_2(false, Struct_1(vec3<bool>(false, false, arg_1.x), true, arg_2.x, var_2), Struct_1(vec3<bool>(false, true, arg_0), arg_0, arg_3, var_2))).a, true, -298f, 1u)));
    return Struct_1(func_1(Struct_3(var_3.a), var_3.a).a, any(vec3<bool>(true, true, var_3.a.c.a.x)) && true, 553f, 14868u);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = Struct_2(true, func_4(false && arg_3, vec4<bool>(!(arg_3 || arg_1.b), false, true, true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(406f - arg_2), _wgslsmith_f_op_f32(-205f + 1122f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(416f))), -347f), 470f), arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1903f, 1528f, 750f, -886f)), vec4<f32>(arg_2, -562f, func_1(Struct_3(Struct_2(arg_3, arg_1, Struct_1(vec3<bool>(var_1.c.b, true, true), arg_3, arg_2, 1u))), var_1).c, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), func_4(all(select(vec4<bool>(true, false, false, arg_3), vec4<bool>(false, arg_3, true, false), var_1.a)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, var_1.c.a.x, var_1.c.b), !arg_1.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, arg_2, 778f, var_1.c.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c, 175f, 841f, -1000f) + vec4<f32>(-1240f, arg_1.c, -2669f, -606f)), true)), _wgslsmith_div_f32(arg_2, -1533f)).c, var_1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f)))));
    let var_3 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + arg_1.c) + var_1.c.c))) < func_4(true, !(!select(vec4<bool>(true, arg_3, true, true), vec4<bool>(arg_3, true, var_1.b.a.x, var_1.a), vec4<bool>(false, false, true, arg_3))), _wgslsmith_div_vec4_f32(vec4<f32>(1517f, _wgslsmith_f_op_f32(var_2.x * var_1.c.c), 257f, _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_2)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(826f, var_1.c.c, arg_2, arg_2))))), -1332f).c;
    var var_4 = Struct_3(var_1);
    return var_1.b;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = !vec2<bool>(!(!all(vec4<bool>(false, arg_1, false, arg_0.a.b.a.x))), arg_0.a.a != arg_1);
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.b.c, arg_0.a.c.c))) == arg_0.a.c.c, true, (func_1(Struct_3(Struct_2(false, arg_0.a.c, arg_0.a.b)), Struct_2(arg_0.a.c.a.x, arg_0.a.c, arg_0.a.b)).b || arg_1) & arg_0.a.a);
    var var_2 = arg_2.x;
    var var_3 = arg_0;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.c)), arg_0.a.c.c))), 932f, arg_0.a.b.c);
    return Struct_4(all(vec4<bool>(all(!vec4<bool>(arg_0.a.c.a.x, arg_0.a.a, var_3.a.b.b, true)), !(arg_0.a.c.c >= var_3.a.c.c), !var_1.x == true, any(var_3.a.b.a.xy))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(Struct_2(true, func_2(7694u, func_1(Struct_3(Struct_2(false, Struct_1(vec3<bool>(false, false, true), false, 442f, 18852u), Struct_1(vec3<bool>(true, false, false), true, -1000f, 26415u))), Struct_2(false, Struct_1(vec3<bool>(false, false, false), true, 1354f, 1u), Struct_1(vec3<bool>(false, true, true), false, -1641f, 19631u))), 132f, true), func_1(Struct_3(Struct_2(false, Struct_1(vec3<bool>(false, false, true), true, 151f, 4294967295u), Struct_1(vec3<bool>(true, true, true), false, 474f, 4294967295u))), Struct_2(false, Struct_1(vec3<bool>(false, true, true), false, 1761f, 4294967295u), Struct_1(vec3<bool>(false, true, true), true, 320f, 9973u))))), true, vec4<u32>(1u, ~func_1(Struct_3(Struct_2(false, Struct_1(vec3<bool>(true, true, true), true, -1463f, 49070u), Struct_1(vec3<bool>(false, true, false), false, 997f, 508u))), Struct_2(false, Struct_1(vec3<bool>(false, true, true), true, 1204f, 0u), Struct_1(vec3<bool>(false, false, true), false, 1000f, 0u))).d, 1u, ~(~(~0u))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1135f);
    var var_2 = -u_input.a.x;
    var_2 = _wgslsmith_dot_vec4_i32(abs((abs(vec4<i32>(u_input.a.x, -60711i, 1i, u_input.a.x)) >> (abs(vec4<u32>(4294967295u, var_0.b.a.b.d, 0u, var_0.b.a.b.d)) % vec4<u32>(32u))) & (vec4<i32>(u_input.a.x, u_input.a.x, 10598i, u_input.a.x) | ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -57711i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -26734i) << (vec4<u32>(26853u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(abs(u_input.a.x), 54441i, max(u_input.a.x, u_input.a.x), -(u_input.a.x | -33519i))));
    var var_3 = max(~_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(45950u, 4294967295u, var_0.b.a.c.d, 0u), ~vec4<u32>(9454u, var_0.b.a.c.d, var_0.b.a.c.d, var_0.b.a.c.d)), vec4<u32>(~27808u, var_0.b.a.c.d, ~var_0.b.a.c.d, _wgslsmith_div_u32(var_0.b.a.b.d, var_0.b.a.c.d)), firstLeadingBit(~vec4<u32>(var_0.b.a.c.d, 1u, 53775u, 0u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(65260u >> (var_0.b.a.c.d % 32u), ~27394u, 1u, ~21586u), _wgslsmith_mod_vec4_u32(vec4<u32>(32015u, var_0.b.a.c.d, var_0.b.a.c.d, var_0.b.a.c.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a.c.d, 1u, var_0.b.a.c.d, var_0.b.a.b.d), vec4<u32>(var_0.b.a.c.d, 13156u, var_0.b.a.c.d, 27057u), vec4<u32>(79403u, 64717u, var_0.b.a.c.d, 1750u))), true), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a.c.d, 33251u, var_0.b.a.b.d, var_0.b.a.c.d), vec4<u32>(var_0.b.a.b.d, 22145u, var_0.b.a.c.d, 21574u), vec4<u32>(28401u, 4294967295u, var_0.b.a.c.d, var_0.b.a.c.d)), vec4<u32>(var_0.b.a.b.d, var_0.b.a.b.d, 0u, var_0.b.a.c.d), var_0.a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.c.c, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(589f, _wgslsmith_f_op_f32(var_0.b.a.c.c + 2683f), _wgslsmith_f_op_f32(f32(-1f) * -415f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2614f, var_1, 1698f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, -1000f, 512f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, 839f, -2055f) * vec3<f32>(var_0.b.a.c.c, var_0.b.a.c.c, 1401f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.b.c, 873f, -895f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -135f, 168f, -1276f) + vec4<f32>(-1442f, -1351f, var_1, var_1))))))), vec2<i32>(abs(-u_input.a.x), ~2147483647i), ~vec4<u32>(_wgslsmith_div_u32(15814u, var_3.x), var_3.x, reverseBits(var_0.b.a.b.d) & max(var_0.b.a.b.d, 22903u), _wgslsmith_mod_u32(~var_3.x, var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1568f))))), countOneBits(min(u_input.a.zy, _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy, vec2<bool>(var_0.a, false))))));
}

