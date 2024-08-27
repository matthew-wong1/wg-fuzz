struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = -41967i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> vec4<bool> {
    global0 = reverseBits(vec2<u32>(_wgslsmith_mod_u32(4294967295u, global0.x), 23393u));
    let var_0 = -u_input.b;
    var var_1 = Struct_1(~(-vec2<i32>(-1i, -27355i)), false, var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-679f, _wgslsmith_div_f32(-411f, -1331f), -1059f))))));
    let var_3 = Struct_1((vec2<i32>(22704i, -9080i) | _wgslsmith_clamp_vec2_i32(var_1.a, var_1.a, vec2<i32>(u_input.b, 21213i))) << (u_input.a.xz % vec2<u32>(32u)), true, _wgslsmith_sub_i32(~var_0, -6924i));
    return vec4<bool>(false, all(vec4<bool>(arg_0, true, false, any(vec4<bool>(true, var_3.b, false, var_1.b)))), arg_0 | !(!(!arg_1)), all(vec4<bool>((var_3.c & 0i) > 2147483647i, all(select(vec2<bool>(arg_0, var_3.b), vec2<bool>(arg_0, false), vec2<bool>(true, var_1.b))), arg_2.x <= arg_2.x, false & any(vec4<bool>(var_3.b, var_1.b, true, false)))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(arg_0, i32(-1i) * -19344i), any(select(func_3(true, true, min(u_input.e.ww, vec2<u32>(16313u, 1u))), vec4<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, true, true))), arg_0);
    var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_0.a), vec2<i32>(var_0.c, u_input.b)), vec2<i32>(u_input.b, -45254i))), !var_0.b, ~arg_0);
    var var_1 = Struct_1(min(-_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, u_input.b), min(var_0.a, var_0.a)), ~(vec2<i32>(-1i) * -var_0.a)), any(!func_3(var_0.b, !var_0.b, abs(vec2<u32>(global0.x, u_input.d.x))).wyz), 1i);
    let var_2 = Struct_2(Struct_1(~(~(-vec2<i32>(-29197i, u_input.b))), var_1.b, var_0.a.x | (~(-2147483647i) | (u_input.b >> (global0.x % 32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1086f))))), 1000f, var_0.b)), _wgslsmith_div_vec2_u32(u_input.e.zy, select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, global0.x), vec2<u32>(0u, global0.x), vec2<u32>(global0.x, u_input.c)), u_input.d.zy, !select(vec2<bool>(false, var_0.b), vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1336f, 561f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1599f))))));
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~countOneBits(var_1.c), -2147483647i | var_1.c), vec2<i32>(var_1.c, -arg_0) << (~firstTrailingBit(vec2<u32>(33510u, 65100u)) % vec2<u32>(32u))), any(vec4<bool>(!any(vec2<bool>(var_2.a.b, var_2.a.b)), false, true, true)), _wgslsmith_mult_i32(~(~(-52623i)), _wgslsmith_clamp_i32(var_1.a.x, u_input.b, -1i)));
    return Struct_2(Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_i32(var_3.a, var_3.a, var_3.a)) | -abs(vec2<i32>(0i, var_3.a.x)), var_2.a.b, var_1.a.x >> (~_wgslsmith_sub_u32(var_2.c.x, var_2.c.x) % 32u)), _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.c.x), u_input.a.wy), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, -108f) * vec2<f32>(-2267f, -1397f)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.a;
    var var_1 = arg_2.a;
    var var_2 = arg_0.wz;
    var_0 = Struct_1(arg_1, var_0.b, -1i);
    let var_3 = !vec3<bool>(true, any(vec2<bool>(arg_2.b > 1533f, any(vec2<bool>(var_1.b, var_1.b)))), true);
    return func_2(21262i).a;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(func_4(u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-13650i, u_input.b, -2147483647i), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), 1i), func_2(62177i)), -573f, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(35944u, 39324u), arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f + -722f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global1 = var_0.a.c;
    let var_1 = Struct_2(Struct_1(vec2<i32>(u_input.b, var_0.a.c), !var_0.a.b || true, ~var_0.a.a.x), _wgslsmith_f_op_f32(var_0.b - -1345f), ~countOneBits(u_input.a.wx), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.d.x, var_0.b)), var_0.d.x)), _wgslsmith_div_f32(var_0.d.x, var_0.b)), var_0.d)));
    var var_2 = func_4(firstLeadingBit(countOneBits(u_input.e)), -firstLeadingBit(-(var_0.a.a | vec2<i32>(u_input.b, -30420i))), var_1);
    global1 = 1i;
    return Struct_2(var_1.a, -1063f, arg_0, vec2<f32>(-805f, var_1.d.x));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = ~vec2<u32>(~global0.x, abs(~28783u));
    var var_0 = firstTrailingBit(52187u);
    global0 = ~(~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 0u), vec2<u32>(global0.x, 43601u)) << (u_input.e.wy % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1617f - _wgslsmith_f_op_f32(step(1946f, arg_0.d.x))))));
    let var_2 = func_3(func_1(abs((arg_0.c >> (vec2<u32>(arg_0.c.x, u_input.e.x) % vec2<u32>(32u))) ^ ~vec2<u32>(2571u, arg_0.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, global0.x), arg_0.c), arg_0.c)).a.b, func_4(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(74497u, u_input.d.x), 1u, func_2(u_input.b).c.x, ~43426u)), arg_0.a.a & _wgslsmith_sub_vec2_i32(~vec2<i32>(-28405i, 8779i), -vec2<i32>(18591i, -319i)), Struct_2(func_4(u_input.a, vec2<i32>(arg_0.a.c, -1i), Struct_2(arg_0.a, arg_0.d.x, u_input.e.zw, vec2<f32>(var_1, 1537f))), _wgslsmith_f_op_f32(f32(-1f) * -381f), vec2<u32>(68275u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 1u, 86612u), vec4<u32>(12190u, 4294967295u, 1u, arg_0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d)))).b, abs(vec2<u32>(abs(~u_input.a.x), 1u)));
    return arg_0;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global1 = ~firstTrailingBit(u_input.b);
    var var_0 = Struct_1(vec2<i32>(u_input.b, -1i) >> (arg_0.c % vec2<u32>(32u)), all(!(!(!vec4<bool>(true, false, arg_0.a.b, arg_0.a.b)))), arg_0.a.a.x);
    var var_1 = vec2<bool>(_wgslsmith_sub_i32(countOneBits(arg_0.a.c ^ arg_0.a.a.x), i32(-1i) * -var_0.a.x) < 1i, !var_0.b);
    let var_2 = true;
    global1 = 0i;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = -2147483647i;
    let var_1 = func_6(func_5(func_1(vec2<u32>(23478u, 1704u | global0.x), u_input.d.x)));
    global0 = ~(~vec2<u32>(4294967295u, ~1u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-683f, -534f)) + _wgslsmith_f_op_f32(-2040f + -2220f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) - 558f), 227f), _wgslsmith_f_op_f32(f32(-1f) * -440f), -835f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e.xw, ~vec2<u32>(1u, 36925u) ^ vec2<u32>(60931u, global0.x)), (1u | global0.x) ^ _wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, abs(1u))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f), var_2.x)), ~(abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -20198i, u_input.b, 0i), vec4<i32>(17486i, var_0, 2147483647i, 2147483647i))) ^ select(min(vec4<i32>(var_0, var_1.a.x, -2147483647i, var_0), vec4<i32>(u_input.b, var_1.c, u_input.b, var_1.a.x)), vec4<i32>(var_1.c, -13245i, u_input.b, var_1.c) ^ vec4<i32>(var_0, u_input.b, 0i, u_input.b), select(vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(true, var_1.b, var_1.b, var_1.b), vec4<bool>(false, true, false, true)))));
}

