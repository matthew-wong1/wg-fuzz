struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = array<vec3<f32>, 23>();
    global0 = array<vec3<f32>, 23>();
    var var_0 = select(countOneBits(vec3<u32>(17954u, max(u_input.a.x, 1u), 1u)), reverseBits(~vec3<u32>(u_input.a.x, u_input.a.x, arg_2.x)) | u_input.a, true) ^ vec3<u32>(0u, (u_input.b << (firstTrailingBit(4294967295u) % 32u)) >> (~(~24175u) % 32u), abs(63879u));
    global1 = array<Struct_1, 16>();
    var_0 = u_input.a;
    return select(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 0u, 4048u), arg_2) >= (67976u << (1u % 32u))), true), vec2<bool>(true, true));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    var var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), func_3(vec3<i32>(-18582i, 0i, 13311i), vec2<i32>(2147483647i, 0i), vec4<u32>(arg_1, u_input.b, 17349u, 19324u))), vec2<bool>(true, all(vec4<bool>(false, false, true, true))), !(11505u == arg_1)), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) + 1032f) > _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_0 * -839f)), true || ((arg_0 >= 373f) != true)), all(vec3<bool>(true, false, false)));
    global1 = array<Struct_1, 16>();
    var var_1 = ~(~(~abs(firstLeadingBit(arg_2.x))));
    global0 = array<vec3<f32>, 23>();
    global0 = array<vec3<f32>, 23>();
    return _wgslsmith_f_op_f32(f32(-1f) * -755f);
}

fn func_1() -> u32 {
    var var_0 = 289f;
    global0 = array<vec3<f32>, 23>();
    global0 = array<vec3<f32>, 23>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(607f)), _wgslsmith_clamp_u32(u_input.b, u_input.b, 25058u), ~vec2<u32>(28250u, 80746u))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(531f, 947f, false)))))))));
    global0 = array<vec3<f32>, 23>();
    return u_input.a.x | u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 23>();
    let var_0 = global1[_wgslsmith_index_u32(0u ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~u_input.b), func_1()), ~reverseBits(~41369u)), 16u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(446f, var_0.b), vec2<f32>(var_0.b, var_0.b))))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b - -479f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + vec2<f32>(var_0.b, 536f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1156f, var_0.b), vec2<f32>(281f, var_0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 - var_1)), 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1970f, 1216f, var_1.x, var_0.b) * vec4<f32>(var_0.b, 152f, var_0.b, var_0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1507f, -621f, var_0.b) * vec4<f32>(-598f, -1000f, -1131f, -1740f))))), i32(-1i) * -1i, vec4<f32>(1147f, 777f, _wgslsmith_f_op_f32(func_2(1440f, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u), u_input.a.x), firstTrailingBit(var_0.c))), -1330f));
}

