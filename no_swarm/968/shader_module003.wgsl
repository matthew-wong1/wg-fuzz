struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<f32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -1755f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1327f)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(36788u, 30u)]))))));
    global0 = array<bool, 4>();
    var var_1 = Struct_1(!(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(102650u, 4u)], global0[_wgslsmith_index_u32(68140u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(28577u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], false, global0[_wgslsmith_index_u32(0u, 4u)]), false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true, true, global0[_wgslsmith_index_u32(112215u, 4u)]), true)), ~(~_wgslsmith_clamp_u32(reverseBits(16426u), 1u, ~4294967295u)));
    global0 = array<bool, 4>();
    let var_2 = ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-18385i, 2147483647i) << (vec2<u32>(68116u, var_1.b) % vec2<u32>(32u))) ^ (vec2<i32>(u_input.a, -46343i) >> (~vec2<u32>(var_1.b, var_1.b) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, 2147483647i), vec2<i32>(2147483647i, u_input.a) ^ vec2<i32>(u_input.a, -12688i)) | ~vec2<i32>(-2147483647i, -1i));
    return ~(~(~var_1.b));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~(~vec4<u32>(_wgslsmith_clamp_u32(12940u, 23208u, 1u), 35975u, 20110u, ~_wgslsmith_add_u32(1u, 92772u)));
    let var_1 = Struct_1(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(48856u, 4u)], false, global0[_wgslsmith_index_u32(var_0.x, 4u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false, true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 4u)], false)))), _wgslsmith_sub_u32(27632u, var_0.x));
    return !var_1.a.wz;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec3<u32>(abs(~(arg_0 << (_wgslsmith_dot_vec2_u32(vec2<u32>(18345u, arg_0), vec2<u32>(0u, 4294967295u)) % 32u))), ~countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0))), 0u);
    global1 = array<f32, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(917f, 782f, -682f), vec3<f32>(-280f, global1[_wgslsmith_index_u32(17205u, 30u)], 619f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, 510f, global1[_wgslsmith_index_u32(var_0.x, 30u)])), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(925f, global1[_wgslsmith_index_u32(75189u, 30u)], 1145f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1300f, 1832f, global1[_wgslsmith_index_u32(61014u, 30u)]), vec3<f32>(1507f, global1[_wgslsmith_index_u32(0u, 30u)], -1302f)))))), false)));
    global0 = array<bool, 4>();
    var var_2 = Struct_1(select(select(!select(vec4<bool>(arg_1.x, false, false, false), vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(6484u, 4u)], global0[_wgslsmith_index_u32(11683u, 4u)], false), vec4<bool>(true, arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(20823u, 4u)])), select(select(vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(arg_0, 4u)], arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, global0[_wgslsmith_index_u32(388u, 4u)]), vec4<bool>(arg_1.x, false, true, true)), vec4<bool>(false, arg_1.x, false, arg_1.x), select(vec4<bool>(true, arg_1.x, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(71556u, 4u)], false), global0[_wgslsmith_index_u32(1u, 4u)])), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)]))), select(vec4<bool>(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 4u)])), global0[_wgslsmith_index_u32(0u, 4u)], true, true), vec4<bool>(true, any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0, 4u)], false)), true != global0[_wgslsmith_index_u32(arg_0, 4u)], all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(82295u, 4u)]))), true), any(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(~var_0.x, 4u)]))), _wgslsmith_dot_vec2_u32(var_0.zy, var_0.xx));
    return Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(15677u, 30u)] > _wgslsmith_div_f32(-816f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(48849u, 30u)])), arg_1.x, any(select(select(vec2<bool>(true, true), vec2<bool>(arg_1.x, var_2.a.x), arg_1), vec2<bool>(var_2.a.x, true), global0[_wgslsmith_index_u32(var_2.b & 50722u, 4u)])), all(!(!vec4<bool>(global0[_wgslsmith_index_u32(37676u, 4u)], true, var_2.a.x, false)))), ~4791u);
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = func_3(1u, select(func_3(_wgslsmith_clamp_u32(arg_0.b, 4294967295u, firstLeadingBit(arg_0.b)), arg_0.a.xy).a.zz, arg_0.a.xw, arg_0.a.wy));
    var var_1 = Struct_1(!func_3(4294967295u, vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 4u)], true)), arg_0.a.x)).a, ~(~var_0.b));
    var var_2 = arg_0;
    let var_3 = !(!vec3<bool>(!(!var_1.a.x), false, false));
    let var_4 = func_3(_wgslsmith_dot_vec3_u32(~(~select(vec3<u32>(var_1.b, 0u, var_0.b), vec3<u32>(var_2.b, var_2.b, var_2.b), var_0.a.yxz)), vec3<u32>(_wgslsmith_sub_u32(func_3(var_2.b, vec2<bool>(true, var_1.a.x)).b, 26912u), 16311u, abs(var_2.b))), var_1.a.yz);
    return StorageBuffer(_wgslsmith_sub_u32(8245u, 1u >> (((60520u >> (arg_0.b % 32u)) & (57076u >> (var_0.b % 32u))) % 32u)), ~vec4<i32>(u_input.a, -firstTrailingBit(u_input.a), abs(u_input.a), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(32329u, 30u)] + global1[_wgslsmith_index_u32(69284u, 30u)]), -1000f, 930f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(70591u, 30u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1070f, 271f, global1[_wgslsmith_index_u32(arg_0.b, 30u)], global1[_wgslsmith_index_u32(94350u, 30u)]), _wgslsmith_div_vec4_f32(vec4<f32>(750f, -876f, -1401f, 1234f), vec4<f32>(1014f, global1[_wgslsmith_index_u32(0u, 30u)], -515f, 928f)))), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 30u)] <= global1[_wgslsmith_index_u32(var_4.b, 30u)], -25730i < u_input.a)))), global1[_wgslsmith_index_u32(var_2.b, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~(abs(4294967295u) >> (abs(1u) % 32u)), firstTrailingBit(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(60692u, 92564u, 29091u, 9216u), vec4<u32>(1u, 1u, 1u, 1u))), firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
    let var_1 = _wgslsmith_div_i32(u_input.a, ~(-1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2962u, 30u)] - -415f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(28782u), 30u)]), global1[_wgslsmith_index_u32(abs(~48737u), 30u)]))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-813f, -1173f)) * _wgslsmith_f_op_f32(f32(-1f) * -317f)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(38672u, 1u), 30u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(1u), firstTrailingBit(7122u >> (0u % 32u))), 30u)]));
    var var_3 = Struct_1(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13205u, 4140u), 4u)], global0[_wgslsmith_index_u32(27198u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 87626u, 22256u), vec3<u32>(113301u, 0u, 4294967295u))) << (~1u % 32u), 4u)], false), 4294967295u);
    global1 = array<f32, 30>();
    var var_4 = var_3.a.x;
    var_0 = var_3.b;
    let x = u_input.a;
    s_output = func_4(func_3(_wgslsmith_mod_u32(func_1(), 1u), select(func_2(), !vec2<bool>(false, global0[_wgslsmith_index_u32(var_3.b, 4u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_3.b, 4u)])))));
}

