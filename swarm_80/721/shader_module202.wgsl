struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-619f, -1900f, -277f, -1000f, 298f, 813f);

var<private> global1: array<f32, 11>;

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 16> = array<bool, 16>(true, false, true, true, true, true, false, false, false, true, false, true, true, false, true, false);

var<private> global4: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(66976u, 49599u, 18353u, 44730u), vec4<u32>(4294967295u, 3257u, global2.x, global2.x)), vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.c), vec3<u32>(u_input.a.x, 24271u, u_input.c)), _wgslsmith_sub_u32(4294967295u, 32172u), _wgslsmith_add_u32(6875u, 118358u)), ~(~vec4<u32>(0u, 0u, 4294967295u, global2.x)))), _wgslsmith_add_vec4_u32(reverseBits(abs(~vec4<u32>(0u, 56998u, 46015u, u_input.a.x))), ~(~vec4<u32>(global2.x, arg_0, u_input.a.x, global2.x)) | ((vec4<u32>(4294967295u, 26722u, arg_0, global2.x) >> (vec4<u32>(global2.x, u_input.c, arg_0, 51438u) % vec4<u32>(32u))) ^ (vec4<u32>(0u, 4294967295u, 10199u, global2.x) ^ vec4<u32>(4294967295u, arg_0, 1u, 0u)))));
    global0 = array<f32, 6>();
    global3 = array<bool, 16>();
    var var_1 = true;
    global1 = array<f32, 11>();
    return Struct_1(-25668i, vec2<u32>(24072u, ~(~global2.x)), arg_2.x, -521f);
}

fn func_3(arg_0: bool) -> u32 {
    global3 = array<bool, 16>();
    global4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(93681u, 11u)] - global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-869f)) - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 11u)]))), global4.x) * vec3<f32>(_wgslsmith_f_op_f32(-140f * 1024f), -1000f, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39019u, 6u)] * -199f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(756f)), global4.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(425f + global4.x), global1[_wgslsmith_index_u32(abs(func_1(global2.x, vec2<bool>(arg_0, arg_0), vec3<i32>(-29189i, -32i, u_input.b.x)).b.x), 11u)]))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -902f, 795f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-637f, -401f, global1[_wgslsmith_index_u32(global2.x, 11u)]), vec3<f32>(global4.x, global0[_wgslsmith_index_u32(1u, 6u)], -199f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(62816u, 11u)], 1059f, global4.x) * vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 6u)], 768f, 426f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + global4.x), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1430f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-669f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global4.x))) - vec3<f32>(global4.x, global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(29514u, 11u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, -565f, 258f) * vec3<f32>(537f, global4.x, -1379f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 646f, global1[_wgslsmith_index_u32(0u, 11u)]))))))));
    let var_1 = Struct_1(u_input.e, ~max(u_input.a, u_input.a), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.d.x), max(-1i, u_input.d.x)), u_input.e, 106563i) & firstLeadingBit(~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(7589u, 11u)], -1076f, true))) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28809u, 6u)] * global1[_wgslsmith_index_u32(global2.x, 11u)]))) * -227f));
    return ~_wgslsmith_sub_u32(~(~u_input.c), global2.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.b.x;
    let var_1 = ~(~_wgslsmith_mod_u32(func_3(any(vec3<bool>(false, false, true))), select(arg_1.b.x, arg_0, true)));
    return func_1(var_1, select(!select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(arg_0, 16u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(global2.x, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(15605u, 16u)])), !vec2<bool>(true, global3[_wgslsmith_index_u32(~var_1, 16u)]), vec2<bool>(!any(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], true)), true | any(vec3<bool>(false, true, true)))), u_input.d);
}

