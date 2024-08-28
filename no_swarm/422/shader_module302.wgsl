struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    var var_0 = arg_1;
    var var_1 = u_input.a.x << (~(~firstLeadingBit(max(1u, 0u))) % 32u);
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(~arg_3, ~_wgslsmith_mult_u32(32419u, arg_2.a.x)), ~77986u);
    global0 = array<Struct_2, 23>();
    var var_3 = u_input.a;
    return 1u;
}

fn func_2() -> bool {
    return select(false, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1435f, -1393f) + vec2<f32>(-1051f, 268f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2056f, -1839f, 2173f, 1200f) * vec4<f32>(523f, -529f, 1806f, 582f)), Struct_3(vec4<u32>(1u, 1u, 1u, 1u)), 30647u) < abs(~43204u), !(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))) | true));
}

fn func_3(arg_0: bool) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-443f + 1000f))), _wgslsmith_f_op_f32(717f * -224f), _wgslsmith_f_op_f32(f32(-1f) * -378f))), func_2() && true);
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = select(!select(!select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, false, var_0.b, true), false), select(!vec4<bool>(arg_0, var_0.b, true, false), !vec4<bool>(true, var_0.b, true, var_0.b), vec4<bool>(arg_0, false, true, arg_0)), true), select(select(vec4<bool>(u_input.a.x == u_input.a.x, var_0.b, !arg_0, any(vec3<bool>(true, true, var_0.b))), vec4<bool>(arg_0, var_0.b, arg_0 | true, all(vec4<bool>(true, arg_0, var_0.b, var_0.b))), select(select(vec4<bool>(true, var_0.b, var_0.b, true), vec4<bool>(true, true, true, true), var_0.b), vec4<bool>(var_0.b, arg_0, true, arg_0), arg_0)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, arg_0, var_0.b, false), select(vec4<bool>(arg_0, var_0.b, true, false), vec4<bool>(arg_0, arg_0, var_0.b, true), var_0.b)), false), select(!vec4<bool>(true, var_0.b, true, u_input.a.x < 1i), !(!vec4<bool>(false, arg_0, arg_0, var_0.b)), !select(select(vec4<bool>(var_0.b, arg_0, false, true), vec4<bool>(true, true, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), select(vec4<bool>(var_0.b, false, true, false), vec4<bool>(var_0.b, arg_0, true, true), var_0.b), var_0.b)));
    global0 = array<Struct_2, 23>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-475f))) + -129f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) + -296f))), 2147483647i, _wgslsmith_mult_vec2_i32(~(~u_input.a.yx) ^ vec2<i32>(-u_input.a.x, 2147483647i), vec2<i32>(min(u_input.a.x << (4294967295u % 32u), -23025i), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.a.x, -1000f)), _wgslsmith_f_op_f32(-var_0.a.x)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(536f * _wgslsmith_f_op_f32(var_0.a.x * -370f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, -576f, -242f) + vec3<f32>(-316f, -891f, -1000f)))))), vec2<u32>(~1u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2282f, -1501f) - vec2<f32>(-1398f, -174f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1326f, -814f, 1493f, -1813f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2081f, -1920f, -303f, 1000f))), Struct_3(firstLeadingBit(vec4<u32>(71537u, 0u, 67281u, 4294967295u))), 1u)));
    global0 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(-min(39998i, 32222i), 1i));
    global0 = array<Struct_2, 23>();
    var var_2 = var_0.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, var_0.b.x, _wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(abs(723f))), var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, 250f, var_0.b.x, -917f))))));
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = func_3(!var_0.a | func_2());
}

