struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1406f, 465f, 595f, -1024f, 958f, 1000f, 1000f, -1315f, -457f, -766f, 938f, -2313f);

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(12609u, 0u, 4294967295u, 87841u), vec4<u32>(1u, 14506u, 1u, 0u), vec4<u32>(3853u, 1u, 28899u, 49291u), vec4<u32>(28025u, 34350u, 4294967295u, 0u), vec4<u32>(207u, 38464u, 4294967295u, 4294967295u), vec4<u32>(79656u, 0u, 35874u, 1u), vec4<u32>(14387u, 22000u, 0u, 1u), vec4<u32>(26723u, 8242u, 4294967295u, 996u), vec4<u32>(4294967295u, 24086u, 4294967295u, 6380u), vec4<u32>(81994u, 122363u, 1u, 25921u), vec4<u32>(40320u, 52584u, 58771u, 46947u), vec4<u32>(10418u, 0u, 1u, 71161u), vec4<u32>(0u, 0u, 0u, 53690u), vec4<u32>(2625u, 0u, 22162u, 0u), vec4<u32>(60887u, 5916u, 23895u, 34128u), vec4<u32>(1u, 1u, 1u, 56878u), vec4<u32>(0u, 4294967295u, 80569u, 4738u), vec4<u32>(16345u, 74704u, 17729u, 17967u), vec4<u32>(0u, 60286u, 50806u, 1u), vec4<u32>(4294967295u, 33546u, 34921u, 0u), vec4<u32>(1u, 4294967295u, 51248u, 26872u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1((-54780i >= u_input.c) | (true && (385f == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 12u)]))), arg_3.a, arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 58485u, u_input.b, 4294967295u), ~global3[_wgslsmith_index_u32(arg_2, 21u)]), 12u)] + -461f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x))), arg_3.a.x), -2147483647i);
    global2 = array<vec4<i32>, 32>();
    var var_1 = 1i;
    var var_2 = true;
    let var_3 = min(_wgslsmith_mult_vec3_u32(~max(arg_0, vec3<u32>(u_input.d, var_0.c, 0u)), vec3<u32>(28706u, _wgslsmith_mod_u32(u_input.b, 0u), reverseBits(arg_0.x))) & arg_0, arg_0);
    return arg_3.a;
}

