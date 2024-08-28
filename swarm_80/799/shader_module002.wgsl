struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 4294967295u, 37934u, 0u, 49454u, 1u, 4294967295u, 8356u, 44324u, 1u, 4294967295u, 17446u, 4294967295u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_0 = arg_0;
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(30443u, ~u_input.b), vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u >> (u_input.b % 32u), 16u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b, u_input.b)), _wgslsmith_mod_u32(select(global1[_wgslsmith_index_u32(38540u, 16u)], u_input.b, true), ~5292u))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1355f)))), vec3<f32>(_wgslsmith_f_op_f32(step(587f, _wgslsmith_f_op_f32(f32(-1f) * -398f))), 722f, _wgslsmith_f_op_f32(ceil(-237f))), global1[_wgslsmith_index_u32(~firstLeadingBit(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38900u, 16u)], 16u)]) | 4294967295u), 16u)], !(!vec4<bool>(var_0, false, any(vec2<bool>(arg_0, var_0)), !arg_0)));
    return _wgslsmith_add_u32(abs(min(u_input.b, 1u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 0u, var_2.d, var_2.a.x), vec4<u32>(var_2.a.x, 43927u, 0u, 1u), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], var_2.d, u_input.b, 0u)), vec4<u32>(min(25829u, u_input.b), u_input.b << (global1[_wgslsmith_index_u32(0u, 16u)] % 32u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_2.a.x, 16u)], 1u), ~var_2.d)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 16u)]) ^ abs(arg_0.x)), 16u)], 85769u), ~7783u);
    var var_1 = -u_input.a.x;
    var var_2 = Struct_2(u_input.a.x, Struct_1(vec2<u32>(37823u, _wgslsmith_mod_u32(arg_0.x, 7040u)), 1078f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(559f, 908f, 233f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, 1158f, -1350f)), vec3<f32>(-244f, 2071f, 202f))), var_0.x, !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false))), vec2<u32>(~25750u, ~4294967295u), Struct_1(countOneBits(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(242f)) + 1278f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(102f, 1929f, 2247f), _wgslsmith_f_op_vec3_f32(vec3<f32>(454f, 979f, 2122f) + vec3<f32>(-638f, -842f, -225f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(526f, -724f, 759f) - vec3<f32>(1212f, -131f, 1515f)))), func_3(true) << (~(~39727u) % 32u), vec4<bool>(true, true, false, true)), Struct_1(select(vec2<u32>(~arg_0.x, 0u), arg_0.zy, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1079f, -1449f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(445f, 523f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1241f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 287f)), -1602f), ~31723u, !vec4<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, false)), true, all(vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_2.d.c, vec3<f32>(-1000f, var_2.d.b, 669f))))), var_2.b.c, vec3<bool>(false && select(false, false, false), true, var_2.d.e.x || var_2.d.e.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1921f, var_2.e.c.x, var_2.b.c.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.c.x, -186f, 539f), vec3<f32>(var_2.b.c.x, -833f, var_2.e.b)))) + vec3<f32>(_wgslsmith_f_op_f32(var_2.e.b * 547f), _wgslsmith_f_op_f32(min(-1000f, var_2.d.b)), var_2.e.b))));
    var var_4 = global0[_wgslsmith_index_u32(0u, 24u)];
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = true;
    global0 = array<Struct_2, 24>();
    global1 = array<u32, 16>();
    let var_1 = func_2(vec3<u32>(124096u, 4294967295u, _wgslsmith_sub_u32(arg_0.d, 1u)));
    let var_2 = var_1.e;
    return Struct_3(min(_wgslsmith_mod_u32(max(var_1.d, reverseBits(0u)), ~4294967295u), 1u), func_2(_wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 95156u, var_1.d), vec3<u32>(37733u, arg_0.d, 0u)), vec3<u32>(arg_0.d, u_input.b, 4294967295u) ^ vec3<u32>(4294967295u, var_1.d, var_1.d), vec3<bool>(true, arg_1.x, var_1.e.x)), max(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], arg_0.a.x, global1[_wgslsmith_index_u32(var_1.d, 16u)]), ~vec3<u32>(var_1.d, u_input.b, var_1.d)))), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 47279u, 27855u), vec3<u32>(arg_0.d, firstLeadingBit(u_input.b), u_input.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> u32 {
    global1 = array<u32, 16>();
    return 7251u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, vec3<i32>(2147483647i, ~(i32(-1i) * -2147483647i) << (~u_input.b % 32u), u_input.a.x), vec3<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -710f) <= _wgslsmith_f_op_f32(round(1134f)), any(vec4<bool>(-17414i > u_input.a.x, 61038i > u_input.a.x, all(vec3<bool>(true, false, true)), true))));
    var var_1 = vec2<bool>(true, !any(vec4<bool>(true, true, true, true)) || true);
    var var_2 = abs(_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], u_input.b))), vec3<u32>(_wgslsmith_sub_u32(~3651u, global1[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_clamp_u32(2924u, u_input.b, 4294967295u) ^ ~0u, func_4(true, func_1(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(0u, 16u)], u_input.b), 747f, vec3<f32>(-159f, 560f, 1000f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], vec4<bool>(var_1.x, var_1.x, false, false)), vec3<bool>(true, true, false))))));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.b), 0u, u_input.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(u_input.b), func_2(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, 66572u)).d, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_2.x, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 16u)]), var_2.zy)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 72964u, 10644u), vec3<u32>(1u, var_2.x, 4294967295u), reverseBits(vec3<u32>(36447u, global1[_wgslsmith_index_u32(0u, 16u)], u_input.b)))) % vec3<u32>(32u)), ~abs(select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 34596u, global1[_wgslsmith_index_u32(var_2.x, 16u)]), vec3<u32>(4294967295u, u_input.b, 4294967295u)), abs(vec3<u32>(u_input.b, 142635u, 53385u)), vec3<bool>(var_1.x, var_1.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(~4294967295u, 16488u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 16u)], var_2.x, 12358u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 4294967295u, 4294967295u))), ~reverseBits(max(vec3<u32>(var_2.x, var_2.x, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 16u)], 57659u, var_2.x)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 4294967295u), func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 16u)], var_2.x, 0u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 1u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 16u)])) > 21775u, func_1(Struct_1(var_2.yx, 305f, vec3<f32>(647f, 1570f, -221f), 4294967295u, vec4<bool>(true, var_1.x, var_1.x, false)), !vec3<bool>(var_1.x, var_1.x, false)))), vec2<i32>(-2147483647i, -1i), 1374f);
}

