struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_1(vec3<i32>((select(u_input.c.x, 2147483647i, arg_1.b.c.x) >> (~0u % 32u)) & u_input.a, ~(-reverseBits(-10303i)), -11660i), _wgslsmith_div_vec3_f32(arg_1.b.b, vec3<f32>(arg_1.d, 1425f, -1000f)), arg_1.a.c.c, firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(-1i, 58942i), 39324i, -33291i)));
    var_0 = Struct_1(~(-var_0.a) & vec3<i32>(var_0.a.x << (~u_input.d % 32u), u_input.c.x | u_input.a, ~(u_input.a ^ -2147483647i)), var_0.b, select(select(vec2<bool>(!var_0.c.x, false), select(arg_1.a.a.c, vec2<bool>(var_0.c.x, false), arg_1.b.c.x & true), arg_1.a.a.c), var_0.c, !select(select(vec2<bool>(false, arg_1.a.c.c.x), var_0.c, var_0.c.x), select(vec2<bool>(true, arg_1.a.c.c.x), vec2<bool>(true, false), true), !arg_1.a.c.c.x)), ~(var_0.d ^ -vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x)));
    let var_1 = arg_1.a;
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(var_0.a.x << (u_input.d % 32u), 46286i) << (u_input.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(min(var_1.a.a.x, arg_1.a.a.a.x), ~var_0.a.x), min(var_0.a.xx, vec2<i32>(-1i, var_0.d.x))), _wgslsmith_dot_vec3_i32(firstLeadingBit(firstTrailingBit(u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.x, -27219i, -39691i), vec3<i32>(u_input.a, -43960i, arg_1.b.a.x) >> (arg_0.xyw % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(arg_1.a.c.b, var_1.a.b)))), var_0.c, select(vec3<i32>(-19321i, -u_input.c.x, arg_1.b.a.x), abs(var_1.c.d) | arg_1.a.c.d, true) | ~select(abs(vec3<i32>(var_0.a.x, -6393i, -100300i)), vec3<i32>(arg_1.a.c.d.x, 4420i, -1i), all(var_1.a.c)));
    var_2 = Struct_1(-vec3<i32>(-30589i, (var_1.a.a.x & 6924i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, var_1.a.d.x, 5628i), var_0.d), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1530f, -107f), vec2<bool>(true, true), var_1.c.a);
    return any(!select(select(var_2.c, !vec2<bool>(false, var_2.c.x), false), vec2<bool>(false || var_0.c.x, false), !(!vec2<bool>(false, arg_1.a.a.c.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = -1679f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz));
    var_0 = 1903f;
    var var_2 = select(!vec3<bool>(arg_1, true, var_1.x == 770f), !select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, arg_1), arg_1), vec3<bool>(false, func_3(vec4<u32>(u_input.b, u_input.d, 1u, 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.a, 0i, u_input.c.x), arg_0.wxz, vec2<bool>(true, false), u_input.c), 1523f, Struct_1(vec3<i32>(u_input.a, u_input.c.x, 1i), vec3<f32>(-1132f, -649f, -1331f), vec2<bool>(true, arg_1), vec3<i32>(9257i, u_input.c.x, u_input.c.x))), Struct_1(vec3<i32>(u_input.c.x, -2147483647i, u_input.a), vec3<f32>(-1345f, arg_0.x, -792f), vec2<bool>(true, arg_1), u_input.c), vec3<u32>(u_input.b, arg_2, u_input.b), var_1.x)), true), _wgslsmith_f_op_f32(sign(-1047f)) == 795f), arg_1);
    var_2 = select(vec3<bool>(true, true, var_2.x), select(select(!vec3<bool>(false, true, arg_1), vec3<bool>(true, false, true), true), select(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, arg_1, arg_1), arg_1), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, false, arg_1), select(vec3<bool>(arg_1, false, true), vec3<bool>(false, false, false), arg_1)), !any(var_2.yx)), select(false, select(arg_1, var_2.x == false, !var_2.x), false || any(vec4<bool>(false, arg_1, true, var_2.x)))), !(~arg_2 < _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(51816u, u_input.b, arg_2)), vec3<u32>(u_input.d, arg_2, arg_2) | vec3<u32>(4294967295u, arg_2, u_input.b))));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global0 = false;
    var var_0 = arg_2;
    var var_1 = abs(~(min(vec4<i32>(u_input.a, arg_1.d.x, 31754i, 0i), -vec4<i32>(8440i, -48742i, u_input.a, arg_2.a.c.d.x)) & ~vec4<i32>(arg_2.b.d.x, 0i, u_input.c.x, arg_1.a.x)));
    var var_2 = Struct_1(firstTrailingBit(-vec3<i32>(~arg_1.a.x, u_input.c.x, countOneBits(arg_2.b.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.c.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(var_0.b.b.x - var_0.d), _wgslsmith_f_op_f32(trunc(var_0.d))))), var_0.a.c.c, _wgslsmith_clamp_vec3_i32(arg_1.a, min(arg_1.a, arg_2.a.c.d), -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-22044i, -7416i, u_input.a)), arg_2.b.a)));
    let var_3 = !(arg_2.c.x != ~firstTrailingBit(~36952u));
    return Struct_1(-var_2.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2919f - _wgslsmith_f_op_f32(min(arg_2.a.b, 956f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.x * -583f))), _wgslsmith_f_op_f32(-var_0.b.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, arg_2.d, var_2.b.x)) * arg_1.b)), vec2<bool>(var_3, any(select(!vec3<bool>(var_2.c.x, arg_0, true), !vec3<bool>(arg_2.a.c.c.x, arg_2.a.a.c.x, false), vec3<bool>(arg_1.c.x, arg_0, var_0.b.c.x)))), arg_2.b.d);
}

