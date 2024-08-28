struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: array<vec2<f32>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec2<f32>, 27>();
    var var_0 = Struct_3(arg_3.a);
    let var_1 = u_input.d;
    global0 = array<vec2<f32>, 27>();
    let var_2 = Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.b, arg_1.b))) - _wgslsmith_f_op_vec3_f32(min(arg_1.b, arg_1.b)))), !(!((arg_1.d.x > 2147483647i) && true)), u_input.d);
    return arg_3.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = 1i;
    let var_1 = Struct_3(func_2((vec4<u32>(1u, arg_1.a, 4294967295u, arg_1.a) | vec4<u32>(arg_1.a, 4294967295u, arg_1.a, arg_1.a)) ^ ~(vec4<u32>(44280u, 4294967295u, arg_1.a, 100107u) & vec4<u32>(48191u, arg_1.a, arg_1.a, 28142u)), Struct_1(!any(arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-776f, -626f, -966f))), true, u_input.d), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, any(arg_0), false), vec3<bool>(any(vec4<bool>(true, false, false, arg_0.x)), false, arg_1.a <= 0u)), Struct_3(Struct_2(select(arg_1.a, arg_1.a, arg_0.x)))));
    let var_2 = !(false & arg_0.x);
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(10360u, var_1.a.a, var_1.a.a, arg_1.a) >> (vec4<u32>(70593u, var_1.a.a, 59933u, var_1.a.a) % vec4<u32>(32u)), vec4<u32>(0u, 4294967295u, var_1.a.a, 39686u) & vec4<u32>(var_1.a.a, 36852u, arg_1.a, 7091u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.a, arg_1.a, arg_1.a, 0u), vec4<u32>(0u, 0u, 1u, var_1.a.a))), ~_wgslsmith_clamp_u32(~0u, 0u, 58646u)), abs((select(vec2<u32>(57843u, arg_1.a), vec2<u32>(arg_1.a, 4294967295u), vec2<bool>(arg_0.x, arg_0.x)) >> (vec2<u32>(0u, var_1.a.a) % vec2<u32>(32u))) & min(countOneBits(vec2<u32>(var_1.a.a, 1u)), vec2<u32>(13270u, var_1.a.a))), select(vec2<u32>(_wgslsmith_mult_u32(arg_1.a, 6490u), 4294967295u), (vec2<u32>(71926u, arg_1.a) | vec2<u32>(4294967295u, var_1.a.a)) ^ vec2<u32>(10152u, 101153u), true) << (_wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(var_1.a.a, var_1.a.a)), ~vec2<u32>(18968u, arg_1.a)) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = arg_1;
    global0 = array<vec2<f32>, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-877f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f + _wgslsmith_f_op_f32(select(236f, 600f, arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-927f + _wgslsmith_f_op_f32(trunc(532f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), 1249f, -407f))))));
    let var_2 = vec2<bool>(false, all(!select(vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true))));
    var var_3 = Struct_3(arg_1.a);
    return Struct_2(~min(var_0.a.a, var_3.a.a));
}

fn func_1() -> vec4<f32> {
    var var_0 = firstTrailingBit(1u);
    var var_1 = func_4(false, Struct_3(Struct_2(~4294967295u)), ~(~func_3(vec2<bool>(true, true), func_2(vec4<u32>(10684u, 27407u, 23779u, 23623u), Struct_1(false, vec3<f32>(2932f, -209f, -323f), false, u_input.d), vec3<bool>(true, true, true), Struct_3(Struct_2(70490u))), vec4<f32>(1101f, -565f, 1000f, -1747f))));
    let var_2 = Struct_2(30361u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f + -219f) + -703f), _wgslsmith_f_op_f32(min(-1000f, -1064f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f - -482f)), _wgslsmith_div_f32(-711f, -286f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_2 = u_input.d;
    global0 = array<vec2<f32>, 27>();
    var_0 = false;
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) >= 0u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(var_1.x + var_1.x)), 248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1152f * var_1.x))))), any(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false, true, true)), vec2<i32>(-_wgslsmith_div_i32(u_input.b, -2147483647i), var_2.x >> (~1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x + -345f));
}

