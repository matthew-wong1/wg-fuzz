struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<u32> {
    return firstLeadingBit(~vec2<u32>(u_input.b.x, 4294967295u) << (vec2<u32>(0u, u_input.b.x | u_input.b.x) % vec2<u32>(32u))) << (u_input.b.zx % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> bool {
    return arg_0.b;
}

fn func_2() -> bool {
    global0 = u_input.b.x;
    global0 = ~(min(_wgslsmith_sub_u32(1u, u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), ~vec3<u32>(18343u, 17501u, u_input.b.x))) ^ firstLeadingBit(_wgslsmith_div_u32(97983u, u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(4294967295u, u_input.b.x)) % 32u)));
    let var_0 = 2147483647i | ~u_input.a;
    let var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(u_input.b.x, 10463u, u_input.b.x, 35628u)), u_input.b), u_input.b.x >> (_wgslsmith_div_u32(abs(u_input.b.x), _wgslsmith_add_u32(0u, 5211u)) % 32u)), any(vec4<bool>(!(1u <= u_input.b.x), any(vec4<bool>(true, false, false, true)) & true, false, all(vec4<bool>(true, true, true, true)))));
    global0 = 31787u;
    return !func_4(var_1, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(6814u, u_input.b.x), func_3()), _wgslsmith_add_i32(-u_input.a, firstLeadingBit(-4536i)), ~(44665u | u_input.b.x), ~81797u, _wgslsmith_dot_vec3_i32(vec3<i32>(3175i, u_input.c, u_input.a), abs(vec3<i32>(2147483647i, -2147483647i, var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(220f, 1000f))) + 2641f));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_add_u32(~4294967295u, 2314u);
    var var_0 = func_2();
    let var_1 = select(select(vec4<bool>(true, any(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), false, true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, arg_0.b, false, arg_0.b), true), select(select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(false, false, arg_0.b, false)), !vec4<bool>(true, true, false, arg_0.b), arg_0.b || true), !(!vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b))), select(vec4<bool>(true, false, true, true), select(!vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(true, false, arg_0.b, true)), arg_0.b == arg_0.b), select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), !vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), true))), vec4<bool>(!arg_0.b, true, true, false), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, true, true)), select(vec4<bool>(false, false, arg_0.b, false), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, false, true, true)), true), (59483u >= u_input.b.x) || all(vec3<bool>(arg_0.b, true, arg_0.b))));
    var var_2 = countOneBits(arg_0.a ^ 1u);
    var var_3 = Struct_1(~select(reverseBits(~u_input.b.wy), _wgslsmith_clamp_vec2_u32(~u_input.b.zy, u_input.b.zw, ~u_input.b.ww), all(select(vec2<bool>(false, arg_0.b), var_1.yx, true))), i32(-1i) * -1i, 42901u, arg_0.a, min(reverseBits(u_input.a), 0i));
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(var_3.a, vec2<u32>(u_input.b.x, var_3.d ^ var_3.a.x)), 87988u), -2147483647i, 4294967295u, ~_wgslsmith_sub_u32(firstTrailingBit(0u) ^ ~var_3.a.x, _wgslsmith_sub_u32(~22935u, ~var_3.a.x)), ~firstLeadingBit(-43760i) << (var_3.d % 32u));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(~46589u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, arg_2.c), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), ~1699u), _wgslsmith_dot_vec3_u32(~u_input.b.xzx >> (countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 48122u)) % vec3<u32>(32u)), u_input.b.xww)), _wgslsmith_div_u32(~firstTrailingBit(~arg_2.a.x), reverseBits(~arg_2.a.x)), 76054u);
    global0 = 4294967295u << ((min(~(~44032u), 18131u) << (var_0.x % 32u)) % 32u);
    global0 = func_1(Struct_3(var_0.x, false)).c;
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-10824i, 34749i), max(-firstLeadingBit(vec2<i32>(0i, 10838i)), vec2<i32>(arg_2.e, _wgslsmith_div_i32(-82691i, u_input.c))));
    var var_2 = Struct_3(u_input.b.x, false & arg_0);
    return arg_2;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, 246f))));
    var var_1 = ~abs(5412u);
    global0 = u_input.b.x;
    let var_2 = !(!vec4<bool>(func_2(), ~u_input.a > -u_input.a, u_input.b.x > reverseBits(u_input.b.x), false));
    let var_3 = var_2.x;
    return Struct_3(arg_1.a.x ^ ~28000u, any(!(!var_2)));
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    var var_0 = !vec4<bool>(-2147483647i <= ~min(u_input.a, u_input.c), select(arg_0.b & (arg_3.x > 737f), arg_0.b, -2775i <= _wgslsmith_add_i32(10485i, u_input.c)), ~(~arg_0.a) < _wgslsmith_add_u32(~100242u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.b.x, u_input.b.x), u_input.b.wxy)), arg_0.b);
    var var_1 = func_1(func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_3.x)) + arg_3.xz), Struct_1(u_input.b.wz | u_input.b.xy, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-60916i, 1i, -16709i)), vec3<i32>(u_input.c, u_input.a, u_input.a) | vec3<i32>(2147483647i, u_input.c, -1i)), 55939u, ~u_input.b.x, _wgslsmith_mult_i32(-16881i, u_input.c) >> (reverseBits(0u) % 32u)))).c;
    let var_2 = u_input.c;
    var var_3 = Struct_3(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(u_input.b.yw, vec2<u32>(11652u, 4294967295u), var_0.yz), u_input.b.zz | u_input.b.xz), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(109846u, 33662u)), min(u_input.b.zy, vec2<u32>(52952u, u_input.b.x)))), !arg_0.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(-arg_3);
    return ~(0u ^ ~arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(func_7(func_6(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1753f, -1000f)))), func_5(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, true, true, false)), func_1(Struct_3(6586u, false)))), 25817u, _wgslsmith_f_op_f32(748f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f))), vec4<f32>(-626f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -206f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) * -696f), _wgslsmith_f_op_f32(-846f * -716f))), 4294967295u);
    let var_1 = func_1(Struct_3(u_input.b.x, any(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_div_vec4_u32(select(u_input.b, ~vec4<u32>(4294967295u, _wgslsmith_add_u32(var_1.d, 24121u), firstTrailingBit(var_1.d), var_1.c), !vec4<bool>(true, func_6(vec2<f32>(512f, -1000f), var_1).b, any(vec3<bool>(false, true, true)), true)), ~(~(~(~vec4<u32>(u_input.b.x, u_input.b.x, var_1.d, 0u)))));
    var_2 = ~_wgslsmith_sub_vec4_u32(~u_input.b & ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b), vec4<u32>(var_1.d, func_7(Struct_3(var_2.x, false), var_2.x, -359f, vec4<f32>(1527f, 1012f, -284f, 304f)) & select(20510u, var_1.a.x, false), var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.a, u_input.b.yy) | ~var_1.c));
    let var_3 = func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1246f + -1799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-408f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-407f, -1561f)))))), var_1);
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(715f * 825f), -243f, 1377f, _wgslsmith_div_f32(964f, 1315f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(531f, 335f, 674f, 1872f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1084f - 281f), -839f, -1551f, -180f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, 1083f, 980f, -1711f) - vec4<f32>(205f, -693f, -599f, -255f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-519f, 321f, 181f, 2306f)))), var_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(220f)), _wgslsmith_f_op_f32(-469f - 1636f), _wgslsmith_f_op_f32(abs(-1949f)), _wgslsmith_div_f32(469f, 159f))))));
    let x = u_input.a;
    s_output = StorageBuffer(134f, u_input.a, ~vec3<u32>(4876u << (func_1(Struct_3(42799u, var_3.b)).c % 32u), 4294967295u >> (_wgslsmith_mult_u32(u_input.b.x, var_3.a) % 32u), ~firstTrailingBit(1330u)), ~max(select(-vec2<i32>(var_1.e, u_input.c), -vec2<i32>(0i, u_input.a), select(vec2<bool>(true, var_3.b), vec2<bool>(true, false), vec2<bool>(var_3.b, true))), ~(~vec2<i32>(2147483647i, 7842i))), ~(~_wgslsmith_div_vec2_u32(select(var_1.a, var_1.a, var_3.b), var_2.zx)));
}

