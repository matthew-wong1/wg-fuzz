struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-1336f, -272f, 1661f, -765f, 1106f, -720f, 133f, -338f);

var<private> global1: array<u32, 22>;

var<private> global2: array<bool, 10>;

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(47094i, 8743i, 2147483647i), vec3<i32>(50467i, 28285i, 19673i), vec3<i32>(-1i, 13388i, -11634i), vec3<i32>(2147483647i, -1i, -1950i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(14058i, -2681i, -37905i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(2147483647i, 0i, -42434i), vec3<i32>(-1i, -1i, -24643i), vec3<i32>(0i, -17032i, 0i), vec3<i32>(-9316i, -5956i, 0i));

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.yz << (u_input.a.zz % vec2<u32>(32u));
    return arg_1;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    let var_0 = abs(vec4<u32>(_wgslsmith_mod_u32(100526u, _wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(u_input.d, 22u)], 4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, 36638u))), 43735u, abs(0u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, firstLeadingBit(u_input.a.x)), _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a))));
    var var_1 = Struct_1(~1i < max(-2147483647i & u_input.b.x, ~(~u_input.b.x)));
    var var_2 = -230f;
    return -1899f;
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 10>();
    var var_0 = func_2(_wgslsmith_div_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(70203u, 22u)], 4294967295u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 50688u), ~4294967295u)) ^ 52418u, Struct_1(!(u_input.b.x >= -2147483647i)));
    var_0 = func_2(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(u_input.a.x ^ 1u), ~reverseBits(global1[_wgslsmith_index_u32(u_input.d, 22u)])), 22u)], func_2(20346u, Struct_1(true)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 8u)], -195f)) + 854f)), 954f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(62186u, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, 1016f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, -879f, global0[_wgslsmith_index_u32(10811u, 8u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(55468u, 8u)]) - vec3<f32>(global0[_wgslsmith_index_u32(37368u, 8u)], -1607f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 8u)])), global2[_wgslsmith_index_u32(u_input.c, 10u)])) - vec3<f32>(_wgslsmith_f_op_f32(max(-1337f, global0[_wgslsmith_index_u32(u_input.d, 8u)])), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 22u)], 8u)], 1246f))));
    let var_2 = Struct_1(true | ((_wgslsmith_f_op_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(15187u, 10u)]))) == 1f) && all(!vec2<bool>(false, global4.a))));
    return Struct_1(any(vec4<bool>(!(!var_2.a), select(var_2.a && true, func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 22u)], 22u)], 22u)], Struct_1(true)).a, select(var_2.a, false, false)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1884i, vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 8u)] - _wgslsmith_f_op_f32(select(560f, 1059f, all(vec2<bool>(global2[_wgslsmith_index_u32(1675u, 10u)], false))))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~u_input.d, 8u)], _wgslsmith_f_op_f32(-2522f * _wgslsmith_f_op_f32(f32(-1f) * -427f))))));
}

