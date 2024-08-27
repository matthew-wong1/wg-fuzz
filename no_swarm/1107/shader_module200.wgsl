struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, true, false);

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(0u, 1u), vec2<u32>(1u, 51889u), vec2<u32>(6616u, 46364u), vec2<u32>(9919u, 4294967295u), vec2<u32>(33123u, 1u), vec2<u32>(19812u, 4294967295u), vec2<u32>(1u, 9135u), vec2<u32>(1u, 1u), vec2<u32>(11829u, 4294967295u), vec2<u32>(14800u, 1u), vec2<u32>(4294967295u, 12334u), vec2<u32>(32089u, 40683u), vec2<u32>(1u, 23425u));

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    global2 = array<vec2<u32>, 13>();
    var var_0 = global3[_wgslsmith_index_u32(arg_0.x, 25u)];
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_1.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, 542f))))));
    global2 = array<vec2<u32>, 13>();
    return vec2<f32>(356f, -1499f);
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = ~(~(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), firstTrailingBit(u_input.a)) | 73649u));
    var var_1 = 1000f;
    let var_2 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    let var_3 = _wgslsmith_mult_u32(var_2.a, 10545u) >= ~firstLeadingBit(_wgslsmith_mod_u32(u_input.a, ~24118u));
    var var_4 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    return _wgslsmith_f_op_vec2_f32(func_3(~abs((vec3<u32>(12779u, 0u, 4554u) & vec3<u32>(var_4.a, 33729u, var_2.a)) << (abs(vec3<u32>(1u, 4294967295u, 0u)) % vec3<u32>(32u)))));
}

fn func_1() -> i32 {
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(586f, -385f) + vec2<f32>(1083f, -1216f)), vec2<f32>(1000f, -188f)), _wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(true, true, false), true))))) + vec2<f32>(1f, 1f));
    var var_1 = var_0.x;
    global2 = array<vec2<u32>, 13>();
    return 2147483647i;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<vec3<f32>, 29>();
    return arg_2.b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 3>();
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    global1 = array<bool, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) - -1401f), _wgslsmith_div_f32(680f, _wgslsmith_f_op_f32(select(101f, 981f, false)))), -1113f) - _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, any(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], false)), true, max(u_input.a, u_input.a) <= ~u_input.a), func_1(), Struct_1(~(~49528u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1604f, -1310f)))))), select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(44175u, 4294967295u, 0u), 3u)], global1[_wgslsmith_index_u32(~u_input.a, 3u)], 0u > u_input.a), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 3u)], false)))));
    var var_1 = Struct_1(~(18809u | u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1228f, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 29u)], vec3<bool>(global1[_wgslsmith_index_u32(28529u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], false))) - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 29u)]))) * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(31370u), ~(~u_input.a)), 29u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(abs(var_0.x))), vec4<u32>(u_input.a, 1u, var_1.a, ~85806u));
}