fn func_2() -> i32 {
    let var_0 = func_4(u_input.c << (~_wgslsmith_sub_u32(firstLeadingBit(0u), func_3(false)) % 32u), func_1(1u, !select(vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(u_input.c, 16u)]), 73944u < global2.x), firstLeadingBit(-(~vec3<i32>(u_input.d.x, u_input.b.x, u_input.d.x)))));
    let var_1 = func_4(select(max(max(63656u, u_input.c), _wgslsmith_div_u32(_wgslsmith_sub_u32(8916u, global2.x), u_input.c)), var_0.b.x, true), func_4(~reverseBits(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x)), func_1(countOneBits(_wgslsmith_add_u32(var_0.b.x, u_input.c)), !select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], true), vec2<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 16u)], false), vec2<bool>(global3[_wgslsmith_index_u32(44171u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)])), vec3<i32>(_wgslsmith_mod_i32(29964i, var_0.c), firstLeadingBit(-80632i), _wgslsmith_sub_i32(var_0.a, -7880i)))));
    global2 = ~((~(u_input.a << (u_input.a % vec2<u32>(32u))) ^ vec2<u32>(~u_input.c, u_input.c)) | var_1.b);
    global2 = vec2<u32>(4294967295u, var_0.b.x | u_input.a.x);
    var var_2 = Struct_1(-6076i, ~countOneBits(abs(var_1.b)) & min(var_1.b, max(var_0.b, var_1.b)), -(max(func_4(var_1.b.x, var_0).c, var_1.c) ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(2524i, var_0.a), 2147483647i)), -1412f);
    return 1i;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_4(select(16108u, 4538u, !global3[_wgslsmith_index_u32(~global2.x, 16u)] | global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, 4294967295u) << (_wgslsmith_add_u32(56386u, arg_0.b.x) % 32u), 16u)]), Struct_1(_wgslsmith_mod_i32(26221i, 2147483647i), ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(arg_1.x, 71409u)), vec2<u32>(global2.x, global2.x)), -(_wgslsmith_sub_i32(arg_0.a, 0i) << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(global2.x, vec2<bool>(true, false), u_input.b.wxy).d, _wgslsmith_f_op_f32(-996f - arg_0.d), arg_3.x)) * _wgslsmith_f_op_f32(max(-1079f, -1501f)))));
    var_0 = Struct_1(firstTrailingBit(select(_wgslsmith_sub_i32(26548i, i32(-1i) * -19291i), -43426i, arg_3.x)), _wgslsmith_clamp_vec2_u32(arg_0.b, ~max(firstLeadingBit(arg_1.yx), var_0.b), (vec2<u32>(arg_1.x, global2.x) >> (vec2<u32>(u_input.c, arg_0.b.x) % vec2<u32>(32u))) | arg_0.b), arg_0.c, 1508f);
    let var_1 = global3[_wgslsmith_index_u32(var_0.b.x, 16u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(global4.x + -1867f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(73745u, 11u)] - global0[_wgslsmith_index_u32(arg_1.x, 6u)]) - _wgslsmith_f_op_f32(arg_0.d - arg_0.d)), global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 11u)], 325f)), _wgslsmith_f_op_f32(-var_0.d)))));
    let var_3 = func_1(~(~arg_1.x), arg_3.xy, u_input.b.xyw);
    return func_4(arg_0.b.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(56125u, vec2<bool>(global3[_wgslsmith_index_u32(global2.x & u_input.c, 16u)] & global3[_wgslsmith_index_u32(0u, 16u)], false), u_input.b.xww), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(22798u, 7334u, 1u), ~vec3<u32>(u_input.a.x, 4294967295u, 10503u)), ~countOneBits(vec3<u32>(global2.x, 4294967295u, 1u))), func_2() == 2147483647i, !(!(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)])))));
    let var_1 = _wgslsmith_mult_u32(min(global2.x, _wgslsmith_clamp_u32(~28232u, 1u, ~var_0.b.x)) << (_wgslsmith_mult_u32(~4294967295u | _wgslsmith_mult_u32(global2.x, 0u), ~(global2.x << (var_0.b.x % 32u))) % 32u), 1u);
    var var_2 = select(any(!select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(19079u, 16u)], global3[_wgslsmith_index_u32(1759u, 16u)], true), vec3<bool>(global3[_wgslsmith_index_u32(39460u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)], true))), true, true) || select(!all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.b.x, 16u)], true), vec3<bool>(true, true, global3[_wgslsmith_index_u32(32790u, 16u)]), vec3<bool>(false, true, false))), any(vec4<bool>(select(false, true, true), false, true, any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 16u)], true, global3[_wgslsmith_index_u32(var_0.b.x, 16u)])))), true);
    var var_3 = func_5(func_4(~_wgslsmith_mult_u32(~u_input.c, 1u), Struct_1(10553i, _wgslsmith_mult_vec2_u32(u_input.a, u_input.a), min(~(-2147483647i), 15038i), -581f)), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 0u, var_0.b.x), ~vec3<u32>(4294967295u, 23725u, u_input.c)), select(countOneBits(vec3<u32>(global2.x, 4294967295u, global2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1, global2.x), vec3<u32>(1u, global2.x, u_input.c)) >> (abs(vec3<u32>(49469u, 41441u, global2.x)) % vec3<u32>(32u)), !all(vec2<bool>(true, true)))), !all(select(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], global3[_wgslsmith_index_u32(var_0.b.x, 16u)]), select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(69596u, 16u)], global3[_wgslsmith_index_u32(var_1, 16u)]), true))), select(vec3<bool>(~var_0.b.x <= 34469u, (true || global3[_wgslsmith_index_u32(var_1, 16u)]) && any(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], true)), !all(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 16u)], false))), !(!vec3<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 16u)], false, global3[_wgslsmith_index_u32(55308u, 16u)])), !(-593f != var_0.d)));
    var var_4 = abs(vec3<u32>(23518u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 87569u, 1u), abs(vec3<u32>(44212u, u_input.a.x, 1u))), ~min(vec3<u32>(u_input.c, var_3.b.x, 0u), vec3<u32>(4294967295u, var_0.b.x, var_1))), ~func_1(1u, vec2<bool>(true, false), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(-5436i, u_input.d.x, 1i))).b.x));
    var var_5 = ~(-var_3.c);
    var var_6 = func_4(~59012u, func_5(func_1(~(4294967295u >> (var_4.x % 32u)), vec2<bool>(false, !global3[_wgslsmith_index_u32(var_3.b.x, 16u)]), min(vec3<i32>(-6863i, -47866i, var_0.a), _wgslsmith_clamp_vec3_i32(u_input.b.xwz, u_input.d, u_input.b.xxy))), vec3<u32>(var_1 | 4294967295u, _wgslsmith_clamp_u32(53795u, var_4.x, var_4.x), min(var_3.b.x, 8770u)) | vec3<u32>(3309u, u_input.c, 4294967295u), all(vec3<bool>(any(vec3<bool>(false, global3[_wgslsmith_index_u32(var_4.x, 16u)], false)), global3[_wgslsmith_index_u32(var_4.x, 16u)], any(vec2<bool>(global3[_wgslsmith_index_u32(var_1, 16u)], true)))), !vec3<bool>(!global3[_wgslsmith_index_u32(22228u, 16u)], all(vec4<bool>(global3[_wgslsmith_index_u32(var_1, 16u)], true, true, global3[_wgslsmith_index_u32(4294967295u, 16u)])), var_0.d == var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c, abs(firstLeadingBit(var_4.yz)));
}