fn func_1() -> f32 {
    let var_0 = func_4(!func_2(vec4<f32>(_wgslsmith_f_op_f32(round(-357f)), -1812f, _wgslsmith_f_op_f32(-1000f + -899f), -414f), all(vec3<bool>(true, true, true)), 4294967295u), Struct_1(countOneBits(vec3<i32>(28325i, 6053i, 0i) & -u_input.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-319f, 1415f, true)) + _wgslsmith_f_op_f32(min(-1025f, -1107f))), 1247f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(639f, 1187f))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(u_input.c), u_input.c), vec3<i32>(~u_input.a, -14333i, ~(-1i)))), Struct_3(Struct_2(Struct_1(u_input.c ^ vec3<i32>(0i, u_input.c.x, -2147483647i), vec3<f32>(1f, 1f, 1f), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), u_input.c), 1193f, Struct_1(-vec3<i32>(-1328i, 33002i, 1755i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1188f, 2573f, -507f) - vec3<f32>(1654f, 826f, -988f)), vec2<bool>(true, true), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.a, -54011i, u_input.a)))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), select(u_input.c, vec3<i32>(2147483647i, u_input.a, 0i), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, 586f, -1220f) + vec3<f32>(-1344f, -967f, -855f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, -189f, -1000f)))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), -vec3<i32>(1i, 7365i, u_input.c.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.b, 4294967295u), firstTrailingBit(vec3<u32>(u_input.d, 4294967295u, u_input.b))), _wgslsmith_f_op_f32(sign(471f))));
    global0 = true;
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x + -711f)))), var_0);
    var_1 = Struct_2(Struct_1(u_input.c, vec3<f32>(-647f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1339f - -1000f), _wgslsmith_f_op_f32(var_1.b - -1485f))), 451f), var_1.a.c, vec3<i32>(_wgslsmith_add_i32(max(-88176i, var_1.c.d.x), abs(var_1.a.d.x)), 1i, u_input.a)), -123f, Struct_1(max(abs(var_0.a ^ u_input.c), -var_1.c.a), vec3<f32>(1613f, -307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) * _wgslsmith_f_op_f32(-var_1.c.b.x))), !(!var_0.c), var_0.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.c.b.xx + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.b.x * -470f))) - var_0.b.x), _wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))))));
    return var_1.c.b.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>) -> bool {
    global0 = true;
    global0 = !(!select(!func_4(true, Struct_1(u_input.c, arg_0.yzy, vec2<bool>(true, false), u_input.c), Struct_3(Struct_2(Struct_1(u_input.c, arg_0.zyz, vec2<bool>(false, true), u_input.c), -1197f, Struct_1(vec3<i32>(arg_1, arg_1, arg_1), arg_0.yxw, vec2<bool>(false, true), vec3<i32>(u_input.c.x, 1i, -28485i))), Struct_1(vec3<i32>(arg_1, -1i, arg_1), vec3<f32>(arg_0.x, arg_0.x, -926f), vec2<bool>(true, true), u_input.c), vec3<u32>(0u, arg_2.x, 1u), -1597f)).c.x, func_3(firstTrailingBit(vec4<u32>(4294967295u, u_input.d, 33690u, 0u)), Struct_3(Struct_2(Struct_1(u_input.c, arg_0.yxz, vec2<bool>(false, true), vec3<i32>(-1i, arg_1, u_input.c.x)), arg_0.x, Struct_1(vec3<i32>(1i, arg_1, -24546i), vec3<f32>(arg_0.x, arg_0.x, 628f), vec2<bool>(true, false), vec3<i32>(-1i, -1i, 93962i))), Struct_1(vec3<i32>(arg_1, 2147483647i, arg_1), arg_0.xxx, vec2<bool>(false, true), u_input.c), vec3<u32>(u_input.b, 26511u, 1u), 492f)), false));
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<i32>(arg_1 << (4294967295u % 32u), 20632i, countOneBits(-21847i)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-439f, 929f, 834f), vec3<f32>(arg_0.x, arg_0.x, -990f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -294f, 133f))), vec2<bool>(false, true), countOneBits(u_input.c) >> (arg_2.wzz % vec3<u32>(32u))), 482f, func_4(true, func_4(true, func_4(false, Struct_1(vec3<i32>(-2147483647i, u_input.a, 0i), arg_0.zzy, vec2<bool>(true, false), vec3<i32>(1i, arg_1, u_input.a)), Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.c.x, arg_1, -1i), arg_0.zxw, vec2<bool>(true, true), vec3<i32>(31529i, 34126i, arg_1)), arg_0.x, Struct_1(vec3<i32>(u_input.a, -18583i, arg_1), arg_0.wzx, vec2<bool>(true, true), vec3<i32>(2147483647i, arg_1, 0i))), Struct_1(u_input.c, arg_0.wxz, vec2<bool>(false, true), vec3<i32>(arg_1, u_input.a, -4432i)), arg_2.zxw, arg_0.x)), Struct_3(Struct_2(Struct_1(u_input.c, arg_0.yxy, vec2<bool>(true, true), vec3<i32>(-3745i, u_input.a, u_input.c.x)), -1885f, Struct_1(u_input.c, vec3<f32>(-944f, arg_0.x, arg_0.x), vec2<bool>(true, true), u_input.c)), Struct_1(vec3<i32>(-3653i, 6069i, u_input.a), vec3<f32>(1000f, -705f, 1008f), vec2<bool>(true, true), u_input.c), vec3<u32>(u_input.d, 23046u, u_input.b), -315f)), Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.c.x, arg_1, u_input.c.x), vec3<f32>(-668f, arg_0.x, arg_0.x), vec2<bool>(true, false), vec3<i32>(arg_1, u_input.c.x, 11325i)), arg_0.x, Struct_1(vec3<i32>(0i, -1i, u_input.c.x), arg_0.zwy, vec2<bool>(true, true), u_input.c)), Struct_1(vec3<i32>(u_input.c.x, u_input.a, -2147483647i), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<bool>(false, false), u_input.c), _wgslsmith_sub_vec3_u32(arg_2.yxw, vec3<u32>(u_input.d, arg_2.x, u_input.d)), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false))))), func_4(!any(vec2<bool>(false, true)), func_4(any(func_4(true, Struct_1(vec3<i32>(u_input.c.x, u_input.a, -17558i), vec3<f32>(arg_0.x, arg_0.x, -578f), vec2<bool>(false, true), vec3<i32>(u_input.c.x, u_input.c.x, arg_1)), Struct_3(Struct_2(Struct_1(u_input.c, vec3<f32>(289f, -1582f, arg_0.x), vec2<bool>(true, true), u_input.c), arg_0.x, Struct_1(vec3<i32>(1i, -15615i, -1i), arg_0.ywy, vec2<bool>(true, false), u_input.c)), Struct_1(vec3<i32>(-2605i, arg_1, arg_1), vec3<f32>(arg_0.x, -111f, arg_0.x), vec2<bool>(true, true), u_input.c), vec3<u32>(4294967295u, 47762u, arg_2.x), -565f)).c), func_4(func_4(true, Struct_1(vec3<i32>(44094i, 43548i, 64561i), arg_0.wwy, vec2<bool>(true, false), vec3<i32>(u_input.a, -52980i, 33766i)), Struct_3(Struct_2(Struct_1(u_input.c, vec3<f32>(1676f, arg_0.x, 1066f), vec2<bool>(false, false), vec3<i32>(u_input.c.x, 2147483647i, u_input.a)), arg_0.x, Struct_1(u_input.c, arg_0.yyz, vec2<bool>(false, false), u_input.c)), Struct_1(u_input.c, vec3<f32>(192f, 1156f, -426f), vec2<bool>(false, true), u_input.c), arg_2.wzy, arg_0.x)).c.x, Struct_1(u_input.c, arg_0.wyy, vec2<bool>(true, true), vec3<i32>(arg_1, -51884i, u_input.a)), Struct_3(Struct_2(Struct_1(u_input.c, vec3<f32>(arg_0.x, arg_0.x, -499f), vec2<bool>(true, false), vec3<i32>(u_input.a, u_input.c.x, arg_1)), arg_0.x, Struct_1(u_input.c, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec2<bool>(false, true), vec3<i32>(u_input.a, arg_1, 0i))), Struct_1(u_input.c, vec3<f32>(arg_0.x, -430f, -341f), vec2<bool>(true, true), u_input.c), arg_2.xwy, arg_0.x)), Struct_3(Struct_2(Struct_1(vec3<i32>(arg_1, -2147483647i, -1i), arg_0.wyw, vec2<bool>(false, true), u_input.c), arg_0.x, Struct_1(u_input.c, arg_0.xwy, vec2<bool>(true, true), vec3<i32>(u_input.a, arg_1, u_input.c.x))), Struct_1(u_input.c, arg_0.xwz, vec2<bool>(false, true), vec3<i32>(u_input.a, 2939i, arg_1)), ~arg_2.yxw, _wgslsmith_f_op_f32(min(368f, -1461f)))), Struct_3(Struct_2(Struct_1(vec3<i32>(arg_1, 0i, arg_1), arg_0.wxz, vec2<bool>(false, true), u_input.c), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(vec3<i32>(u_input.a, arg_1, 1i), arg_0.wyy, vec2<bool>(true, false), vec3<i32>(arg_1, -13929i, 27545i))), func_4(true, func_4(false, Struct_1(u_input.c, vec3<f32>(-135f, 1240f, arg_0.x), vec2<bool>(true, true), vec3<i32>(arg_1, -1i, -2147483647i)), Struct_3(Struct_2(Struct_1(vec3<i32>(-2147483647i, arg_1, u_input.c.x), arg_0.wxw, vec2<bool>(true, true), vec3<i32>(32281i, -26767i, 5726i)), arg_0.x, Struct_1(vec3<i32>(arg_1, -50695i, 60678i), arg_0.zxw, vec2<bool>(false, false), vec3<i32>(-174i, u_input.c.x, -5990i))), Struct_1(u_input.c, arg_0.yzz, vec2<bool>(true, true), u_input.c), vec3<u32>(arg_2.x, 4294967295u, 4294967295u), 1071f)), Struct_3(Struct_2(Struct_1(u_input.c, arg_0.yww, vec2<bool>(false, false), u_input.c), -350f, Struct_1(vec3<i32>(arg_1, u_input.a, 2147483647i), vec3<f32>(813f, 845f, arg_0.x), vec2<bool>(false, true), u_input.c)), Struct_1(vec3<i32>(u_input.c.x, 0i, 4900i), vec3<f32>(arg_0.x, arg_0.x, -674f), vec2<bool>(true, false), u_input.c), vec3<u32>(3037u, arg_2.x, arg_2.x), 518f)), select(~arg_2.zwy, ~arg_2.yxy, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, ~arg_2.x, u_input.d), arg_2.www & ~arg_2.xxz, ~firstTrailingBit(arg_2.wyx)) ^ arg_2.xzw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1913f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1344f * arg_0.x)))));
    let var_1 = firstLeadingBit((~arg_1 ^ arg_1) & ~countOneBits(-2147483647i)) ^ arg_1;
    let var_2 = Struct_4(~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(24318i, var_1, u_input.a, u_input.c.x), vec4<i32>(arg_1, -2147483647i, arg_1, var_0.b.d.x)), min(1i, u_input.a)), -18771i, arg_1), var_0.b.b, true);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + -546f)) + -578f) == var_0.a.c.b.x;
}

