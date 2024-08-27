struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> i32 {
    global0 = 22601u;
    global0 = _wgslsmith_clamp_u32(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(33737u, 29621u), vec2<u32>(u_input.a.x, 8539u)) | u_input.a.x)), arg_0.x, u_input.a.x);
    global0 = ~u_input.a.x;
    global0 = reverseBits(~(u_input.a.x | arg_0.x));
    var var_0 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true)));
    return -1i;
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = func_3(abs(~vec2<u32>(~u_input.a.x, u_input.a.x)), vec3<f32>(arg_0, arg_0, -331f));
    var var_1 = Struct_1(vec3<bool>(select(-2380i, func_3(u_input.a, vec3<f32>(arg_0, -505f, 1829f)), true) == 0i, !(all(vec2<bool>(false, true)) || (arg_0 <= -422f)), all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, 338f)))) <= -904f, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), false)));
    let var_2 = _wgslsmith_div_u32(u_input.a.x, 0u);
    var var_3 = vec2<u32>(27272u, var_2) | (vec2<u32>((var_2 >> (var_2 % 32u)) | ~var_2, 27259u) & ~u_input.a);
    let var_4 = Struct_3(countOneBits(~abs(u_input.a & vec2<u32>(var_2, var_3.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(716f)), arg_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-488f, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 1769f, arg_0)))))), false)));
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2482f, var_4.b.x, arg_0, var_4.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(713f, arg_0, -1848f, arg_0))))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -1724f), _wgslsmith_f_op_f32(arg_0 * 1050f), false))), var_4.b.x), Struct_1(select(select(vec3<bool>(false, false, var_1.b), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.a.x, false, var_1.a.x)), true), vec3<bool>(var_4.b.x == var_4.b.x, select(false, false, var_1.a.x), true), true), false, true));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = arg_2.b.yx;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))));
    return vec4<i32>(~(((arg_2.a.x ^ arg_2.a.x) | -1i) | arg_2.a.x), max(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-11937i, -2147483647i), arg_2.a), arg_2.a)), _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(19639i, -20478i, -10960i)) << (vec3<u32>(~u_input.a.x, 48702u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(arg_2.a.x, 1i, arg_2.a.x) | vec3<i32>(arg_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, arg_2.a.x, -19605i, arg_2.a.x), vec4<i32>(arg_2.a.x, arg_2.a.x, -1i, arg_2.a.x)), _wgslsmith_mod_i32(arg_2.a.x, arg_2.a.x))), arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    var var_0 = u_input.a.x;
    var var_1 = u_input.a.x;
    var var_2 = ~select(~_wgslsmith_mod_vec4_i32(vec4<i32>(21278i, 41476i, 1i, 1701i), func_1(-369f, u_input.a, Struct_5(vec2<i32>(-31763i, 35297i), vec3<bool>(false, false, false), vec3<f32>(-1158f, 1575f, -221f)))), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(5130i, 2147483647i, -1i), ~vec3<i32>(1031i, -5251i, 0i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -27239i, -34340i, -1i), vec4<i32>(-25905i, 51504i, -2147483647i, 17152i)), -2147483647i, 1i), !vec4<bool>(false, true, select(false, true, true), true));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(173f * 2040f)));
    let var_4 = 1871f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-1i, -var_2.x), firstLeadingBit(-firstLeadingBit(vec4<i32>(var_2.x, 1i, 0i, 1411i) & vec4<i32>(var_2.x, var_2.x, -2147483647i, var_2.x))), var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3, var_3, -139f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(264f, -504f, -524f) * vec3<f32>(var_4, var_3, var_4))))));
}

