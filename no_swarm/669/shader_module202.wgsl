struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<bool, 20>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<bool, 11>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1608f + -705f), _wgslsmith_f_op_f32(select(1063f, 1055f, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f * _wgslsmith_f_op_f32(sign(1080f))))));
    global1 = array<bool, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(677f, var_0, 488f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -363f, -474f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 334f, var_0)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -483f, var_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, var_0, -1000f) + vec3<f32>(469f, -722f, var_0)))))), 0i, ~u_input.a);
    let var_2 = global0.x;
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, var_1.c, var_1.c, var_1.c), vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, var_1.c), 39616u, abs(12273u))), vec4<u32>(~var_1.c, 4294967295u, ~0u, ~(~13249u)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = -arg_3.a.b;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(arg_2.x, 53743u) << (~(~4294967295u) % 32u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 4294967295u, 21823u, arg_0) ^ vec4<u32>(4294967295u, 0u, 1u, u_input.a)), ~vec4<u32>(0u, 31872u, 0u, 15036u) & ~vec4<u32>(arg_3.a.c, arg_2.x, 60702u, 77152u)), 0u, ~24507u), func_2(global0.xyy, ~select(-vec3<i32>(-5168i, 0i, 2147483647i), vec3<i32>(arg_3.a.b, 40760i, arg_3.b), select(global0.zzw, vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 11u)], false, true), true))));
    var_0 = arg_3.b;
    global1 = array<bool, 20>();
    var var_2 = arg_3.a;
    return ~var_1.yy;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> f32 {
    global4 = global0.yy;
    let var_0 = arg_0.a;
    let var_1 = u_input.a;
    global2 = array<Struct_2, 3>();
    global3 = array<bool, 11>();
    return _wgslsmith_f_op_f32(-1457f - _wgslsmith_f_op_f32(ceil(var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(~vec2<u32>(16967u, u_input.a), ~(~vec2<u32>(u_input.a, 4294967295u)), true), ~(~(vec2<u32>(50800u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a))), !(!select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 11u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(2752u, 20u)]), true))) << ((vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 19918u))) >> (_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 9331u)), ~abs(vec2<u32>(4294967295u, 13487u)), func_1(99034u, 24834u | u_input.a, vec3<u32>(u_input.a, 78037u, u_input.a), Struct_2(Struct_1(vec3<f32>(2103f, 1097f, -567f), 0i, 0u), 1i))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global4 = vec2<bool>(false, !all(vec4<bool>(true, any(global0.yxy), true, global4.x)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a, 3u)], ~(-1i))), 2722f);
    global3 = array<bool, 11>();
    var var_2 = u_input.a;
    let var_3 = max(-1i, 37164i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_1.x)));
}

