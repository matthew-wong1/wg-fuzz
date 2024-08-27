struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(760f, -302f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f + 123f)))), all(select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(43430u, 4u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(9663u, 4u)]), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.e.x, 4u)])), true))));
    var var_1 = u_input.e.x;
    var var_2 = Struct_1(firstLeadingBit(u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(567f, _wgslsmith_f_op_f32(-625f + 273f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 500f))))));
    let var_3 = false;
    global2 = array<bool, 4>();
    return vec3<bool>(true, true, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(0u, u_input.d.x, true), reverseBits(26630u)) >> (1u % 32u), 4u)]);
}

fn func_2() -> u32 {
    let var_0 = func_3();
    global0 = ~1u;
    global1 = _wgslsmith_sub_vec4_i32(-(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 31398i, u_input.b, 23959i), vec4<i32>(u_input.b, global1.x, u_input.b, 1i)) ^ -abs(vec4<i32>(0i, 2147483647i, 12662i, global1.x))), _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, -24711i, -49414i, global1.x), ~vec4<i32>(global1.x, global1.x, global1.x, -2147483647i)), ~vec4<i32>(0i, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -31603i, -2147483647i, global1.x), vec4<i32>(global1.x, u_input.b, global1.x, 2147483647i)), _wgslsmith_div_i32(u_input.b, global1.x))));
    var var_1 = Struct_1(~(~select(u_input.d & vec2<u32>(11582u, 79738u), ~vec2<u32>(4294967295u, 4294967295u), var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, 222f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(494f, 1060f), vec2<f32>(1000f, -1192f)), vec2<f32>(-2596f, -468f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(782f, -325f))))) - vec2<f32>(_wgslsmith_div_f32(860f, -1258f), 150f))));
    var var_2 = u_input.c.x >> (_wgslsmith_add_u32(firstTrailingBit(abs(u_input.a.x ^ 23239u)), 15947u) % 32u);
    return 69228u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = vec4<bool>(!global2[_wgslsmith_index_u32(firstLeadingBit(1u) >> (func_2() % 32u), 4u)], true, true, all(select(select(select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_1.a.x, 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, global2[_wgslsmith_index_u32(arg_1.a.x, 4u)], true), global2[_wgslsmith_index_u32(var_0.a.x, 4u)]), select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(arg_1.a.x, 4u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], false, false)), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 4u)], true, global2[_wgslsmith_index_u32(0u, 4u)])), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_0.a.x, 4u)], false)), !vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.a.x, 4u)], false, false)), all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a.x, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], true))))));
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(var_0.a.x, ~9535u));
    global0 = var_0.a.x;
    let var_3 = arg_1;
    return _wgslsmith_div_f32(var_0.b.x, var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    global0 = u_input.e.x;
    global0 = firstLeadingBit(69612u);
    var var_0 = true;
    var var_1 = -1842i ^ _wgslsmith_dot_vec3_i32(global1.yzy, vec3<i32>(_wgslsmith_mod_i32(~(-7647i), global1.x), -1i, firstTrailingBit(-1i & u_input.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-1i, Struct_1(vec2<u32>(11899u, u_input.e.x), vec2<f32>(1317f, -1835f)), vec2<i32>(1i, u_input.b))), _wgslsmith_f_op_f32(sign(1436f))), _wgslsmith_f_op_f32(-1000f * -602f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-317f, 1215f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, -128f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f), -367f)), -1078f));
    var var_3 = vec3<u32>(~0u, _wgslsmith_mult_u32(~0u << (_wgslsmith_dot_vec2_u32(u_input.c.yx, ~u_input.a) % 32u), abs(1u)), u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1222f, 1646f));
}

