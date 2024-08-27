struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(1i, 58526i, -46215i), vec3<i32>(73968i, 11450i, i32(-2147483648)), vec3<i32>(-17576i, -1i, i32(-2147483648)), vec3<i32>(0i, 47712i, -1i), vec3<i32>(-19391i, -1979i, 2147483647i), vec3<i32>(-1i, 11088i, 1i), vec3<i32>(-26976i, 2147483647i, -3250i), vec3<i32>(3136i, -27218i, 2147483647i));

var<private> global2: array<bool, 15>;

var<private> global3: array<vec3<f32>, 24>;

var<private> global4: f32 = 135f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = ~(arg_2 | ~_wgslsmith_div_u32(31292u, _wgslsmith_sub_u32(1u, u_input.c)));
    let var_1 = arg_0;
    global1 = array<vec3<i32>, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a)));
    var var_3 = arg_3.x;
    return arg_3.x;
}

fn func_2() -> i32 {
    let var_0 = vec3<f32>(global0.a, global0.a, -167f);
    global4 = _wgslsmith_f_op_f32(616f * var_0.x);
    global2 = array<bool, 15>();
    let var_1 = Struct_2(Struct_1(-228f));
    let var_2 = ~u_input.b;
    return _wgslsmith_div_i32(1i, u_input.e ^ ~(u_input.e << (countOneBits(29586u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 24>();
    let var_0 = -1i;
    global4 = -701f;
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(0u, 15u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -824f, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-344f, global0.a, global0.a, -1081f), vec4<f32>(-154f, 580f, -2794f, 655f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 611f, 1303f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1112f, global0.a, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, global0.a)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1804f, -1000f, global0.a, -959f)))))), select(select(vec4<bool>(true, 13165u <= u_input.d, global2[_wgslsmith_index_u32(u_input.a.x & 0u, 15u)], true), !(!vec4<bool>(true, var_1.a, var_1.a, false)), !global2[_wgslsmith_index_u32(~u_input.a.x, 15u)]), vec4<bool>(!var_1.a, !global2[_wgslsmith_index_u32(31519u, 15u)], abs(u_input.a.x) != 1u, _wgslsmith_div_f32(global0.a, global0.a) > -715f), select(var_1.a, true, !global2[_wgslsmith_index_u32(u_input.a.x, 15u)]) && func_1(_wgslsmith_f_op_f32(max(global0.a, -486f)), vec3<f32>(global0.a, 589f, 1269f), ~1u, select(vec3<bool>(true, false, true), vec3<bool>(var_1.a, var_1.a, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec3<bool>(var_1.a, false, var_1.a))))));
    var var_3 = ~(~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.b, 14375u, 1u), (u_input.a.x ^ u_input.b) >> (u_input.c % 32u)));
    let var_4 = !(global0.a <= var_2.x);
    var_3 = _wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(28039u, u_input.d), _wgslsmith_mod_u32(34671u, u_input.c))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.d), ~u_input.a.wz));
    var var_5 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0, func_2() >> ((~u_input.c ^ u_input.c) % 32u), ~u_input.e), -max(global1[_wgslsmith_index_u32(~0u, 8u)] | global1[_wgslsmith_index_u32(abs(u_input.d), 8u)], _wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)]) >> (u_input.a.yyy % vec3<u32>(32u))));
}

