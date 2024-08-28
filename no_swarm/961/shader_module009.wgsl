struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-350f, 513f), vec2<f32>(-753f, -1114f), vec2<f32>(-453f, -470f), vec2<f32>(-2390f, -1268f), vec2<f32>(-1000f, 749f), vec2<f32>(488f, -1617f), vec2<f32>(385f, -675f), vec2<f32>(924f, -1734f), vec2<f32>(1426f, -108f), vec2<f32>(280f, -1000f), vec2<f32>(648f, -1314f), vec2<f32>(-362f, 966f));

var<private> global2: array<vec4<i32>, 30>;

var<private> global3: array<Struct_1, 13>;

var<private> global4: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(151f, arg_1.x, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, -1402f) - vec2<f32>(307f, 874f)))), vec3<u32>(49721u, 1210u, ~var_0))), !select(vec3<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x, arg_1.x && arg_1.x), select(!vec3<bool>(true, arg_1.x, false), !vec3<bool>(false, false, arg_1.x), !vec3<bool>(arg_1.x, false, arg_1.x)), vec3<bool>(false, arg_1.x && true, all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))), countOneBits(var_0), u_input.b.x, global3[_wgslsmith_index_u32(abs(countOneBits(~(73887u >> (u_input.a % 32u)))), 13u)]);
    var var_2 = Struct_5((~(-2147483647i) ^ u_input.b.x) < (~u_input.b.x ^ _wgslsmith_clamp_i32(~93385i, u_input.b.x, -u_input.b.x)), 2147483647i >> (var_0 % 32u), _wgslsmith_sub_u32(abs(12221u), abs(0u)), var_1.e);
    let var_3 = Struct_4(~vec3<u32>(_wgslsmith_add_u32(var_1.a.c.b.x, var_1.c) >> (_wgslsmith_dot_vec2_u32(var_2.d.b.zy, var_1.e.b.zz) % 32u), abs(95094u), ~u_input.a), Struct_3(var_1.a, var_1.b, _wgslsmith_add_u32(var_0, var_2.c), -var_1.d, global3[_wgslsmith_index_u32(~select(9171u, 43180u, true) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.c, 60403u), vec3<u32>(arg_0, var_0, u_input.a)) ^ 1u) % 32u), 13u)]), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a.x, var_1.a.a, var_1.a.c.a.x, var_1.e.a.x)))))), global3[_wgslsmith_index_u32(abs(~4294967295u), 13u)]);
    global1 = array<vec2<f32>, 12>();
    return _wgslsmith_f_op_f32(floor(390f));
}

fn func_2() -> bool {
    global0 = array<u32, 31>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 7872u), 0u), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), max(u_input.b.x, u_input.b.x & -2147483647i) > 9865i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-253f, -313f))) * _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(12241u, 12u)] + global1[_wgslsmith_index_u32(32125u, 12u)])), countOneBits(~vec3<u32>(global0[_wgslsmith_index_u32(62965u, 31u)], 11648u, global0[_wgslsmith_index_u32(46710u, 31u)])))), vec3<bool>(any(vec3<bool>(true, true, true)), true, false & select(true, true, all(vec3<bool>(true, true, false)))), 36991u, -1i, Struct_1(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 65999u), 12u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(18767u, 12u)] * global1[_wgslsmith_index_u32(0u, 12u)]))), vec3<u32>(_wgslsmith_div_u32(1u, 1u), global0[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, 46937u, 10778u)) << (1u % 32u))));
    let var_1 = firstTrailingBit(0u);
    let var_2 = vec3<bool>(((any(vec3<bool>(var_0.b.x, false, var_0.a.b)) | any(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.a.b))) && (_wgslsmith_div_f32(1194f, -905f) == _wgslsmith_div_f32(var_0.e.a.x, var_0.a.c.a.x))) || false, select(false, !(!var_0.b.x), true), false);
    global0 = array<u32, 31>();
    return any(!select(var_0.b, vec3<bool>(false, false, all(var_2)), true));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a;
    global2 = array<vec4<i32>, 30>();
    let var_1 = 460f;
    global2 = array<vec4<i32>, 30>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1190f, 842f, var_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 485f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 122f, var_1)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, 1000f, -318f), vec3<f32>(var_1, 182f, 1000f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, var_1))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), 0u <= global0[_wgslsmith_index_u32(11747u, 31u)]))), func_2())) + vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_f_op_f32(floor(var_1))));
    return Struct_2(_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(abs(var_1))), !(!(!(41601u != global0[_wgslsmith_index_u32(u_input.a, 31u)]))), global3[_wgslsmith_index_u32(~(~4294967295u >> (~u_input.a % 32u)) | countOneBits(global0[_wgslsmith_index_u32(1u, 31u)]), 13u)]);
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global3 = array<Struct_1, 13>();
    var var_0 = vec4<u32>(u_input.a, ~4294967295u, arg_0.c.b.x << (_wgslsmith_clamp_u32(117314u, _wgslsmith_div_u32(abs(0u), _wgslsmith_mult_u32(7744u, 1u)), 1u) % 32u), ~21317u);
    global4 = true;
    var_0 = ~_wgslsmith_mod_vec4_u32(reverseBits(max(vec4<u32>(1u, arg_0.c.b.x, global0[_wgslsmith_index_u32(15505u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 31u)], 31u)]), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], 15812u, arg_0.c.b.x, u_input.a)))), ~(~vec4<u32>(12049u, 1u, arg_0.c.b.x, 23230u) >> (~vec4<u32>(135674u, u_input.a, 54624u, var_0.x) % vec4<u32>(32u))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, max(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 31u)] & u_input.a, abs(~arg_0.c.b.x))), 13u)];
    return Struct_4(vec3<u32>(global0[_wgslsmith_index_u32(~arg_0.c.b.x, 31u)], var_1.b.x, u_input.a), Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.a.x))), (arg_0.b | arg_0.b) || (arg_0.b & arg_0.b), global3[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(arg_0.b, (u_input.b.x << (1u % 32u)) != -1i, true), firstLeadingBit(min(31091u, ~u_input.a)), u_input.b.x, arg_0.c), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().c.a.x + _wgslsmith_f_op_f32(-150f * 1000f)) - -150f), var_1.a.x, 638f), Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, var_0.x ^ var_1.b.x), 12u)], ~arg_0.c.b));
}

fn func_5(arg_0: Struct_4) -> vec2<f32> {
    global2 = array<vec4<i32>, 30>();
    let var_0 = _wgslsmith_f_op_f32(sign(-1322f));
    var var_1 = 4294967295u;
    var var_2 = arg_0.d;
    var_1 = 4294967295u;
    return arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_1()))), ~(~vec2<u32>(20508u, u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, 244f, -928f))))))));
}

