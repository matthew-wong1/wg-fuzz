struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    var var_0 = (-175f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f + -638f) * _wgslsmith_f_op_f32(select(-912f, 1642f, true))))) && (max(_wgslsmith_clamp_i32(27736i, 1i, -1i) & 0i, 4843i) <= 0i);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 638f, 988f, 198f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1685f, -1623f, 859f, -1433f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1147f, -293f, 1000f, -1390f), vec4<f32>(329f, 294f, 1633f, 489f)))))))));
    var var_2 = vec2<u32>(abs(u_input.a.x), u_input.a.x);
    let var_3 = ~u_input.a.x;
    var_0 = true;
    return reverseBits(4294967295u) ^ u_input.a.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>) -> u32 {
    global0 = true;
    global1 = array<vec4<bool>, 27>();
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.a.x | countOneBits(arg_1.x), 60u), arg_1.x);
    var var_1 = false;
    var var_2 = true;
    return 1u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: u32) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-189f + _wgslsmith_f_op_f32(f32(-1f) * -175f)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_4(u_input.a.yx, true, -21457i <= arg_2.x, 58437u, true);
    let var_1 = var_0;
    global1 = array<vec4<bool>, 27>();
    var var_2 = select(true, select(arg_0, any(global1[_wgslsmith_index_u32(732u, 27u)]), all(vec2<bool>(true, true))), !var_0.b);
    return Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1563f, 824f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1424f, -531f) * vec2<f32>(351f, -258f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1494f, 1276f), vec2<f32>(-956f, -132f), vec2<bool>(arg_0, true))), func_3(vec2<bool>(false, false), vec3<u32>(12788u, arg_1.x, u_input.a.x)))) + vec2<f32>(-121f, _wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(338f, 266f, 415f), vec3<f32>(1208f, 926f, 622f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(703f, 538f)), vec2<f32>(-605f, -1495f), u_input.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 27>();
    var var_0 = !vec2<bool>(_wgslsmith_clamp_i32(10288i, 17074i, ~6364i) <= _wgslsmith_clamp_i32(reverseBits(-1i), 1i, -1i), true);
    let var_1 = func_2(true, vec2<u32>(4294967295u, min(~(~1u), 4294967295u)), vec4<i32>(i32(-1i) * -2147483647i, reverseBits(select(-1i, -38483i, false)) >> (_wgslsmith_mult_u32(1u, func_1()) % 32u), ~1i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(~(~1u), _wgslsmith_mod_u32(max(17226u, 22856u), ~var_1.a.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 47330u), select(var_1.a.wz, var_1.a.xw, var_0.x), var_1.a.xz), select(!select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false)), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(true, var_0.x))), 1884f);
}

