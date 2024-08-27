struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(3618i, -1i), vec2<i32>(-1i, -50873i), vec2<i32>(-6844i, 0i), vec2<i32>(-1i, -12615i), vec2<i32>(9087i, -27054i), vec2<i32>(i32(-2147483648), 19671i), vec2<i32>(8386i, i32(-2147483648)), vec2<i32>(-1i, -2820i), vec2<i32>(18746i, i32(-2147483648)), vec2<i32>(-19611i, i32(-2147483648)), vec2<i32>(-5090i, -50599i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 12304i), vec2<i32>(19756i, -39620i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-5160i, -70960i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-17554i, 66i), vec2<i32>(16178i, 23411i));

var<private> global2: array<u32, 27> = array<u32, 27>(7921u, 35893u, 0u, 0u, 0u, 49226u, 4810u, 1u, 4294967295u, 0u, 28008u, 4294967295u, 0u, 0u, 87710u, 1u, 65815u, 57851u, 6763u, 4294967295u, 1u, 25992u, 0u, 88714u, 31112u, 2545u, 17118u);

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, 133f, 236f, vec4<bool>(false, true, true, false), vec4<f32>(-136f, -609f, 418f, -762f)), Struct_1(false, -768f, 354f, vec4<bool>(false, true, false, false), vec4<f32>(-1716f, 845f, -719f, -1000f)), Struct_1(true, -592f, 671f, vec4<bool>(false, false, false, false), vec4<f32>(758f, -1584f, -268f, 1442f)), Struct_1(true, -634f, 1702f, vec4<bool>(true, true, true, false), vec4<f32>(1302f, -1818f, -707f, 1073f)), Struct_1(false, -2172f, -1000f, vec4<bool>(false, false, true, false), vec4<f32>(1855f, 1144f, 908f, -527f)), Struct_1(true, 769f, -1647f, vec4<bool>(true, false, false, false), vec4<f32>(-451f, 662f, 117f, -617f)), Struct_1(true, 424f, 1042f, vec4<bool>(false, false, false, false), vec4<f32>(817f, 353f, -203f, -1000f)), Struct_1(true, -421f, 544f, vec4<bool>(false, true, true, false), vec4<f32>(457f, 1124f, -724f, -1286f)), Struct_1(false, -1483f, -1055f, vec4<bool>(true, false, false, true), vec4<f32>(446f, -1296f, 261f, -1055f)), Struct_1(false, -337f, -757f, vec4<bool>(false, false, false, true), vec4<f32>(-1481f, 1973f, -975f, -954f)), Struct_1(true, -1645f, -595f, vec4<bool>(true, false, false, false), vec4<f32>(1000f, -937f, 1380f, 927f)), Struct_1(true, -532f, -997f, vec4<bool>(true, true, false, false), vec4<f32>(247f, 1930f, -364f, 899f)), Struct_1(true, -650f, 331f, vec4<bool>(true, true, false, true), vec4<f32>(1256f, 990f, -1411f, 106f)), Struct_1(true, 378f, -887f, vec4<bool>(false, false, true, true), vec4<f32>(-2230f, 673f, 514f, -1588f)), Struct_1(false, -787f, 1000f, vec4<bool>(false, false, false, true), vec4<f32>(-296f, 234f, -1064f, 2036f)), Struct_1(true, 747f, -1403f, vec4<bool>(true, false, false, true), vec4<f32>(-675f, -184f, 183f, -1294f)), Struct_1(true, 1000f, 902f, vec4<bool>(true, true, true, true), vec4<f32>(-1935f, 2334f, -1000f, 1000f)), Struct_1(true, -580f, 109f, vec4<bool>(false, true, true, true), vec4<f32>(-1020f, -1345f, -1014f, 1114f)), Struct_1(false, -857f, -1051f, vec4<bool>(false, true, true, true), vec4<f32>(-110f, -1541f, 1189f, -2360f)), Struct_1(false, 360f, 1726f, vec4<bool>(false, false, false, true), vec4<f32>(1235f, -215f, 838f, 1168f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = true;
    var var_1 = Struct_1(false, -2076f, 702f, !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -498f, -502f, -726f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(134f, 1954f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1817f, -719f))))))));
    global2 = array<u32, 27>();
    global1 = array<vec2<i32>, 21>();
    var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 20u)];
    return abs(select(select(~vec3<u32>(global0.x, global2[_wgslsmith_index_u32(60257u, 27u)], 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 27u)], global0.x, 1u), select(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global0.x, global0.x), vec3<u32>(global0.x, 1u, u_input.d), vec3<bool>(var_1.d.x, var_1.a, true))), vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), select(~firstLeadingBit(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.e.x, 27u)], 1u)), select(min(vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(15978u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<u32>(43375u, global0.x, global2[_wgslsmith_index_u32(u_input.e.x, 27u)]), vec3<bool>(true, true, false)), vec3<bool>(true, true, !var_1.a)), var_1.d.x));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = vec3<u32>(3605u, u_input.e.x, ~(~_wgslsmith_clamp_u32(4294967295u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], 33457u << (global2[_wgslsmith_index_u32(10743u, 27u)] % 32u), u_input.c.x | 0u)));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(trunc(661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1165f, 418f)))) - 891f)), vec4<bool>(all(vec3<bool>(arg_0, false, arg_0)), true & arg_0, (firstTrailingBit(9040i) <= 1i) & true, any(vec4<bool>(true, all(vec4<bool>(true, false, arg_0, true)), arg_0 & arg_0, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1328f, -1000f, _wgslsmith_f_op_f32(step(-844f, 1742f))))));
    global1 = array<vec2<i32>, 21>();
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(reverseBits(15086u)), 20u)];
    global0 = abs(select(max(~(~u_input.c), var_0.yy), ~u_input.e, any(var_2.d)));
    return !var_1.d;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))), _wgslsmith_f_op_f32(exp2(arg_1)), -162f);
    global2 = array<u32, 27>();
    var var_1 = func_2(1003f);
    let var_2 = Struct_1(!any(vec2<bool>(true, true)), _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(f32(-1f) * -205f)), -544f, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, !(firstLeadingBit(arg_2) == ~1i)), var_0);
    global1 = array<vec2<i32>, 21>();
    return Struct_1(false, -1745f, 166f, func_3(all(select(var_2.d, !var_2.d, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(1055f, 530f, var_2.b, -162f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, vec4<f32>(var_0.x, -533f, 857f, -534f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    var var_0 = Struct_1(!arg_0.d.x, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1213f - 1270f))), !func_3(true), _wgslsmith_f_op_vec4_f32(-arg_0.e));
    let var_1 = func_1(u_input.e.x, _wgslsmith_f_op_f32(-var_0.c), abs(countOneBits(_wgslsmith_add_i32(-2642i, ~(-2147483647i)))));
    var var_2 = vec3<bool>(select(true, func_3(-809f <= _wgslsmith_f_op_f32(var_1.b - 964f)).x, true), any(vec4<bool>(!(false & var_1.d.x), true, var_1.a, func_1(_wgslsmith_dot_vec2_u32(u_input.e, u_input.b), _wgslsmith_f_op_f32(-948f * arg_1), ~(-1i)).d.x)), any(vec2<bool>(true, !arg_0.a)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 722f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -493f, arg_0.d.x && var_0.d.x)), var_1.b)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), ~global0.x), ~57486u), 20u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f - 1032f)), 778f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -154f, 256f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1394f)), _wgslsmith_f_op_f32(round(484f)), _wgslsmith_div_f32(-1168f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))));
    global2 = array<u32, 27>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(384f, _wgslsmith_f_op_f32(-291f + _wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x)), func_1(min(func_2(_wgslsmith_f_op_f32(arg_1.x + var_0.x)).x, 4294967295u), -1495f, _wgslsmith_clamp_i32(_wgslsmith_add_i32(min(2147483647i, 1i), 1i), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(970i, 2147483647i))).e.wwy);
    global0 = vec2<u32>(u_input.e.x, max(abs(reverseBits(4294967295u)), 1u));
    global1 = array<vec2<i32>, 21>();
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(~global0.x, 4294967295u, _wgslsmith_mult_u32(5975u, 4069u))), 27u)], ~(~u_input.a)), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(func_1(53461u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-512f * -1481f), _wgslsmith_f_op_f32(678f + -230f))), -1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1141f, -162f)), _wgslsmith_div_f32(973f, -1496f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(floor(-1223f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-150f, -2678f, -1013f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-510f, 2218f, 1203f))))))));
    let var_1 = var_0.d.x;
    global3 = array<Struct_1, 20>();
    let var_2 = !(!vec4<bool>(true, var_0.d.x, false, !func_5(var_0.e.xyy, var_0.e.zxz).a));
    let var_3 = any(!var_0.d.www);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec4<u32>(1u & u_input.a, ~global0.x, abs(global2[_wgslsmith_index_u32(u_input.a, 27u)]), global0.x & global0.x), vec4<u32>(~u_input.c.x, _wgslsmith_mult_u32(global0.x, 1u), ~17304u, 1u), vec4<bool>(true, true, !var_3, false))));
}

