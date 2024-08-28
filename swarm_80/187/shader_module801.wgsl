struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(130f, -221f, 1029f, -643f, -188f, -116f, -1011f, -1320f, 2083f);

var<private> global1: array<u32, 7> = array<u32, 7>(0u, 1u, 72423u, 0u, 4294967295u, 1u, 4294967295u);

var<private> global2: array<f32, 26> = array<f32, 26>(-1122f, 637f, -1870f, 357f, 315f, -1330f, 231f, -459f, 779f, -2113f, -928f, 233f, -905f, 1309f, -230f, -108f, 671f, 169f, -423f, 1004f, 1608f, -149f, 1000f, 173f, 1327f, 1000f);

var<private> global3: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(898f, -1993f), vec2<f32>(-242f, -417f), vec2<f32>(2296f, 710f), vec2<f32>(1238f, -1032f), vec2<f32>(126f, -930f), vec2<f32>(762f, -495f), vec2<f32>(-917f, -1573f), vec2<f32>(1585f, -699f), vec2<f32>(-1132f, 1960f), vec2<f32>(366f, -2170f), vec2<f32>(-411f, -428f), vec2<f32>(239f, 1000f), vec2<f32>(-994f, -1811f), vec2<f32>(-797f, 1419f), vec2<f32>(292f, 342f), vec2<f32>(374f, 124f), vec2<f32>(-835f, 1043f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = true;
    var var_1 = -u_input.b.x;
    global3 = array<vec2<f32>, 17>();
    let var_2 = global1[_wgslsmith_index_u32(3110u, 7u)];
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(select(-8928i, 1i, var_0), firstTrailingBit(-22108i)), firstLeadingBit(arg_2.d.b.zx) | _wgslsmith_div_vec2_i32(vec2<i32>(15899i, -9181i), vec2<i32>(1i, -11828i))), -26802i), u_input.a.zy);
    return select(!vec4<bool>(all(vec4<bool>(true, false, var_0, true)), var_0, false, all(vec2<bool>(var_0, var_0))), !vec4<bool>(var_0, !var_0, true, false), select(!(!select(vec4<bool>(false, true, var_0, true), vec4<bool>(var_0, var_0, var_0, false), var_0)), vec4<bool>(any(!vec3<bool>(false, var_0, var_0)), var_0, var_0, false), false));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    global1 = array<u32, 7>();
    var var_0 = arg_1.x;
    global2 = array<f32, 26>();
    let var_1 = vec4<f32>(-1289f, _wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(18159u, 26u)], arg_0)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 26u)], 615f)) + -204f)))), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3099u, 7u)], 26u)]);
    var var_2 = u_input.a.yz;
    return Struct_4(_wgslsmith_f_op_f32(1392f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(80967u, 26u)])), Struct_1(abs(-2147483647i), 2147483647i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 9u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, 166f) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 26u)] * 469f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1188f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 26u)] - -1000f), var_1.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~0u, 7u)], 9u)], _wgslsmith_f_op_f32(-1694f * global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73806u, 7u)], 26u)]))))), Struct_1(var_2.x, -arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(452f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3023u, 7u)], 7u)], 9u)]))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(964f - -166f), 747f)), _wgslsmith_f_op_vec4_f32(abs(var_1))), !select(func_3(~0i, vec3<i32>(3742i, arg_1.x, 29508i), Struct_3(Struct_1(-2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(14996u, 9u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(115376u, 7u)], 26u)], var_1), 1388f, -740f, Struct_2(-1i, u_input.a, var_1.wzw, global1[_wgslsmith_index_u32(314u, 7u)]), 0i)), select(vec4<bool>(true, true, false, false), func_3(13310i, vec3<i32>(-2147483647i, arg_1.x, var_2.x), Struct_3(Struct_1(u_input.b.x, -1485i, global2[_wgslsmith_index_u32(54624u, 26u)], -205f, vec4<f32>(-460f, global2[_wgslsmith_index_u32(49323u, 26u)], -223f, -476f)), 1559f, -325f, Struct_2(arg_1.x, u_input.a, var_1.xxx, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24169u, 7u)], 7u)], 7u)]), u_input.b.x)), vec4<bool>(true, true, true, true)), true));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = !select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, false), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true));
    var var_1 = !(!(!select(!var_0.zx, select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), var_0.zy), select(var_0.x, false, false))));
    var_1 = vec2<bool>(true, true);
    var var_2 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 0u), vec2<u32>(arg_1.d, arg_1.d)), 9u)], vec3<i32>(u_input.b.x & -2147483647i, -11524i, _wgslsmith_mod_i32(~u_input.b.x, ~arg_1.b.x)));
    var var_3 = Struct_2(u_input.b.x, select(~(arg_1.b ^ arg_1.b), _wgslsmith_clamp_vec4_i32(~arg_1.b, ~max(vec4<i32>(var_2.b.a, -19999i, 32289i, -2147483647i), vec4<i32>(var_2.c.b, arg_1.a, arg_1.b.x, u_input.a.x)), -vec4<i32>(25368i, -2147483647i, arg_1.a, var_2.c.a)), true), _wgslsmith_f_op_vec3_f32(arg_1.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, _wgslsmith_div_f32(633f, global2[_wgslsmith_index_u32(52496u, 26u)]), _wgslsmith_div_f32(-914f, -801f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 417f, -368f)) + vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.d, 7u)], 26u)], global0[_wgslsmith_index_u32(38143u, 9u)])))), _wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(arg_1.d << (arg_1.d % 32u), 7u)], arg_1.d ^ ~global1[_wgslsmith_index_u32(1u, 7u)], arg_1.d, ~5619u), ~(~vec4<u32>(103555u, 12829u, 0u, global1[_wgslsmith_index_u32(10729u, 7u)]) & (vec4<u32>(0u, 1u, 0u, 20761u) << (vec4<u32>(global1[_wgslsmith_index_u32(6776u, 7u)], 0u, 0u, 4294967295u) % vec4<u32>(32u))))));
    return func_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 26u)] - _wgslsmith_f_op_f32(-var_3.c.x)), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, 0i, arg_1.a), max(vec3<i32>(57878i, 0i, 7625i), var_3.b.yzx)), -vec3<i32>(u_input.a.x, arg_1.b.x, var_3.a), u_input.a.zxw));
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = vec2<i32>(-arg_0.b.b, arg_0.b.a);
    var var_1 = -arg_0.c.a;
    global2 = array<f32, 26>();
    global2 = array<f32, 26>();
    var var_2 = Struct_3(Struct_1(~_wgslsmith_mult_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.a.xwy, -u_input.a.yxx) | ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.a.xwy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10963u, 7u)], 26u)], 526f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53364u, 7u)], 7u)], 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 7u)], 9u)])), arg_0.c.e), -558f, -282f, Struct_2(arg_0.c.a, vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-9181i, arg_0.b.a, var_0.x, u_input.a.x), u_input.a), min(vec4<i32>(u_input.a.x, var_0.x, var_0.x, arg_0.b.b), vec4<i32>(-2147483647i, var_0.x, var_0.x, -1i))), -30441i, ~_wgslsmith_mult_i32(u_input.a.x, var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.b.e.xww * arg_0.c.e.yxy))))), _wgslsmith_mod_u32(~51205u & (global1[_wgslsmith_index_u32(70629u, 7u)] << (3328u % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 44708u, 47078u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), vec4<u32>(58632u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 4294967295u, 0u)), _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 7u)])))), -u_input.b.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d.d, _wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(var_2.d.d, 1u)), min(vec2<u32>(global1[_wgslsmith_index_u32(91950u, 7u)], var_2.d.d), vec2<u32>(1u, 23860u)), _wgslsmith_mod_vec2_u32(vec2<u32>(77331u, var_2.d.d), vec2<u32>(global1[_wgslsmith_index_u32(var_2.d.d, 7u)], var_2.d.d)))), 26u)], 524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2134f - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(26651u, 9u)], arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(0u, 9u)], 1197f, 999f))) * _wgslsmith_f_op_vec3_f32(func_4(func_1(vec4<f32>(global2[_wgslsmith_index_u32(135080u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28753u, 7u)], 7u)], 9u)], 594f), Struct_2(u_input.b.x, vec4<i32>(20829i, 32615i, 0i, 1i), vec3<f32>(global0[_wgslsmith_index_u32(60874u, 9u)], 1129f, global0[_wgslsmith_index_u32(27647u, 9u)]), 50450u)))))))));
    global0 = array<f32, 9>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(115180u, 26u)]) * _wgslsmith_f_op_f32(floor(1396f))))) - _wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32561u, 7u)], 26u)]))));
    global0 = array<f32, 9>();
    let var_2 = Struct_3(Struct_1(-func_2(var_0.x, -vec3<i32>(u_input.b.x, -55303i, 60476i)).b.b, countOneBits(-26101i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 26u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 101f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 26u)], 2418f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(826f, var_1), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(23210u, 26u)])), any(vec3<bool>(false, false, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f - var_1))), -381f, Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), u_input.b) >> (0u % 32u)), -vec4<i32>(func_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50786u, 7u)], 7u)], 7u)], 26u)], vec3<i32>(u_input.a.x, -26014i, -1i)).b.b, -u_input.b.x, -26848i, reverseBits(22159i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1354u, 7u)], 7u)], 9u)], -269f)), -1377f, _wgslsmith_f_op_f32(round(var_1)))), select(select(4294967295u, 70353u, true), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(1u), 7u)], 7u)], true) & 0u), abs(2418i));
    let var_3 = any(func_1(vec4<f32>(_wgslsmith_f_op_f32(round(-1580f)), global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.d.d, 7u)] & min(global1[_wgslsmith_index_u32(var_2.d.d, 7u)], var_2.d.d), 26u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 9u)] * var_1), -841f))), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(51682i, var_2.e, 0i, -1i) & var_2.d.b, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 37440i, var_2.d.b.x), vec4<i32>(u_input.b.x, -4713i, 0i, 13775i))), var_2.d.b, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(454f * -1052f), 1000f), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.d, 0u, var_2.d.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38634u, 7u)], 7u)]), vec4<u32>(1u, 2346u, global1[_wgslsmith_index_u32(var_2.d.d, 7u)], global1[_wgslsmith_index_u32(var_2.d.d, 7u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_2.d.d, 0u)), 7u)], true))).d);
    global2 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-(var_2.d.b.x >> (var_2.d.d % 32u)), ~u_input.b.x)), -3877i);
}

