struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, true, true, false, false, false, true, true, true, false, true, false, false, false, true, false, false, true, true, true, false, true, false, false, false, true, true, true, false);

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-111f, 563f), vec2<f32>(-1139f, 151f), vec2<f32>(-899f, -1071f), vec2<f32>(930f, 1469f), vec2<f32>(689f, -458f), vec2<f32>(-2146f, 428f), vec2<f32>(1057f, -1744f), vec2<f32>(-1102f, 1928f), vec2<f32>(836f, -288f), vec2<f32>(-657f, 930f), vec2<f32>(-747f, 1929f), vec2<f32>(-794f, 386f), vec2<f32>(-458f, -165f), vec2<f32>(-2235f, 2111f), vec2<f32>(-3124f, -1039f), vec2<f32>(854f, 515f), vec2<f32>(-1120f, -1124f), vec2<f32>(-1286f, -205f), vec2<f32>(421f, -1023f), vec2<f32>(-418f, -1544f), vec2<f32>(1240f, 541f), vec2<f32>(1726f, -597f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = select(-660f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1018f))), any(!(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(11043u, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(6656u, 30u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)]), global0[_wgslsmith_index_u32(0u, 30u)]))), true);
    global0 = array<bool, 30>();
    var var_1 = Struct_1(countOneBits(u_input.c));
    let var_2 = !select(select(select(!vec2<bool>(var_0, false), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(123026u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), false), select(vec2<bool>(var_0, false), vec2<bool>(var_0, global0[_wgslsmith_index_u32(arg_0, 30u)]), vec2<bool>(false, true))), !(!vec2<bool>(false, var_0)), var_0), vec2<bool>((global0[_wgslsmith_index_u32(4294967295u, 30u)] && false) & !global0[_wgslsmith_index_u32(u_input.a.x, 30u)], all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_0, false)))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(true, true), select(vec2<bool>(var_0, false), select(vec2<bool>(false, true), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), var_0)));
    return ~(39330u << ((~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(36116u, 4294967295u), firstLeadingBit(u_input.a.ww))) % 32u));
}

fn func_2() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, ~(_wgslsmith_div_u32(u_input.c, 92135u) >> (abs(u_input.a.x) % 32u)), ~4294967295u), func_3(_wgslsmith_mod_u32(22257u, max(max(u_input.c, 1u), _wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.zzy))))), 17u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-350f)))) + 348f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)));
    return false;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = select(vec2<bool>(arg_2.x, func_2()), vec2<bool>(true, true), all(!vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 30u)], true, !global0[_wgslsmith_index_u32(3926u, 30u)])));
    global0 = array<bool, 30>();
    let var_1 = -430f;
    var var_2 = Struct_1(4294967295u);
    let var_3 = 15643u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x);
    global2 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_1(-2147483647i, vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1709f))), -510f, 212f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2101f, _wgslsmith_f_op_f32(f32(-1f) * -695f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f * 1422f)))));
    var var_2 = var_0.a;
    var var_3 = vec2<i32>(~2147483647i, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(_wgslsmith_add_i32(firstLeadingBit(u_input.d), var_3.x >> (u_input.a.x % 32u))), select(u_input.d, ~var_3.x, false)), ~_wgslsmith_add_vec3_u32(u_input.a.xzy, _wgslsmith_mod_vec3_u32(u_input.a.xyx, vec3<u32>(u_input.c, u_input.c, 4294967295u))));
}