fn func_6(arg_0: bool) -> u32 {
    let var_0 = func_4(~(u_input.b ^ u_input.b) >= _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(84669u, _wgslsmith_clamp_u32(u_input.b, u_input.d, 1u), countOneBits(u_input.d))), Struct_1(vec3<i32>(2147483647i, u_input.a, 36386i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1057f, 814f, 261f) - vec3<f32>(-950f, 1000f, -719f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, 1621f, 275f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -1567f, -991f)))), vec2<bool>(!(u_input.d <= u_input.d), !arg_0), vec3<i32>(u_input.c.x | u_input.c.x, _wgslsmith_div_i32(u_input.a << (72460u % 32u), abs(1i)), _wgslsmith_clamp_i32(select(u_input.c.x, u_input.c.x, true), u_input.a, 0i))), Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-475f, -461f, 1104f))), func_4(false, Struct_1(u_input.c, vec3<f32>(-1455f, 897f, 483f), vec2<bool>(arg_0, false), vec3<i32>(13890i, 2462i, 2147483647i)), Struct_3(Struct_2(Struct_1(u_input.c, vec3<f32>(801f, -399f, 961f), vec2<bool>(arg_0, true), u_input.c), -409f, Struct_1(u_input.c, vec3<f32>(605f, 1511f, 245f), vec2<bool>(arg_0, false), vec3<i32>(u_input.c.x, u_input.c.x, 23832i))), Struct_1(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), vec3<f32>(178f, -695f, 1130f), vec2<bool>(false, arg_0), u_input.c), vec3<u32>(1u, u_input.d, u_input.d), -812f)).c, countOneBits(vec3<i32>(u_input.c.x, -28499i, 2147483647i))), 1f, Struct_1(-u_input.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(424f, -707f, -2910f), vec3<f32>(992f, 447f, 220f))), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec3<i32>(19067i, u_input.a, u_input.c.x), vec3<i32>(0i, u_input.c.x, u_input.a), vec3<bool>(true, true, true)))), func_4(true, func_4(false, func_4(false, Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<f32>(-539f, -702f, -580f), vec2<bool>(true, arg_0), u_input.c), Struct_3(Struct_2(Struct_1(vec3<i32>(-4400i, u_input.a, u_input.a), vec3<f32>(-120f, 807f, -847f), vec2<bool>(false, arg_0), vec3<i32>(u_input.a, 1i, u_input.a)), -931f, Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<f32>(1000f, 210f, 1448f), vec2<bool>(arg_0, false), u_input.c)), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), vec3<f32>(-2032f, -398f, 1391f), vec2<bool>(arg_0, false), vec3<i32>(u_input.a, u_input.a, u_input.c.x)), vec3<u32>(4294967295u, u_input.b, u_input.d), -3080f)), Struct_3(Struct_2(Struct_1(u_input.c, vec3<f32>(1033f, -161f, -992f), vec2<bool>(false, false), u_input.c), 166f, Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<f32>(-877f, 750f, 1385f), vec2<bool>(arg_0, true), vec3<i32>(u_input.a, -2147483647i, 19076i))), Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), vec3<f32>(124f, 109f, 1862f), vec2<bool>(arg_0, arg_0), u_input.c), vec3<u32>(u_input.d, u_input.d, 0u), 1205f)), Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.c.x, -17045i, u_input.c.x), vec3<f32>(871f, 241f, -849f), vec2<bool>(false, arg_0), u_input.c), 258f, Struct_1(u_input.c, vec3<f32>(-1062f, -1000f, 1000f), vec2<bool>(true, false), u_input.c)), func_4(false, Struct_1(u_input.c, vec3<f32>(802f, 899f, -1051f), vec2<bool>(true, arg_0), vec3<i32>(23426i, u_input.a, 18321i)), Struct_3(Struct_2(Struct_1(vec3<i32>(7966i, -1i, 0i), vec3<f32>(585f, -436f, -700f), vec2<bool>(arg_0, true), u_input.c), 603f, Struct_1(u_input.c, vec3<f32>(556f, 876f, 1000f), vec2<bool>(false, false), u_input.c)), Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), vec3<f32>(307f, -254f, -359f), vec2<bool>(arg_0, arg_0), vec3<i32>(u_input.a, -1i, -7235i)), vec3<u32>(1u, u_input.d, u_input.b), -682f)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.d), vec3<u32>(u_input.b, 0u, u_input.d)), _wgslsmith_f_op_f32(1145f + -1000f))), min(~vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(6257u, ~u_input.d, ~78786u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-257f, 205f)), _wgslsmith_f_op_f32(1026f + -1000f)))));
    return _wgslsmith_mod_u32(u_input.b & 23353u, ~_wgslsmith_add_u32(0u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec3<i32>(-51290i, _wgslsmith_mod_i32(24621i, -countOneBits(-13424i)), u_input.a | u_input.c.x), vec3<i32>(~0i, -2147483647i, u_input.c.x));
    var var_1 = select(countOneBits(u_input.b & ~(4294967295u >> (1u % 32u))), func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-110f, 258f), _wgslsmith_f_op_f32(f32(-1f) * -1586f), 1f), 0i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 49125u, 1u, 13242u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d)))), any(vec2<bool>(true, !any(vec3<bool>(true, true, false)))));
    var var_2 = var_0.x;
    var_1 = reverseBits(~0u);
    let var_3 = vec3<u32>(u_input.b, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 5046u) | vec2<u32>(u_input.d, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(40370u, 21858u), vec2<u32>(u_input.d, u_input.b)))), u_input.d);
    var var_4 = Struct_2(Struct_1(countOneBits(var_0), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_div_f32(275f, 1048f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_1())), vec2<bool>(func_4(false, Struct_1(vec3<i32>(var_0.x, -26298i, u_input.c.x), vec3<f32>(1118f, 558f, -1014f), vec2<bool>(false, true), var_0), Struct_3(Struct_2(Struct_1(vec3<i32>(var_0.x, 2147483647i, -41355i), vec3<f32>(-1428f, 863f, 1815f), vec2<bool>(false, false), u_input.c), 312f, Struct_1(vec3<i32>(u_input.c.x, u_input.a, u_input.c.x), vec3<f32>(-410f, 1548f, -1107f), vec2<bool>(true, true), u_input.c)), Struct_1(vec3<i32>(var_0.x, 1i, -48990i), vec3<f32>(-575f, -375f, -1740f), vec2<bool>(false, false), var_0), vec3<u32>(u_input.b, 0u, var_3.x), -1688f)).a.x != (62440i >> (u_input.d % 32u)), !all(vec2<bool>(false, false))), vec3<i32>(~_wgslsmith_mod_i32(47209i, 26503i), _wgslsmith_add_i32(1i, -1i), -9273i)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-100f)) - _wgslsmith_f_op_f32(ceil(1918f))), 709f))), Struct_1(vec3<i32>(~_wgslsmith_clamp_i32(u_input.c.x, -9937i, -68812i), u_input.c.x, ~_wgslsmith_div_i32(-10712i, 5229i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-609f, -311f, 927f) - vec3<f32>(306f, -930f, -694f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1079f, 440f, 861f), vec3<f32>(-1314f, 662f, -2342f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(210f, 1000f, -587f), vec3<f32>(280f, 1267f, -1080f))))), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(true, true, true, true))), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-33292i);
}