fn func_2() -> Struct_2 {
    global3 = array<vec4<u32>, 21>();
    global3 = array<vec4<u32>, 21>();
    var var_0 = u_input.d;
    global3 = array<vec4<u32>, 21>();
    let var_1 = Struct_1(!(!all(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], -1219f) - vec4<f32>(-995f, global0[_wgslsmith_index_u32(2841u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, global0[_wgslsmith_index_u32(u_input.b, 12u)], 1532f, global0[_wgslsmith_index_u32(u_input.b, 12u)]) * vec4<f32>(-544f, global0[_wgslsmith_index_u32(4294967295u, 12u)], -2290f, global0[_wgslsmith_index_u32(1u, 12u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1146f, 1117f, global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec4<f32>(186f, 685f, global0[_wgslsmith_index_u32(u_input.b, 12u)], 1893f), vec4<bool>(true, false, false, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~vec3<u32>(3124u, 0u, 59526u), _wgslsmith_mod_i32(u_input.c, u_input.c), 8209u, Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(12922u, 12u)], 1259f, global0[_wgslsmith_index_u32(u_input.d, 12u)], 1394f)))))), u_input.d, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global0[_wgslsmith_index_u32(~select(0u, 4294967295u, false), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30301u, 12u)]) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 12u)], 1586f))))), 36865i);
    return Struct_2(var_1.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(284f + _wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -909f)));
    var var_1 = any(vec3<bool>(!(~(-12387i) <= max(-1i, u_input.c)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true))), all(vec4<bool>(true, true, true, true))));
    var var_2 = arg_1.a;
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.b, 54745u) ^ vec4<u32>(u_input.b, 89338u, 71615u, u_input.d), ~vec4<u32>(3197u, 1u, u_input.d, u_input.b))), firstTrailingBit(firstLeadingBit(max(vec2<u32>(u_input.d, u_input.b), vec2<u32>(90153u, u_input.b))))) & min(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(~u_input.d, u_input.b)), vec2<u32>(u_input.b, 1u));
    let var_4 = arg_3;
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = arg_1.c;
    global3 = array<vec4<u32>, 21>();
    var var_1 = func_4(arg_0.d.xx, func_2(), func_2(), func_2());
    return select(vec4<bool>(true, true, arg_0.a, arg_0.a), select(!vec4<bool>(all(vec3<bool>(arg_1.a, false, arg_1.a)), true, false, !arg_1.a), select(!vec4<bool>(false, false, false, arg_0.a), !select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(true, true, true, arg_0.a), arg_0.a), arg_1.a), arg_0.a), !all(vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.d, 12u)], 485f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62428u, 12u)]), global0[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 1659f, global0[_wgslsmith_index_u32(u_input.d, 12u)], -185f), vec4<f32>(-477f, 339f, -758f, -1242f), vec4<bool>(true, true, false, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(257f, global0[_wgslsmith_index_u32(u_input.d, 12u)], 131f, -824f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(step(-488f, 127f)), -356f)), select(select(func_1(Struct_1(false, vec4<f32>(540f, 115f, global0[_wgslsmith_index_u32(79096u, 12u)], global0[_wgslsmith_index_u32(20318u, 12u)]), u_input.d, vec3<f32>(-423f, -1392f, global0[_wgslsmith_index_u32(u_input.d, 12u)]), -3391i), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(40407u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], -1405f), u_input.d, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), 7300i), vec2<i32>(u_input.a, u_input.a)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))))), _wgslsmith_sub_u32((u_input.b & _wgslsmith_sub_u32(1u, u_input.d)) >> (76612u % 32u), u_input.d), _wgslsmith_f_op_vec3_f32(-func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 310f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1933f) * vec2<f32>(-1116f, global0[_wgslsmith_index_u32(u_input.b, 12u)]))), func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(-277f, 483f))), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], 1038f, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)])), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], -1620f, 1057f, global0[_wgslsmith_index_u32(31509u, 12u)])), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], -693f, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))), func_2(), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 424f, global0[_wgslsmith_index_u32(87525u, 12u)], 1826f))).a.yxy), u_input.c);
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.xz, _wgslsmith_f_op_vec2_f32(-var_0.d.zx))), func_2(), func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.b, var_0.c, 1u), -50233i, var_0.c, Struct_2(var_0.b))).yw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-331f, -1322f))), vec2<f32>(1671f, -712f))), func_2(), func_4(_wgslsmith_f_op_vec2_f32(select(var_0.b.ww, var_0.b.zy, vec2<bool>(var_0.a, false))), func_4(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.b, var_0.c, u_input.b), -31296i, 32034u, Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], var_0.b.x, -1918f, 1684f)))).wx, Struct_2(vec4<f32>(-1010f, var_0.b.x, -175f, global0[_wgslsmith_index_u32(u_input.d, 12u)])), func_2(), func_4(vec2<f32>(2288f, global0[_wgslsmith_index_u32(1u, 12u)]), Struct_2(vec4<f32>(var_0.d.x, global0[_wgslsmith_index_u32(var_0.c, 12u)], var_0.b.x, var_0.b.x)), Struct_2(var_0.b), Struct_2(var_0.b))), func_4(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(71632u, var_0.c, u_input.d), 1i, u_input.d, Struct_2(var_0.b))).wy, func_2(), func_4(vec2<f32>(1013f, -603f), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 12u)], 639f, global0[_wgslsmith_index_u32(0u, 12u)], var_0.b.x)), Struct_2(vec4<f32>(2117f, 1123f, var_0.d.x, global0[_wgslsmith_index_u32(9280u, 12u)])), Struct_2(vec4<f32>(185f, global0[_wgslsmith_index_u32(var_0.c, 12u)], 783f, 776f))), Struct_2(var_0.b)), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-354f, -744f, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(var_0.c, 12u)]), var_0.b))), func_2()), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.c, 12u)], _wgslsmith_f_op_f32(-var_0.b.x)) * vec2<f32>(1355f, -992f)), Struct_2(vec4<f32>(-970f, _wgslsmith_f_op_f32(var_0.d.x * global0[_wgslsmith_index_u32(var_0.c, 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(74179u, 12u)]))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 12u)]), -792f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.c, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), -313f)), func_4(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.d.x, global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.d, 12u)]))), func_2(), func_2(), Struct_2(var_0.b))));
    var var_2 = 43618u;
    let var_3 = vec2<i32>(~_wgslsmith_add_i32(u_input.a, 50205i), -(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, 0i, -2147483647i), u_input.a, -1i) | abs(-2147483647i)));
    global2 = array<vec4<i32>, 32>();
    var var_4 = Struct_1(select(var_0.a, false, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.a))), ~abs(var_0.c), var_0.d, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.c, 4294967295u, var_0.c), vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(0u, var_0.c)), var_4.c, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1894u, u_input.d, var_0.c) & vec3<u32>(var_0.c, 1u, u_input.b), ~vec3<u32>(var_4.c, 76294u, 1u)))), 21u)], _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, 2147483647i)), var_4.e), ~firstTrailingBit(var_3.x)));
}

