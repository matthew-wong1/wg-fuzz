struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(2147483647i, i32(-2147483648), 24693i, -1i, 2147483647i, -41055i, 1i, 32438i, 1i, i32(-2147483648), -47243i, 36845i, -54409i, -57845i, 12178i, -1i, 1i, -1i, -1i, i32(-2147483648), 32944i);

var<private> global1: vec4<f32> = vec4<f32>(-480f, -504f, 101f, 480f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = arg_0;
    var var_1 = -1i;
    let var_2 = arg_0.a;
    var var_3 = Struct_3(Struct_2(reverseBits(vec3<u32>(11495u, 72163u, ~55936u)), ~(~max(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, 1u, u_input.a))), vec2<bool>(all(arg_0.a.a.xy), arg_3), arg_0.a), 1i);
    let var_4 = -29652i & (1i << (var_3.a.b.x % 32u));
    return i32(-1i) * -_wgslsmith_mult_i32(~(var_4 | 68734i), -(~1i));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(~firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(vec3<u32>(1u, u_input.a, 1u) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(1u, 4294967295u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), !arg_2.a.yx, Struct_1(vec3<bool>(true, arg_2.a.x, true))), ~(func_3(Struct_4(Struct_1(arg_0)), global1.zz, arg_2.a.x, false) << (_wgslsmith_clamp_u32(~u_input.a, 1u, ~17780u) % 32u)));
    var var_1 = _wgslsmith_clamp_u32(countOneBits(u_input.a) | u_input.a, ~6210u, var_0.a.a.x);
    let var_2 = arg_2;
    var_0 = Struct_3(Struct_2(var_0.a.a & vec3<u32>(abs(var_0.a.b.x), ~var_0.a.a.x, _wgslsmith_mult_u32(u_input.a, 1u)), max(vec3<u32>(~var_0.a.a.x, countOneBits(var_0.a.a.x), ~u_input.a), ~vec3<u32>(var_0.a.a.x, u_input.a, 4294967295u)), var_2.a.yz, Struct_1(!(!vec3<bool>(false, true, var_0.a.d.a.x)))), i32(-1i) * -countOneBits(-var_0.b));
    global0 = array<i32, 21>();
    return Struct_3(var_0.a, 1i);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    global0 = array<i32, 21>();
    let var_0 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(1u, arg_0.x)) << (0u % 32u), arg_0.x, firstTrailingBit(abs(4294967295u))), arg_0, select(arg_3.xz, func_2(func_2(select(arg_2.a.d.a, arg_3.wxy, true), max(-2147483647i, arg_2.b), Struct_1(vec3<bool>(true, true, arg_1.a.x))).a.d.a, _wgslsmith_add_i32(i32(-1i) * -73671i, arg_2.b), Struct_1(!arg_2.a.d.a)).a.c, arg_2.a.c), Struct_1(func_2(arg_2.a.d.a, arg_2.b, func_2(!arg_1.a, -arg_2.b, func_2(vec3<bool>(true, false, arg_3.x), global0[_wgslsmith_index_u32(u_input.a, 21u)], arg_1).a.d).a.d).a.d.a));
    var var_1 = Struct_2(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(0u, u_input.a, 2627u), var_0.a) >> (min(var_0.b, vec3<u32>(9401u, arg_2.a.a.x, arg_2.a.b.x)) % vec3<u32>(32u)), ~var_0.b >> (countOneBits(vec3<u32>(1271u, u_input.a, arg_2.a.b.x)) % vec3<u32>(32u))), ~(arg_0 ^ arg_0), arg_3.wx, Struct_1(!vec3<bool>(any(arg_3), all(vec4<bool>(true, arg_2.a.c.x, true, arg_2.a.d.a.x)), true)));
    let var_2 = vec4<u32>(4294967295u, ~29939u, ~u_input.a, var_1.b.x);
    let var_3 = select(var_0.d.a, vec3<bool>(all(vec2<bool>(false, false)), !(!arg_2.a.d.a.x), false), all(select(!arg_3, select(arg_3, !arg_3, vec4<bool>(arg_3.x, true, false, var_0.d.a.x)), _wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(arg_2.a.b.x, var_0.a.x, u_input.a)) > arg_2.a.a.x)));
    return _wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<bool>) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(-1234f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(func_4(~vec3<u32>(u_input.a, u_input.a, 4294967295u), arg_2.a, func_2(arg_3, 55271i, Struct_1(vec3<bool>(arg_2.a.a.x, true, arg_3.x))), !vec4<bool>(true, arg_2.a.a.x, true, true)))), 1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(282f, global1.x, -2674f, 130f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -334f) * vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))));
    let var_0 = arg_2;
    var var_1 = Struct_1(vec3<bool>(arg_3.x, arg_3.x, !(!(!var_0.a.a.x))));
    global0 = array<i32, 21>();
    let var_2 = ~reverseBits(func_2(arg_2.a.a, ~(~8982i), Struct_1(select(vec3<bool>(var_0.a.a.x, arg_2.a.a.x, true), arg_2.a.a, vec3<bool>(var_0.a.a.x, arg_2.a.a.x, true)))).a.a);
    return -2147483647i;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - -441f), true)))) - _wgslsmith_f_op_f32(f32(-1f) * -1161f)));
    global0 = array<i32, 21>();
    let var_1 = firstTrailingBit(vec4<u32>(~u_input.a, countOneBits(u_input.a), (abs(u_input.a) ^ 443u) | ~(~95990u), 0u));
    let var_2 = func_2(select(vec3<bool>(any(vec4<bool>(true, true, false, false)) && select(false, true, false), (arg_1.x == 59824i) && false, false), vec3<bool>(false, !(arg_0.x < arg_0.x), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(false, true)))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-17150i & arg_0.x, arg_1.x), _wgslsmith_clamp_i32(62005i, firstLeadingBit(0i), -2554i), func_1(select(arg_0.x, -25960i, false), arg_0 >> (var_1.zyy % vec3<u32>(32u)), Struct_4(Struct_1(vec3<bool>(false, true, true))), vec3<bool>(false, false, true))), arg_1.x), func_2(select(func_2(vec3<bool>(true, true, true), arg_1.x, func_2(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(5343u, 21u)], Struct_1(vec3<bool>(true, true, true))).a.d).a.d.a, func_2(vec3<bool>(true, false, true), arg_0.x, Struct_1(vec3<bool>(false, true, false))).a.d.a, vec3<bool>(true, true, select(true, false, false))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 44201u), var_1.yw, vec2<u32>(86499u, 3253u)), firstLeadingBit(var_1.wy)), 21u)], func_2(vec3<bool>(true, true, all(vec3<bool>(true, true, false))), countOneBits(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 21u)], -82950i)), Struct_1(vec3<bool>(false, true, true))).a.d).a.d).a.d;
    let var_3 = _wgslsmith_add_i32(0i, 7448i | arg_0.x);
    return Struct_3(Struct_2(var_1.yxx, ~(select(var_1.yzy, var_1.xyx, var_2.a.x) << (countOneBits(var_1.xzw) % vec3<u32>(32u))), select(var_2.a.zx, vec2<bool>(var_2.a.x, true), all(vec3<bool>(var_2.a.x, var_2.a.x, false)) | !var_2.a.x), func_2(select(!var_2.a, vec3<bool>(var_2.a.x, false, var_2.a.x), var_2.a), arg_1.x, var_2).a.d), var_3);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = vec4<f32>(-381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(arg_0.a.a, func_2(arg_3.a.a, 2147483647i, arg_0.a.d).a.d, Struct_3(arg_0.a, global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)]), vec4<bool>(arg_1, arg_1, false, arg_1))))) * 2036f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)));
    var var_1 = true;
    var_1 = true;
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1644f - _wgslsmith_f_op_f32(global1.x - -502f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-348f, var_0.x)) - global1.x)), var_0.x, 938f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1902f, 313f, -352f, var_0.x))))));
    let var_2 = -vec3<i32>(abs(func_3(arg_3, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -769f)), arg_0.a.c.x, true)), 2147483647i, arg_2.x);
    return Struct_3(arg_0.a, select(-2147483647i, max(global0[_wgslsmith_index_u32(1u, 21u)], 42201i), -reverseBits(0i) < -var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)] & global0[_wgslsmith_index_u32(1147u, 21u)], 1i, func_1(global0[_wgslsmith_index_u32(0u, 21u)], vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_4(Struct_1(vec3<bool>(false, false, false))), vec3<bool>(true, false, false)))), vec4<i32>(global0[_wgslsmith_index_u32(~1749u, 21u)], -18839i, global0[_wgslsmith_index_u32(6799u, 21u)] | global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_sub_i32(7951i, global0[_wgslsmith_index_u32(~u_input.a, 21u)]))), false, vec2<i32>(global0[_wgslsmith_index_u32(33575u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)] | (global0[_wgslsmith_index_u32(u_input.a, 21u)] | global0[_wgslsmith_index_u32(u_input.a, 21u)])), Struct_4(Struct_1(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_sub_vec4_i32(~reverseBits(~(vec4<i32>(66076i, global0[_wgslsmith_index_u32(u_input.a, 21u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 21u)]) ^ vec4<i32>(5264i, global0[_wgslsmith_index_u32(0u, 21u)], 39351i, -21816i))), ~(~(vec4<i32>(var_0.b, global0[_wgslsmith_index_u32(9548u, 21u)], -32793i, 1i) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -33415i, var_0.b, var_0.b)) | vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 21u)], var_0.b), _wgslsmith_sub_i32(-2147483647i, var_0.b), global0[_wgslsmith_index_u32(90132u << (var_0.a.b.x % 32u), 21u)], func_6(Struct_3(Struct_2(var_0.a.a, var_0.a.a, vec2<bool>(var_0.a.c.x, var_0.a.c.x), Struct_1(var_0.a.d.a)), global0[_wgslsmith_index_u32(106499u, 21u)]), false, vec2<i32>(-31610i, -80708i), Struct_4(var_0.a.d)).b)));
    var var_2 = var_0.a.d.a.x;
    let var_3 = ~vec4<u32>(1u, ~40347u, ~var_0.a.a.x << (u_input.a % 32u), _wgslsmith_mult_u32(~var_0.a.b.x, _wgslsmith_div_u32(var_0.a.b.x, u_input.a))) >> (min(~select(vec4<u32>(88119u, var_0.a.b.x, 71496u, 53415u) & vec4<u32>(var_0.a.b.x, 0u, 0u, var_0.a.a.x), abs(vec4<u32>(u_input.a, 41064u, var_0.a.a.x, 0u)), !var_0.a.d.a.x), select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 4294967295u), vec4<u32>(var_0.a.a.x, 1u, u_input.a, 35997u)), ~(~vec4<u32>(4294967295u, var_0.a.a.x, 0u, 27074u)), vec4<bool>(true, var_0.a.c.x != var_0.a.d.a.x, func_5(var_1.xxy, vec4<i32>(-2147483647i, -2147483647i, -13447i, var_1.x)).a.d.a.x, var_0.a.c.x))) % vec4<u32>(32u));
    var var_4 = global1.x;
    global0 = array<i32, 21>();
    var var_5 = var_3.x;
    var var_6 = global1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~u_input.a, 1u) ^ ~(vec2<u32>(var_3.x, var_0.a.a.x) >> (vec2<u32>(var_3.x, u_input.a) % vec2<u32>(32u)))), countOneBits(abs(vec4<u32>(var_3.x, 3241u, var_0.a.a.x, 32847u) << (_wgslsmith_add_vec4_u32(var_3, vec4<u32>(0u, 0u, var_0.a.a.x, u_input.a)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-318f))) - var_6.x)), ~var_1.wx);
}

