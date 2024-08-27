struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(294f, -619f, -627f, -231f);

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(10211u, vec2<f32>(-412f, 847f), true, vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_3(0u, vec2<f32>(-576f, 1314f), true, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_3(0u, vec2<f32>(-2336f, 1046f), false, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_3(32794u, vec2<f32>(-1048f, -1108f), false, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_3(16789u, vec2<f32>(-844f, 2444f), false, vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_3(1u, vec2<f32>(-298f, 599f), true, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_3(1229u, vec2<f32>(-1495f, 374f), false, vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_3(64965u, vec2<f32>(-1860f, -419f), true, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_3(0u, vec2<f32>(-1462f, 392f), false, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_3(1u, vec2<f32>(510f, 162f), false, vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_3(0u, vec2<f32>(-1000f, -1051f), false, vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_3(51530u, vec2<f32>(1557f, 1328f), false, vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_3(0u, vec2<f32>(698f, -816f), true, vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_3(0u, vec2<f32>(-1010f, -216f), false, vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_3(0u, vec2<f32>(1456f, 171f), true, vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_3(4294967295u, vec2<f32>(-821f, -278f), true, vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_3(63945u, vec2<f32>(1000f, 584f), true, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_3(6218u, vec2<f32>(-1712f, -155f), true, vec2<bool>(true, true), vec3<bool>(true, true, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2568f, global0.x, -521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + global0.x) - _wgslsmith_f_op_f32(max(-289f, _wgslsmith_f_op_f32(-global0.x)))))));
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    return Struct_5(437f);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = 2147483647i;
    let var_1 = global0.zzz;
    global1 = array<Struct_3, 18>();
    let var_2 = func_2();
    var var_3 = true;
    return _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(arg_0, 1u))), ~vec2<u32>(1u, arg_0)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(29140u, 4058u), vec2<u32>(arg_0, 0u)), vec2<u32>(_wgslsmith_mod_u32(0u, 46707u), 74011u)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(61593u, 29182u, arg_0), reverseBits(0u)), ~arg_0)) % vec2<u32>(32u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = reverseBits(abs(arg_0));
    global1 = array<Struct_3, 18>();
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0.xzx);
    let var_3 = Struct_4(!vec4<bool>(true, false, !(-16428i >= u_input.a.x), any(vec4<bool>(false, false, false, true))), vec2<u32>(arg_0.x, 0u));
    return Struct_1(arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 18>();
    var var_0 = false;
    let var_1 = func_3(firstTrailingBit(_wgslsmith_mod_vec2_u32(func_1(abs(24099u), 1i, vec2<f32>(1799f, global0.x)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(62981u, 13098u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(37830u, 13111u), vec2<u32>(25401u, 3040u)), vec2<bool>(true, true)))), firstLeadingBit(vec4<i32>(min(i32(-1i) * -1i, reverseBits(u_input.b)), ~u_input.a.x, firstLeadingBit(min(u_input.a.x, u_input.a.x)), 2147483647i)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(global0.x, -1054f))), -191f))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a, -147f, -253f, -1388f))))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1000f, _wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(896f - global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * global0.x) * _wgslsmith_f_op_f32(-1002f + var_2.a)), 139f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_2.a)))), _wgslsmith_f_op_f32(-393f - 120f)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~max(~(u_input.a << (vec2<u32>(var_1.b, 122481u) % vec2<u32>(32u))), u_input.a), (~vec3<u32>(var_1.b, 4294967295u, var_1.b) >> (vec3<u32>(54632u >> (var_1.a % 32u), 0u, var_1.a) % vec3<u32>(32u))) | (vec3<u32>(_wgslsmith_clamp_u32(var_1.a, 0u, 4294967295u), _wgslsmith_div_u32(4294967295u, 790u), max(9259u, var_1.a)) >> (select(vec3<u32>(var_1.b, 4294967295u, 0u) ^ vec3<u32>(var_1.a, 1361u, var_1.b), _wgslsmith_add_vec3_u32(vec3<u32>(38845u, 66062u, var_1.a), vec3<u32>(var_1.b, 1u, var_1.b)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-139f + -1108f), _wgslsmith_f_op_f32(-var_2.a), all(vec4<bool>(false, true, all(vec4<bool>(true, false, false, false)), true)))), ~vec4<u32>(var_1.a, 4294967295u, var_1.a, ~(~63257u)));
}

