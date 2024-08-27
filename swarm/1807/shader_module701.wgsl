struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-1i, Struct_1(1642f), false, Struct_1(956f), Struct_1(1612f)), Struct_2(2147483647i, Struct_1(104f), false, Struct_1(-118f), Struct_1(839f)), Struct_2(6908i, Struct_1(328f), false, Struct_1(-1244f), Struct_1(-1278f)), Struct_2(-1i, Struct_1(553f), true, Struct_1(688f), Struct_1(846f)), Struct_2(0i, Struct_1(1764f), false, Struct_1(-1506f), Struct_1(359f)), Struct_2(12564i, Struct_1(1211f), true, Struct_1(1493f), Struct_1(-836f)), Struct_2(0i, Struct_1(-1433f), true, Struct_1(-1695f), Struct_1(819f)), Struct_2(28346i, Struct_1(-804f), false, Struct_1(1234f), Struct_1(-588f)), Struct_2(0i, Struct_1(808f), false, Struct_1(1183f), Struct_1(-699f)), Struct_2(i32(-2147483648), Struct_1(-959f), true, Struct_1(-221f), Struct_1(-412f)), Struct_2(1i, Struct_1(1000f), true, Struct_1(391f), Struct_1(-2301f)), Struct_2(-28994i, Struct_1(-242f), true, Struct_1(142f), Struct_1(1307f)), Struct_2(-31024i, Struct_1(1178f), false, Struct_1(245f), Struct_1(1000f)), Struct_2(13006i, Struct_1(-1573f), false, Struct_1(-2693f), Struct_1(932f)), Struct_2(-3113i, Struct_1(-905f), true, Struct_1(2079f), Struct_1(1829f)));

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: vec2<f32> = vec2<f32>(2015f, 236f);

var<private> global4: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(215f), Struct_2(0i, Struct_1(622f), true, Struct_1(-731f), Struct_1(-2347f))), Struct_3(Struct_1(651f), Struct_2(-5706i, Struct_1(794f), false, Struct_1(-228f), Struct_1(202f))), Struct_3(Struct_1(-2240f), Struct_2(-28464i, Struct_1(1000f), false, Struct_1(-416f), Struct_1(633f))), Struct_3(Struct_1(1220f), Struct_2(2147483647i, Struct_1(483f), true, Struct_1(760f), Struct_1(897f))), Struct_3(Struct_1(533f), Struct_2(-7137i, Struct_1(-884f), true, Struct_1(-589f), Struct_1(1000f))), Struct_3(Struct_1(-2164f), Struct_2(4112i, Struct_1(-1592f), false, Struct_1(1000f), Struct_1(-1204f))), Struct_3(Struct_1(1691f), Struct_2(-1518i, Struct_1(797f), true, Struct_1(-337f), Struct_1(-566f))), Struct_3(Struct_1(524f), Struct_2(75033i, Struct_1(2018f), true, Struct_1(-2056f), Struct_1(-2293f))), Struct_3(Struct_1(-1325f), Struct_2(i32(-2147483648), Struct_1(536f), false, Struct_1(736f), Struct_1(-398f))), Struct_3(Struct_1(-814f), Struct_2(2147483647i, Struct_1(-1000f), true, Struct_1(919f), Struct_1(1066f))), Struct_3(Struct_1(-1224f), Struct_2(117610i, Struct_1(-1748f), true, Struct_1(842f), Struct_1(1380f))), Struct_3(Struct_1(-1108f), Struct_2(22602i, Struct_1(-1086f), false, Struct_1(691f), Struct_1(-843f))), Struct_3(Struct_1(-354f), Struct_2(-33175i, Struct_1(-538f), true, Struct_1(148f), Struct_1(520f))), Struct_3(Struct_1(781f), Struct_2(19208i, Struct_1(-1293f), false, Struct_1(-169f), Struct_1(1477f))), Struct_3(Struct_1(-418f), Struct_2(11465i, Struct_1(-723f), false, Struct_1(-623f), Struct_1(-1501f))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = arg_0.zy;
    global2 = array<vec3<u32>, 8>();
    global1 = array<Struct_1, 22>();
    let var_1 = ~u_input.a;
    global2 = array<vec3<u32>, 8>();
    return -43661i;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    global1 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(global3.x + 424f);
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<bool> {
    var var_0 = 137f;
    var var_1 = _wgslsmith_f_op_f32(130f + _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(40929u, 8u)], vec3<u32>(u_input.d, 4294967295u, u_input.d))), 22u)], true, Struct_1(_wgslsmith_f_op_f32(-1630f * _wgslsmith_f_op_f32(-global3.x))), i32(-1i) * -func_3(vec3<f32>(global3.x, 387f, arg_1), u_input.b, global0[_wgslsmith_index_u32(44395u, 15u)]))));
    return vec4<bool>(true, !all(vec3<bool>(true == arg_0, false, arg_0)), !arg_0, false);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = select(vec4<bool>(arg_0.x, arg_0.x, true, false), func_2(752f != _wgslsmith_f_op_f32(step(196f, 688f)), arg_1.x), vec4<bool>(arg_0.x, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d, 1u), 15u)];
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f - var_2.d.a)))) + arg_1.x), -741f);
    var var_4 = global1[_wgslsmith_index_u32(~u_input.a | abs(_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.a, 69290u))))), 22u)];
    return any(func_2(any(!(!vec4<bool>(var_0.x, true, arg_0.x, false))), _wgslsmith_f_op_f32(abs(183f))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0.e, false, global1[_wgslsmith_index_u32(u_input.a, 22u)], arg_0.a)) - _wgslsmith_f_op_f32(-global3.x))))), global0[_wgslsmith_index_u32(30024u, 15u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1258f - -2117f))));
    let var_2 = global3.x;
    let var_3 = arg_0;
    var var_4 = global4[_wgslsmith_index_u32(0u, 15u)];
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0[_wgslsmith_index_u32(u_input.d, 15u)], true && func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), vec2<f32>(-957f, _wgslsmith_f_op_f32(f32(-1f) * -925f))));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.x, var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 429f) + vec2<f32>(var_0.a, -1000f)))) + vec2<f32>(global3.x, _wgslsmith_f_op_f32(-var_0.a))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global3.x))));
    let var_2 = vec4<u32>(firstLeadingBit(~min(1u, u_input.a)) ^ 1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(57633u, u_input.a)), vec2<u32>(firstLeadingBit(u_input.d), 1u)), u_input.d << (20364u % 32u), 4294967295u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-func_5(global0[_wgslsmith_index_u32(1u, 15u)], false).a));
    var var_4 = vec4<bool>(all(func_2(true, -285f)), !func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 107f) + vec2<f32>(-798f, -1389f))) && true, true, !func_1(vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(global3.x + 461f), _wgslsmith_f_op_f32(trunc(var_1)))));
    var var_5 = all(!vec2<bool>(var_4.x, all(vec3<bool>(var_4.x, true, true))));
    var var_6 = 16121u;
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1045f, var_1)), vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(47519u, 15u)])), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, -2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -2277f), ~u_input.a);
}

