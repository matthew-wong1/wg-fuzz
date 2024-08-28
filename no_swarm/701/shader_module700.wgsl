struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = arg_0.b.xy;
    var var_1 = Struct_2(arg_0.a, ~select(arg_0.b, vec3<u32>(~arg_1.x, _wgslsmith_add_u32(4294967295u, arg_1.x), max(0u, 0u)), vec3<bool>(true, true, true)));
    let var_2 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true));
    var_0 = abs(~max(select(_wgslsmith_sub_vec2_u32(arg_0.b.yz, var_1.b.xy), ~arg_1, !var_2.xx), vec2<u32>(~var_1.b.x, 0u)));
    var var_3 = 0u;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1456f, _wgslsmith_div_f32(-1392f, var_1.a.x))) * _wgslsmith_f_op_f32(step(arg_0.a.x, -1376f))), -254f), _wgslsmith_f_op_f32(select(396f, arg_0.a.x, true)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1186f, 629f, true)), _wgslsmith_f_op_f32(sign(160f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1476f, -772f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(992f, -427f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-617f, -996f) * vec2<f32>(508f, 1000f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1276f, -1302f), vec2<f32>(1106f, -606f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, 151f)), ~vec3<u32>(29116u, 35786u, 41853u)), vec2<u32>(1u, 1u))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1241f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, false)))))), vec3<u32>(26545u, _wgslsmith_add_u32(~4294967295u, ~_wgslsmith_div_u32(1u, 26112u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(~44944u, 61086u), 1u)));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(320f, -1197f, true))), _wgslsmith_f_op_f32(abs(766f)))), var_1.b);
    var_0 = var_1.a;
    return Struct_2(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(ceil(var_0.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(80118u, var_1.b.x, 16072u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 0u)), var_1.b.x, 52464u >> (var_1.b.x % 32u)), var_1.b));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> vec2<f32> {
    var var_0 = func_2();
    let var_1 = arg_1 << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_0.b, countOneBits(vec3<u32>(var_0.b.x, var_0.b.x, arg_0.b.x)) << (var_0.b % vec3<u32>(32u))), abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, arg_0.b.x, arg_0.b.x), var_0.b), min(var_0.b, arg_0.b)))) % 32u);
    var var_2 = Struct_1(!select(vec3<bool>(all(vec3<bool>(arg_3, arg_3, true)), 43384u >= var_0.b.x, arg_3 & true), !vec3<bool>(arg_3, false, arg_3), arg_3), vec4<u32>(abs(abs(~var_0.b.x)), _wgslsmith_add_u32(arg_0.b.x, _wgslsmith_sub_u32(abs(var_0.b.x), arg_0.b.x)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~23181u, var_0.b.x), 4294967295u)), ~abs(firstTrailingBit(34962u >> (arg_0.b.x % 32u))), arg_2.x);
    return arg_2.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, 1000f) * vec2<f32>(-181f, 781f)), vec3<u32>(4294967295u, 4943u, 16109u)), u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-1854f)), _wgslsmith_f_op_f32(f32(-1f) * -861f)), all(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec2_f32(func_3(func_2(), vec2<u32>(1u, 1u)))), ~countOneBits(vec3<u32>(~25759u, 1u, 1u)));
    let var_1 = max(_wgslsmith_mult_u32(max(_wgslsmith_div_u32(~59100u, 1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(11387u, var_0.b.x, 44802u, var_0.b.x)), ~vec4<u32>(29754u, 4294967295u, 3388u, var_0.b.x))), select(~1u, 10341u, !all(vec4<bool>(true, true, false, false)))), var_0.b.x);
    let var_2 = u_input.d.x;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-449f, var_0.a.x), var_0.a, vec2<bool>(false, false)))))), var_0.b);
    var_0 = func_2();
    var var_3 = func_2();
    let var_4 = func_2();
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(807f, min(max(min(vec3<u32>(1u, var_1, var_4.b.x) << (var_4.b % vec3<u32>(32u)), vec3<u32>(4294967295u, 29010u, 1u)), ~(~vec3<u32>(12341u, 43089u, var_4.b.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_3.b.x, 1u, 4294967295u), 1u, ~var_3.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.b.x, var_3.b.x, var_1) & vec3<u32>(0u, 0u, 3052u), ~vec3<u32>(var_4.b.x, var_3.b.x, 4294967295u)))));
}

