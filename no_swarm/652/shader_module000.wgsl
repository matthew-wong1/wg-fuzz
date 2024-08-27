struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-1i, 32913i), vec2<i32>(-36288i, -1i), vec2<i32>(11770i, -16979i), vec2<i32>(-52792i, i32(-2147483648)), vec2<i32>(-3537i, 0i), vec2<i32>(1i, 0i), vec2<i32>(28854i, i32(-2147483648)), vec2<i32>(-35797i, 24813i), vec2<i32>(68547i, 18806i), vec2<i32>(-65i, i32(-2147483648)), vec2<i32>(-22053i, 0i), vec2<i32>(43359i, 1i));

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_1, 7>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(u_input.b);
    var var_1 = Struct_1(~74794u);
    global2 = array<bool, 9>();
    var_1 = Struct_1(var_0.a);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~var_1.a, 90046u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(u_input.b, u_input.b))));
    return global2[_wgslsmith_index_u32(~(~1u), 9u)];
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = func_2(Struct_1(var_0.a), true, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~abs(131501u), u_input.b)), 9u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b << (global4.a % 32u)), 7u)]);
    global3 = array<Struct_1, 7>();
    global4 = Struct_1(4294967295u);
    return !(!(!(!(!vec3<bool>(false, false, var_1)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global4 = global3[_wgslsmith_index_u32(3782u, 7u)];
    let var_0 = -2147483647i;
    var var_1 = arg_1;
    global1 = array<vec2<i32>, 12>();
    let var_2 = u_input.c.wzw;
    return arg_1.a | 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_1(true), !(!vec3<bool>(false, global0.x, true)), vec3<bool>(all(select(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(60622u, 9u)], global2[_wgslsmith_index_u32(1226u, 9u)]), vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(70736u, 9u)]), vec3<bool>(true, global0.x, false))), false, u_input.c.x >= -u_input.c.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 9u)]), _wgslsmith_dot_vec2_i32(~u_input.c.yw, max(vec2<i32>(-26759i, u_input.a.x), u_input.a)) <= reverseBits(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.a.x))), vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b, 9u)], !global0.x, !global2[_wgslsmith_index_u32(0u, 9u)])), select(false, global2[_wgslsmith_index_u32(71302u, 9u)], _wgslsmith_f_op_f32(select(-1000f, 364f, global0.x)) == _wgslsmith_f_op_f32(-974f + 1405f)), global2[_wgslsmith_index_u32(1u, 9u)]));
    global1 = array<vec2<i32>, 12>();
    global2 = array<bool, 9>();
    let var_1 = global2[_wgslsmith_index_u32(1u, 9u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(1u), ~select(0u, 0u, global0.x)), 7u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(834f))), -1026f)));
    let var_4 = any(var_0.zz);
    let var_5 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1076f, var_3.x, global0.x))), var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-1896f * -567f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 605f, var_3.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_3.x, 193f, -563f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1573f, var_3.x, -783f)))))));
    var var_6 = 7092i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mult_i32(-1i, -_wgslsmith_add_i32(-2147483647i, u_input.a.x)) | -20808i, abs(func_3(false || !global2[_wgslsmith_index_u32(global4.a, 9u)], global3[_wgslsmith_index_u32(7543u, 7u)])), ~var_2.a);
}

