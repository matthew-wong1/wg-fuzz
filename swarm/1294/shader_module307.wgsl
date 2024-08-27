struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(0u, 1u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_4(4294967295u, true, Struct_1(global1.a.x, arg_1.d.xz, arg_1.c, ~select(vec4<u32>(37151u, u_input.a.x, u_input.b.x, u_input.a.x), select(vec4<u32>(u_input.b.x, 8093u, 52517u, arg_1.a), vec4<u32>(1u, global1.a.x, global1.a.x, global1.a.x), arg_2), arg_2)));
    var var_1 = ~vec4<i32>(u_input.d.x & (max(-2147483647i, u_input.d.x) << (select(4294967295u, 53262u, true) % 32u)), 1i, 17681i, -u_input.c);
    let var_2 = _wgslsmith_f_op_f32(903f * arg_0);
    global1 = Struct_3(u_input.b.yx);
    return ~vec2<u32>(_wgslsmith_mod_u32(var_0.a ^ _wgslsmith_mult_u32(arg_1.b.x, 1u), global1.a.x), ~u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = Struct_3(vec2<u32>(arg_1.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 81812u), 1u)) ^ _wgslsmith_add_vec2_u32(u_input.b.zz, select(func_3(arg_2.c.c, Struct_1(4294967295u, vec2<u32>(arg_2.c.d.x, 420u), -813f, vec4<u32>(43398u, arg_2.c.d.x, arg_2.a, 32314u)), true), func_3(arg_2.c.c, Struct_1(0u, u_input.a, -211f, vec4<u32>(3768u, global1.a.x, 1u, u_input.a.x)), false), arg_2.b)));
    let var_1 = firstLeadingBit(firstTrailingBit(vec2<u32>(var_0.a.x, ~4294967295u)));
    let var_2 = arg_2.b;
    global1 = Struct_3(_wgslsmith_add_vec2_u32(arg_1, u_input.a));
    let var_3 = vec4<bool>(false, u_input.c != min(1000i, u_input.d.x), true, var_2);
    return !select(!vec4<bool>(true, true, true, var_3.x), var_3, var_3);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = select(vec3<bool>((true | any(vec3<bool>(false, true, false))) | true, true, all(func_2(arg_0.x, arg_1.zz, Struct_4(arg_1.x, false, Struct_1(101351u, vec2<u32>(0u, arg_1.x), 325f, arg_1)))) & true), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(648f))) <= _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -812f))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(1u, firstLeadingBit(1u)), global1.a));
    global1 = var_1;
    global0 = ~_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_mult_vec4_u32(reverseBits(arg_1), _wgslsmith_sub_vec4_u32(arg_1, arg_1))) >> (firstLeadingBit(~4294967295u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_1.a.x, var_1.a.x, 3003u), ~vec4<u32>(0u, u_input.b.x, var_1.a.x, 15742u)) % 32u)) % 32u);
    global0 = _wgslsmith_mod_u32((0u >> (firstLeadingBit(global1.a.x) % 32u)) & ~var_1.a.x, firstTrailingBit(~(~28321u | var_1.a.x)));
    return Struct_1(global1.a.x, ~(~var_1.a), -1271f, ~arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(2147483647i, reverseBits(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.b, 0i), u_input.d.x))), u_input.c);
    let var_1 = Struct_4(arg_0.a.x, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), Struct_1(~(~1u), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) * arg_0.c.c), (vec4<u32>(18492u, global1.a.x, 1u, arg_0.c.d.x) | vec4<u32>(global1.a.x, u_input.a.x, arg_0.d, 9149u)) >> (countOneBits(_wgslsmith_add_vec4_u32(arg_0.a, arg_0.a)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_clamp_vec4_u32(arg_1.a, ~func_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1762f)), _wgslsmith_f_op_f32(max(arg_1.c.c, -236f)), arg_0.c.c, _wgslsmith_f_op_f32(var_1.c.c + -491f)), _wgslsmith_sub_vec4_u32(firstTrailingBit(arg_0.a), vec4<u32>(1u, u_input.b.x, var_1.c.b.x, var_1.a)), ~(~vec4<i32>(arg_1.b, arg_0.b, 1i, 4960i))).d, ~(var_1.c.d << (~firstTrailingBit(vec4<u32>(6042u, arg_0.a.x, 1u, 95658u)) % vec4<u32>(32u))));
    global1 = Struct_3(vec2<u32>(1u, ~reverseBits(var_2.x)) << (firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, global1.a.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 112050u), var_1.c.b, vec2<u32>(1u, 25750u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = select(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(var_1.b, true, var_1.b), true))), !select(vec3<bool>(true && var_1.b, all(vec4<bool>(var_1.b, var_1.b, true, true)), true), vec3<bool>(all(vec4<bool>(false, true, false, var_1.b)), global1.a.x <= arg_0.c.b.x, var_1.b), select(false, true, var_1.b)), !var_1.b);
    return Struct_3(u_input.a ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d, global1.a.x), vec2<u32>(var_1.c.a, 1u)), firstLeadingBit(var_2.yw), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), var_1.c.b) >> (vec2<u32>(arg_1.a.x, 5328u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_2(min(firstLeadingBit(vec4<u32>(u_input.b.x, 37416u, 51904u, 32919u)), vec4<u32>(1u, global1.a.x, global1.a.x, u_input.a.x)) ^ select(vec4<u32>(global1.a.x, 28316u, 7907u, 1u) ^ vec4<u32>(global1.a.x, u_input.b.x, global1.a.x, u_input.b.x), ~vec4<u32>(1u, global1.a.x, global1.a.x, u_input.a.x), vec4<bool>(true, false, true, false)), _wgslsmith_div_i32(-u_input.c, -abs(-1i)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, 609f, -1581f, -1236f)), vec4<u32>(4294967295u, 38476u << (0u % 32u), ~u_input.b.x, 50673u & global1.a.x), vec4<i32>(u_input.d.x, u_input.d.x, firstTrailingBit(u_input.c), ~u_input.c)), u_input.b.x), Struct_2(~(max(vec4<u32>(8918u, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(1u, u_input.a.x, 0u, u_input.b.x)) >> (reverseBits(vec4<u32>(global1.a.x, 36239u, global1.a.x, 66453u)) % vec4<u32>(32u))), -9988i, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, 672f, 1034f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, 899f, -421f, -2098f))), ~(~vec4<u32>(u_input.b.x, global1.a.x, global1.a.x, 4294967295u)), ~vec4<i32>(1i, 5552i, u_input.c, u_input.c)), _wgslsmith_dot_vec2_u32(u_input.b.yx, _wgslsmith_add_vec2_u32(firstLeadingBit(global1.a), max(vec2<u32>(57981u, 76878u), vec2<u32>(1818u, u_input.a.x))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 170f, 1325f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2179f, 422f, 548f)))) + vec3<f32>(-619f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -854f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-328f, -1000f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(481f, -629f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1168f - -1715f), _wgslsmith_f_op_f32(select(-1507f, 500f, true))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1430f, -1508f, -585f)));
    var var_1 = func_4(Struct_2(vec4<u32>(min(0u, countOneBits(0u)), u_input.a.x, ~_wgslsmith_clamp_u32(101668u, 0u, u_input.b.x), 4294967295u), _wgslsmith_sub_i32(~(-1i), 2147483647i), func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), firstLeadingBit(vec4<u32>(u_input.a.x, 43705u, u_input.a.x, 4294967295u)) >> (vec4<u32>(1u, 0u, 1u, 40841u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(-7195i, u_input.d.x, 11579i, u_input.d.x))), global1.a.x), Struct_2(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 0u, 74650u, 0u), vec4<u32>(u_input.a.x, u_input.b.x, global1.a.x, 11u)), abs(1i), func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, var_0.x, var_0.x, -300f)))), vec4<u32>(37314u, 950u, global1.a.x, 0u) ^ vec4<u32>(u_input.a.x, 16288u, global1.a.x, 8060u), reverseBits(u_input.d)), abs(36594u)));
    let var_2 = max(~min(-(~u_input.d.zx), u_input.d.yz), vec2<i32>(664i, select(1i, u_input.d.x, all(vec3<bool>(true, false, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1928f, _wgslsmith_f_op_f32(-572f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -967f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(abs(-226f)), true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1033f, -1482f, var_0.x) * vec3<f32>(var_0.x, -658f, var_0.x))) - vec3<f32>(var_0.x, 191f, _wgslsmith_f_op_f32(step(-241f, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -969f)))), -1346f), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), var_0.x > var_0.x), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), !(30973u != ~var_1.a.x))));
    global0 = 47917u;
    var var_4 = Struct_4(_wgslsmith_mult_u32(global1.a.x, 1u), all(vec2<bool>(true, true)), Struct_1(min(93160u, 40315u), firstLeadingBit(~(vec2<u32>(86237u, 45277u) ^ vec2<u32>(global1.a.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(154f + var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -120f)), vec4<u32>(global1.a.x, 1u, abs(u_input.a.x ^ 23425u), 78159u)));
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(reverseBits(var_2.x), ~u_input.d.x, 55270i << (var_1.a.x % 32u)) & u_input.d.xxz), var_5 ^ func_4(Struct_2(~var_4.c.d, -2381i, func_1(vec4<f32>(669f, 600f, -2483f, -838f), var_4.c.d, vec4<i32>(u_input.d.x, 1i, var_2.x, 3651i)), global1.a.x & var_1.a.x), Struct_2(~vec4<u32>(12704u, u_input.a.x, 4294967295u, var_5), -1i, func_1(vec4<f32>(162f, -818f, var_4.c.c, var_4.c.c), var_4.c.d, u_input.d), _wgslsmith_sub_u32(var_5, var_4.a))).a.x);
}

