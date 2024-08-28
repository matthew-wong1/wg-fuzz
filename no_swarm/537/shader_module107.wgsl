struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<f32, 13> = array<f32, 13>(1359f, 1854f, -351f, -145f, 465f, 530f, -518f, -506f, -140f, -1198f, -580f, -1145f, -1000f);

var<private> global3: array<f32, 29>;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec3<f32> {
    let var_0 = (!((u_input.e >> (1u % 32u)) > _wgslsmith_sub_i32(-22743i, -2147483647i)) | any(vec3<bool>(true, true, true))) | !any(select(vec2<bool>(false, false), vec2<bool>(true, false), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_sub_u32(54689u, u_input.c.x)), 19u)])));
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(38472u, 30u)], _wgslsmith_f_op_vec3_f32(sign(var_1)));
    let var_3 = u_input.e;
    var var_4 = global4[_wgslsmith_index_u32(~1u, 3u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9542u, 13u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * -906f))) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 4294967295u), 19u)]);
}

fn func_3() -> bool {
    global2 = array<f32, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(2603f - _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.d, 13u)], global3[_wgslsmith_index_u32(u_input.b, 29u)]))), _wgslsmith_f_op_f32(min(1114f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 13u)]))), -1038f))));
    var var_1 = !any(vec4<bool>(true, true, true, true)) && all(select(vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(47264u, 30u)])), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    global4 = array<Struct_1, 3>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~u_input.c.x), 29u)];
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = !vec3<bool>(true, arg_3.a.x, !all(!vec4<bool>(false, arg_0.a.x, false, false)));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(max(max(8607u, 39533u), ~u_input.b), 30u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0.b.x, arg_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, arg_0.b.x, 1000f)) - _wgslsmith_f_op_vec3_f32(func_2())) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_3.b, arg_0.b)))), select((false & arg_3.a.x) == true, select(true, all(vec4<bool>(arg_0.a.x, arg_3.a.x, var_0.x, arg_3.a.x)), func_3()), (u_input.e < arg_2) | !arg_0.a.x))));
    global4 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    var_2 = arg_3.b;
    return max(u_input.d, 1u);
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(~1u, u_input.b, _wgslsmith_mod_u32(6500u, u_input.d), _wgslsmith_add_u32(44682u, u_input.b)), ~(u_input.c << (u_input.c % vec4<u32>(32u)))), vec4<u32>(~14830u, ~0u, min(6024u, _wgslsmith_mult_u32(60460u, 0u)), 4294967295u)) | u_input.d, 3u)];
    global1 = array<vec2<bool>, 30>();
    let var_1 = 529f;
    global3 = array<f32, 29>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-467f)) - -1214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c.x, 29u)]))))));
    return _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, -1685f))))), -1614f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 30>();
    global0 = array<vec3<f32>, 19>();
    let var_0 = true;
    global4 = array<Struct_1, 3>();
    var var_1 = 1u;
    global1 = array<vec2<bool>, 30>();
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(global4[_wgslsmith_index_u32(1u, 3u)], 934f, u_input.e, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 29u)], 220f, -776f))), 8602u), 3u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1579f - -1139f)), _wgslsmith_f_op_f32(278f - global3[_wgslsmith_index_u32(~1u, 29u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u, 13u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_u32(abs(u_input.b), u_input.d, firstLeadingBit(~51102u)), reverseBits(u_input.b)), ~abs(_wgslsmith_mult_i32(33037i, 2147483647i & u_input.a.x)), u_input.c.yw);
}

