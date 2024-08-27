struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29484i;

var<private> global1: array<vec4<bool>, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = all(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, true)));
    var var_1 = vec2<f32>(arg_2, -206f);
    var var_2 = 46558u;
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> u32 {
    global1 = array<vec4<bool>, 24>();
    var var_0 = ~vec3<u32>(~firstTrailingBit(~21309u), ~(~firstLeadingBit(0u)), ~(arg_0.a | 13930u) << (~func_1(-1372f, Struct_1(arg_0.a), arg_2.a.x).a % 32u));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -47931i, arg_2.c.a), abs(select(vec3<i32>(arg_2.c.a, arg_2.c.a, u_input.a), vec3<i32>(-1i, 15085i, arg_2.c.a), vec3<bool>(true, true, false)) ^ vec3<i32>(-28545i, 2147483647i, arg_2.c.a))) ^ u_input.a;
    return ~_wgslsmith_add_u32(arg_0.a, arg_1);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = abs(~arg_3.a & _wgslsmith_mod_u32(u_input.b.x, ~u_input.c)) ^ 8150u;
    let var_1 = max(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b) << (vec4<u32>(arg_3.a, 31487u, u_input.c, arg_3.a) % vec4<u32>(32u)), u_input.b), u_input.b));
    var var_2 = Struct_2(u_input.a, vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), Struct_1(_wgslsmith_div_u32(u_input.b.x, 1u)), Struct_1(~var_1));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-2125f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -430f))), arg_2.x), var_2.b.x, Struct_2(-2147483647i | _wgslsmith_mult_i32(u_input.a, u_input.a | arg_1), _wgslsmith_f_op_vec2_f32(-arg_2.xz), var_2.c, Struct_1(abs(var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 12346i;
    let var_0 = func_3((func_2(func_1(-749f, Struct_1(u_input.b.x), 1088f), u_input.c, Struct_3(vec2<f32>(576f, 1158f), -1174f, Struct_2(u_input.a, vec2<f32>(-1000f, -297f), Struct_1(1u), Struct_1(u_input.c)))) == ~_wgslsmith_mod_u32(u_input.b.x, 70632u)) || all(vec3<bool>(true, true, true)), 8879i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -428f, 645f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(954f, -761f, -1000f) * vec3<f32>(-928f, -1990f, -387f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, 696f, 908f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(709f, -240f, -845f) + vec3<f32>(537f, -528f, -713f)))))), Struct_1(40331u));
    global0 = -1i;
    global1 = array<vec4<bool>, 24>();
    let var_1 = Struct_2(var_0.c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1868f)), _wgslsmith_f_op_f32(var_0.c.b.x * 1f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f * _wgslsmith_f_op_f32(-var_0.b))), Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xyy, vec3<u32>(24490u, 44982u, u_input.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))))), Struct_1(var_0.c.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(i32(-1i) * -var_0.c.a), countOneBits(_wgslsmith_clamp_i32(abs(u_input.a), ~1i, _wgslsmith_add_i32(var_0.c.a, 1i)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -202f, var_0.b, 432f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.b.x, var_1.c.a), min(firstLeadingBit(vec3<u32>(var_1.c.a, var_1.d.a, var_1.c.a)), vec3<u32>(var_0.c.d.a, u_input.b.x, var_1.d.a) >> (vec3<u32>(var_0.c.c.a, var_1.c.a, 2532u) % vec3<u32>(32u)))), 24u)])), -5300i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_1.b, var_1.b, vec2<bool>(false, true))))) * vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_0.a.x)))));
}

