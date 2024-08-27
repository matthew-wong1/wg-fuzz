struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-75150i, 10119i, 1i, 19236i, -1i, -2950i, 2147483647i);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_3(vec3<f32>(-2840f, 2021f, -625f), -2035i, vec3<bool>(true, false, false), vec4<f32>(-839f, -615f, 1000f, 533f)), false, Struct_1(1i, vec2<f32>(1930f, -2066f)), false, Struct_1(i32(-2147483648), vec2<f32>(-393f, 534f))), Struct_4(Struct_3(vec3<f32>(795f, -252f, 414f), -24009i, vec3<bool>(false, true, true), vec4<f32>(-418f, -1500f, -809f, -684f)), false, Struct_1(-34852i, vec2<f32>(195f, -627f)), false, Struct_1(2147483647i, vec2<f32>(1879f, 1000f))), Struct_4(Struct_3(vec3<f32>(-1625f, -493f, -205f), 18808i, vec3<bool>(true, true, false), vec4<f32>(-1000f, -1185f, -273f, -720f)), false, Struct_1(0i, vec2<f32>(-1716f, -160f)), false, Struct_1(-1792i, vec2<f32>(950f, -945f))), Struct_4(Struct_3(vec3<f32>(-273f, 897f, -674f), 0i, vec3<bool>(true, true, true), vec4<f32>(861f, 1418f, -788f, -586f)), false, Struct_1(-6684i, vec2<f32>(281f, 488f)), true, Struct_1(2147483647i, vec2<f32>(-389f, -1545f))), Struct_4(Struct_3(vec3<f32>(-1770f, -644f, 391f), -31873i, vec3<bool>(false, true, true), vec4<f32>(-375f, -167f, -1030f, -1690f)), true, Struct_1(-60875i, vec2<f32>(1085f, -693f)), true, Struct_1(0i, vec2<f32>(-1701f, -122f))), Struct_4(Struct_3(vec3<f32>(-1000f, 802f, 1299f), 16819i, vec3<bool>(false, false, true), vec4<f32>(112f, 1033f, -1361f, 1095f)), true, Struct_1(0i, vec2<f32>(149f, -468f)), false, Struct_1(i32(-2147483648), vec2<f32>(-371f, -1326f))), Struct_4(Struct_3(vec3<f32>(1106f, -618f, -1824f), i32(-2147483648), vec3<bool>(true, true, true), vec4<f32>(-836f, 1069f, -560f, -851f)), true, Struct_1(46140i, vec2<f32>(526f, -281f)), true, Struct_1(0i, vec2<f32>(133f, -841f))));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(-1i, 40164i)), Struct_2(vec2<i32>(2113i, 7437i)), Struct_2(vec2<i32>(7158i, -42174i)), Struct_2(vec2<i32>(1i, -10276i)), Struct_2(vec2<i32>(1i, 76334i)), Struct_2(vec2<i32>(-34609i, 0i)), Struct_2(vec2<i32>(-75938i, 26991i)));

var<private> global3: array<Struct_4, 11>;

var<private> global4: array<bool, 17> = array<bool, 17>(true, true, true, false, false, false, true, true, false, true, false, true, true, true, true, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.x, 7u)];
    let var_1 = _wgslsmith_dot_vec3_i32(-u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(1u, 7u)], -2147483647i, u_input.b.x), vec3<i32>(u_input.c, ~(-1i), i32(-1i) * -10840i)));
    global4 = array<bool, 17>();
    var_0 = -(~reverseBits((70083i & global0[_wgslsmith_index_u32(u_input.d.x, 7u)]) >> (arg_1.x % 32u)));
    let var_2 = all(select(vec2<bool>(all(vec3<bool>(false, arg_0, true)) || !global4[_wgslsmith_index_u32(4413u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 51321i), u_input.b.zz) > -36453i), !vec2<bool>(arg_0, global4[_wgslsmith_index_u32(arg_1.x, 17u)]), any(select(select(vec3<bool>(false, true, false), vec3<bool>(global4[_wgslsmith_index_u32(31053u, 17u)], arg_0, global4[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec3<bool>(false, false, false)), vec3<bool>(true, arg_0, false), !vec3<bool>(true, true, global4[_wgslsmith_index_u32(3535u, 17u)])))));
    return all(select(vec3<bool>(arg_0, true, global4[_wgslsmith_index_u32(u_input.d.x ^ u_input.d.x, 17u)]), !(!vec3<bool>(false, true, var_2)), all(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, false), false)))) | var_2;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> vec2<u32> {
    global4 = array<bool, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), -628f))));
    let var_1 = true;
    global4 = array<bool, 17>();
    let var_2 = !select(vec3<bool>(u_input.d.x >= ~15758u, !all(vec4<bool>(var_1, var_1, arg_1, arg_1)), var_0.x >= _wgslsmith_f_op_f32(var_0.x + -751f)), vec3<bool>(false, (u_input.d.x ^ u_input.d.x) != 1u, var_1), select(select(vec3<bool>(false, false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 17u)], arg_2), !vec3<bool>(arg_1, var_1, false)), vec3<bool>(arg_1, false, true), func_2(true, vec2<u32>(0u, 1u))));
    return countOneBits(u_input.d.yy);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_5(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(424f, -690f, 688f) * vec3<f32>(1566f, 372f, -1179f))), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1132f, 1389f, -370f) - vec3<f32>(565f, 627f, -610f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(100f, -548f)) - 648f));
    let var_1 = _wgslsmith_f_op_f32(min(var_0.b.x, var_0.c));
    var var_2 = 0u < firstTrailingBit(4294967295u);
    global0 = array<i32, 7>();
    global4 = array<bool, 17>();
    return abs(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 11>();
    global3 = array<Struct_4, 11>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(func_1(true, global4[_wgslsmith_index_u32(u_input.d.x, 17u)], global4[_wgslsmith_index_u32(54236u, 17u)]), vec2<u32>(u_input.d.x, 4294967295u)), vec2<u32>(u_input.d.x, u_input.d.x)), u_input.d.x << (_wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), 29087u) % 32u), u_input.d.x), u_input.d.yxz), 11u)];
    global3 = array<Struct_4, 11>();
    global3 = array<Struct_4, 11>();
    global4 = array<bool, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.a.d.zwy, var_0.a.d.wxy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a)));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xx), reverseBits(u_input.b.yy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a.d.x)), vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(var_1.xz - vec2<f32>(1000f, 1034f))))));
    let var_3 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_2.b.x)));
}

