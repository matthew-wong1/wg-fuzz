struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(19824i, -17688i, 2147483647i, 1i), vec4<i32>(-1i, 31882i, 34181i, 218i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -16026i), vec4<i32>(2147483647i, -1i, -1i, -1i), vec4<i32>(i32(-2147483648), 1i, -13958i, -27570i));

var<private> global1: Struct_1;

var<private> global2: array<u32, 9> = array<u32, 9>(1u, 4294967295u, 1u, 0u, 4294967295u, 1u, 1u, 30951u, 766u);

var<private> global3: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(global1.a, arg_0.b.x, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(31119u, global2[_wgslsmith_index_u32(34327u, 9u)], 7998u, arg_0.e), vec4<u32>(30946u, 1u, u_input.a.x, 4294967295u)), min(~113422u, 1635u)) << (u_input.a.xx % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 5>();
    var var_1 = u_input.a.wyy & firstTrailingBit(u_input.a.zxy);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b) * global1.b)) * arg_1.b));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + -1071f) - -1030f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(-1000f, vec2<f32>(-1186f, global1.b.x), 39132i), arg_0, Struct_1(global1.b.x, global1.b, u_input.b), Struct_1(global1.b.x, vec2<f32>(global1.b.x, global1.a), -44614i), 8144u), Struct_1(-1000f, global1.b, 1i), Struct_1(-1558f, vec2<f32>(global1.a, global1.b.x), u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(select(-666f, -1000f, false)), _wgslsmith_f_op_f32(global1.b.x + -275f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)))))), -2147483647i);
    return all(vec2<bool>(true, true));
}

fn func_1() -> bool {
    var var_0 = select(select(!vec2<bool>(global1.b.x >= 878f, true), vec2<bool>(true, true), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))))), !vec2<bool>(true, !func_2(vec4<bool>(false, true, true, true))), !vec2<bool>(!select(false, true, true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true))));
    let var_1 = !vec3<bool>(!(-726f > global1.b.x), var_0.x, u_input.a.x <= u_input.a.x);
    var var_2 = Struct_3(global1.a, any(select(var_1.xy, !vec2<bool>(var_0.x, var_1.x), true)) | select(_wgslsmith_sub_u32(95128u, u_input.a.x) > ~1u, var_1.x, var_0.x), ~(~u_input.a.xw));
    var var_3 = u_input.a;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2440f), false, u_input.a.wz);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 9>();
    var var_0 = global2[_wgslsmith_index_u32(395u, 9u)];
    let var_1 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(49056u, 4294967295u, u_input.a.x))), ~select(u_input.a.wwy, ~select(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.xxw, false), all(vec4<bool>(true, true, true, false))));
    var var_2 = select(-_wgslsmith_clamp_i32(global3.x, i32(-1i) * -12801i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-29059i, global1.c), vec2<i32>(-27615i, 94211i))), global3.x, !(!func_1()));
    let var_3 = Struct_3(global1.b.x, true, max(~(~var_1.yz), u_input.a.xy));
    var var_4 = _wgslsmith_mult_vec2_u32(var_1.yy, ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(var_3.c.x, 9u)], 36543u)), _wgslsmith_mult_vec3_u32(u_input.a.zwy, vec3<u32>(0u, 30262u, 1u))), _wgslsmith_sub_u32(33871u, var_1.x) << (50404u % 32u)));
    var var_5 = 682f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.a.x << (55166u % 32u))), u_input.a.wy, global0[_wgslsmith_index_u32(69031u, 5u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.a)) - _wgslsmith_f_op_f32(global1.b.x - 505f)), _wgslsmith_f_op_f32(ceil(var_3.a))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.b.x, global1.b.x), _wgslsmith_f_op_f32(1000f + global1.a), _wgslsmith_f_op_f32(sign(-708f))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(var_3.a * global1.b.x), -507f)))));
}

