struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 76832u, 1u, 0u, 1u, 61270u, 1u, 0u, 0u, 62019u, 71383u, 1u, 122708u, 1u, 4294967295u, 8530u, 1u, 21192u, 132257u, 4294967295u, 9225u, 1u, 1u, 1u, 0u, 0u, 0u, 6297u, 1u, 0u, 5733u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> bool {
    global0 = array<u32, 31>();
    var var_0 = vec4<u32>(~global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(~40669u, 31u)], arg_3, _wgslsmith_add_u32(1u, ~(~arg_3) >> (~abs(0u) % 32u)));
    global0 = array<u32, 31>();
    var var_1 = Struct_3(Struct_2(countOneBits(~(global0[_wgslsmith_index_u32(arg_3, 31u)] >> (var_0.x % 32u))), Struct_1(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, false), arg_0), !vec3<bool>(arg_0, true, true), arg_0), 4294967295u, var_0.x, true, abs(_wgslsmith_sub_u32(11447u, var_0.x))), Struct_1(!(!vec3<bool>(arg_0, true, true)), firstLeadingBit(~arg_3), abs(~1u), false, ~(arg_3 << (var_0.x % 32u))), Struct_1(vec3<bool>(arg_0 & true, any(vec2<bool>(arg_0, arg_0)), true), 1u, _wgslsmith_dot_vec3_u32(abs(var_0.yyw), firstLeadingBit(vec3<u32>(1u, arg_3, 0u))), !(false & arg_0), 17623u), vec3<u32>(reverseBits(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)]), var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.zy, vec2<u32>(global0[_wgslsmith_index_u32(46947u, 31u)], arg_3), vec2<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 7775u)), firstTrailingBit(var_0.wz)))));
    let var_2 = Struct_3(Struct_2(4294967295u, var_1.a.d, Struct_1(vec3<bool>(false, true, arg_0), 48246u, 767u, false, max(~global0[_wgslsmith_index_u32(var_0.x, 31u)], 4294967295u)), var_1.a.b, vec3<u32>(max(global0[_wgslsmith_index_u32(9948u, 31u)] | 24317u, _wgslsmith_mult_u32(var_0.x, 1u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_1.a.e.yy), firstLeadingBit(1u)), var_1.a.a)));
    return any(!var_1.a.c.a);
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f - 535f))));
    global0 = array<u32, 31>();
    var var_1 = select(!(!vec2<bool>(arg_0.b.d, false)), arg_0.d.a.yz, any(vec4<bool>(arg_0.b.b <= arg_0.e.x, arg_0.c.d, arg_0.b.a.x, true == arg_0.c.a.x)));
    var var_2 = Struct_3(arg_0);
    let var_3 = Struct_3(arg_0);
    return any(select(!select(vec4<bool>(false, var_2.a.d.a.x, var_1.x, var_2.a.d.d), !vec4<bool>(false, false, arg_0.b.d, false), select(vec4<bool>(false, arg_0.b.a.x, var_1.x, false), vec4<bool>(true, true, var_2.a.c.d, true), var_3.a.b.d)), vec4<bool>(true, select(true, arg_0.c.d, false), any(!var_3.a.c.a), func_3(!arg_0.d.d, vec2<i32>(u_input.a, u_input.a), 5884i, var_3.a.c.c)), true));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    global0 = array<u32, 31>();
    let var_0 = arg_3.a.e;
    let var_1 = select(vec4<bool>(func_2(Struct_2(abs(1u), Struct_1(arg_2.a.d.a, arg_2.a.a, arg_3.a.b.b, arg_1.x, 4294967295u), Struct_1(arg_2.a.b.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20313u, 31u)], 31u)], arg_1.x, var_0.x), Struct_1(vec3<bool>(arg_1.x, true, true), arg_3.a.e.x, 1u, arg_1.x, 17752u), ~arg_3.a.e)), true, arg_3.a.c.a.x, 695f > arg_0), !(!select(select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(arg_3.a.d.d, true, false, arg_3.a.d.a.x), false), select(vec4<bool>(arg_2.a.d.d, false, true, arg_2.a.d.d), vec4<bool>(true, arg_3.a.d.d, arg_2.a.d.d, false), vec4<bool>(arg_3.a.c.d, true, false, false)), !vec4<bool>(arg_3.a.d.a.x, arg_1.x, arg_1.x, arg_1.x))), select(!(!vec4<bool>(false, arg_3.a.b.d, arg_2.a.c.a.x, false)), vec4<bool>(arg_2.a.b.d, arg_3.a.c.d, any(arg_1), func_2(arg_2.a)), select(vec4<bool>(false, !arg_1.x, true, arg_1.x), !select(vec4<bool>(false, arg_1.x, false, arg_2.a.d.a.x), vec4<bool>(arg_2.a.d.a.x, false, arg_3.a.b.d, arg_3.a.b.d), arg_2.a.b.d), vec4<bool>(arg_2.a.c.d, arg_0 <= arg_0, arg_2.a.c.d, arg_2.a.c.d))));
    let var_2 = !select(arg_2.a.b.a.xz, !(!(!var_1.yy)), vec2<bool>(true, true));
    global0 = array<u32, 31>();
    return arg_3.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(-2417f, vec2<bool>(false, !(func_2(Struct_2(4294967295u, Struct_1(vec3<bool>(arg_0.x, false, arg_0.x), 1u, 34645u, false, global0[_wgslsmith_index_u32(1u, 31u)]), Struct_1(vec3<bool>(true, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(41746u, 31u)], arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(vec3<bool>(arg_0.x, false, false), 52253u, global0[_wgslsmith_index_u32(4294967295u, 31u)], false, global0[_wgslsmith_index_u32(0u, 31u)]), vec3<u32>(25706u, global0[_wgslsmith_index_u32(38307u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]))) & arg_0.x)), Struct_3(Struct_2(4294967295u, Struct_1(vec3<bool>(arg_0.x, true, false), 3839u << (1u % 32u), global0[_wgslsmith_index_u32(0u, 31u)] >> (1u % 32u), true, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1587u, 31u)], 31u)])), Struct_1(!vec3<bool>(false, true, arg_0.x), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85825u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)]), 1u >> (global0[_wgslsmith_index_u32(7164u, 31u)] % 32u), true, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18661u, 31u)], 31u)], 1u)), Struct_1(vec3<bool>(arg_0.x, arg_0.x, false), global0[_wgslsmith_index_u32(~4294967295u, 31u)], 4294967295u, arg_0.x | true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(6568u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]), 31u)]), max(~vec3<u32>(72425u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 1u), vec3<u32>(1u, 11118u, global0[_wgslsmith_index_u32(21267u, 31u)])))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 31u)], Struct_1(!vec3<bool>(false, true, arg_0.x), reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)]), 1u, select(true, arg_0.x, arg_0.x), ~11982u), Struct_1(!vec3<bool>(arg_0.x, arg_0.x, true), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], ~global0[_wgslsmith_index_u32(102543u, 31u)], arg_0.x, 1u), Struct_1(vec3<bool>(arg_0.x, arg_0.x, true), global0[_wgslsmith_index_u32(0u, 31u)] | 63355u, ~75484u, !arg_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]), _wgslsmith_add_vec3_u32(vec3<u32>(60945u, 4294967295u, 1u), vec3<u32>(0u, global0[_wgslsmith_index_u32(567u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])) & firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 4294967295u, 21322u)))));
    let var_1 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1085f)))), select(vec2<bool>(any(vec2<bool>(arg_0.x, var_0.c.d)), arg_0.x), var_0.b.a.xz, select(vec2<bool>(true, true), func_4(-658f, select(vec2<bool>(false, true), arg_0, var_0.b.a.xx), Struct_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70028u, 31u)], 31u)], 31u)], Struct_1(var_0.b.a, global0[_wgslsmith_index_u32(var_0.b.b, 31u)], 0u, arg_0.x, global0[_wgslsmith_index_u32(1u, 31u)]), var_0.b, var_0.b, vec3<u32>(var_0.d.e, 46153u, global0[_wgslsmith_index_u32(51037u, 31u)]))), Struct_3(Struct_2(var_0.d.b, var_0.c, var_0.b, var_0.d, vec3<u32>(global0[_wgslsmith_index_u32(var_0.e.x, 31u)], 0u, 1u)))).c.a.yy, func_4(-1023f, vec2<bool>(true, false), Struct_3(Struct_2(1u, Struct_1(vec3<bool>(true, var_0.b.a.x, true), 26844u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d.b, 31u)], 31u)], var_0.d.a.x, var_0.a), Struct_1(vec3<bool>(arg_0.x, false, var_0.c.a.x), global0[_wgslsmith_index_u32(4246u, 31u)], 0u, false, var_0.b.b), Struct_1(vec3<bool>(arg_0.x, false, true), 19150u, 1u, var_0.b.d, 57124u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 31u)], 76893u))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(vec3<bool>(var_0.d.a.x, var_0.b.a.x, false), var_0.a, global0[_wgslsmith_index_u32(4294967295u, 31u)], true, 4700u), var_0.d, var_0.c, var_0.e))).c.a.xy)), Struct_3(Struct_2(_wgslsmith_add_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.c, 31u)], 31u)]), _wgslsmith_dot_vec2_u32(var_0.e.zy, var_0.e.yy)), var_0.d, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1359f), vec2<bool>(true, true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(41582u, 31u)], Struct_1(var_0.b.a, 0u, 113532u, arg_0.x, var_0.e.x), Struct_1(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(13047u, 31u)], var_0.e.x, var_0.b.d, 17100u), Struct_1(var_0.d.a, 4294967295u, 4294967295u, false, var_0.c.b), vec3<u32>(var_0.e.x, global0[_wgslsmith_index_u32(var_0.a, 31u)], 52531u))), Struct_3(Struct_2(21367u, Struct_1(var_0.c.a, var_0.a, 23554u, var_0.c.d, 1u), var_0.d, Struct_1(var_0.b.a, 71078u, var_0.a, arg_0.x, 43185u), var_0.e))).c, var_0.c, var_0.e ^ vec3<u32>(112471u, 1u, var_0.d.b))), Struct_3(func_4(_wgslsmith_div_f32(-1096f, -1148f), func_4(_wgslsmith_f_op_f32(f32(-1f) * -777f), arg_0, Struct_3(Struct_2(56266u, var_0.c, Struct_1(var_0.c.a, global0[_wgslsmith_index_u32(4294967295u, 31u)], 0u, var_0.c.a.x, 4294967295u), var_0.c, var_0.e)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.e, 31u)], 31u)], Struct_1(vec3<bool>(var_0.d.d, var_0.c.d, var_0.c.a.x), 9713u, global0[_wgslsmith_index_u32(14305u, 31u)], arg_0.x, global0[_wgslsmith_index_u32(18603u, 31u)]), Struct_1(var_0.c.a, 30579u, var_0.d.e, false, 4294967295u), Struct_1(vec3<bool>(false, arg_0.x, var_0.c.d), var_0.b.b, global0[_wgslsmith_index_u32(var_0.a, 31u)], var_0.c.d, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<u32>(var_0.d.c, var_0.a, global0[_wgslsmith_index_u32(66669u, 31u)])))).c.a.xz, Struct_3(func_4(-800f, vec2<bool>(var_0.c.d, var_0.b.a.x), Struct_3(Struct_2(global0[_wgslsmith_index_u32(108518u, 31u)], var_0.b, var_0.d, Struct_1(vec3<bool>(false, var_0.d.d, var_0.d.d), var_0.b.c, var_0.d.b, true, 0u), var_0.e)), Struct_3(Struct_2(var_0.e.x, Struct_1(var_0.b.a, 14113u, var_0.b.c, arg_0.x, var_0.c.c), var_0.d, Struct_1(vec3<bool>(true, arg_0.x, false), 6015u, global0[_wgslsmith_index_u32(78967u, 31u)], true, 42739u), var_0.e)))), Struct_3(Struct_2(0u, var_0.d, Struct_1(var_0.b.a, var_0.c.b, 1u, false, 0u), Struct_1(var_0.d.a, var_0.e.x, var_0.a, var_0.b.d, global0[_wgslsmith_index_u32(var_0.b.e, 31u)]), var_0.e)))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(~(abs(1u) >> (global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(0u, 31u)], 1u), 31u)] % 32u)), func_1(vec2<bool>(false, any(vec2<bool>(true, true)))), Struct_1(vec3<bool>(func_4(-1000f, vec2<bool>(false, true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], Struct_1(vec3<bool>(false, false, false), 41810u, 4294967295u, true, 4294967295u), Struct_1(vec3<bool>(true, true, true), 45628u, global0[_wgslsmith_index_u32(29411u, 31u)], true, 4294967295u), Struct_1(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20273u, 31u)], 31u)], 31u)], 31255u, false, global0[_wgslsmith_index_u32(39651u, 31u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24588u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 10896u))), Struct_3(Struct_2(59533u, Struct_1(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(792u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 0u, false, 1506u), Struct_1(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5006u, 31u)], 31u)], 31u)], 3048u, false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]), Struct_1(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(33049u, 31u)], 54412u, true, 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 33240u, 27248u)))).d.a.x, false, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 104917u, !func_3(false, vec2<i32>(26787i, -2147483647i), -24617i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9135u, 31u)], 31u)]), _wgslsmith_add_u32(4294967295u, select(1u, global0[_wgslsmith_index_u32(1u, 31u)], false))), func_4(-365f, select(vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 31u)], Struct_1(vec3<bool>(true, false, false), 25055u, 86356u, true, 28405u), Struct_1(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(12281u, 31u)], 33847u, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(1u, 31u)], 66072u, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71584u, 31u)], 31u)]), vec3<u32>(1u, 4294967295u, 0u))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(31390u, 31u)], Struct_1(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(7086u, 31u)], 4294967295u, false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)]), Struct_1(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49214u, 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], false, 57115u), Struct_1(vec3<bool>(false, false, false), 72928u, 47390u, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56605u, 31u)], 31u)], 31u)], 31u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 34204u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28019u, 31u)], 31u)])))).b, ~firstTrailingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 31u)], 15547u))));
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.a.c.b, var_0.a.c.e), -1i, _wgslsmith_f_op_f32(f32(-1f) * -1590f));
}

