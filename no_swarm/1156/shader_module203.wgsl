struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + -147f) * 407f) - -817f)));
    let var_0 = -1155f;
    global0 = _wgslsmith_f_op_f32(sign(-217f));
    var var_1 = vec4<i32>(abs(11910i) & ~(-_wgslsmith_clamp_i32(arg_2.b, arg_3.b, arg_2.b)), 18430i, ~(~_wgslsmith_add_i32(~arg_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(29823i, arg_0.d), vec2<i32>(14192i, arg_2.b)))), select(arg_0.d, reverseBits(arg_2.b) ^ arg_2.b, true));
    var_1 = vec4<i32>(0i, var_1.x, 2147483647i << (min(~_wgslsmith_dot_vec3_u32(vec3<u32>(108185u, arg_0.a, 74645u), u_input.a), u_input.d.x) % 32u), ~(-16145i));
    return ~u_input.b;
}

fn func_3() -> u32 {
    var var_0 = ~u_input.d.xz;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, -135f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, 743f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -546f) * vec2<f32>(606f, 604f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-235f, -281f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-271f, -1196f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1271f, 1404f) - vec2<f32>(881f, -426f))), vec2<bool>(false, true))))));
    var var_2 = false;
    var_2 = !(!(~(~u_input.a.x) <= ~(~80461u)));
    let var_3 = abs(~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 59116u), _wgslsmith_mod_vec2_u32(u_input.d.yy, u_input.d.zz))));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-695f, -424f, 634f, 2000f), vec4<f32>(-1249f, 982f, 140f, -382f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -541f, 2067f, -571f) - vec4<f32>(1614f, 1776f, -1494f, 1852f)))))));
    var var_1 = Struct_2(4294967295u, 4294967295u, true, countOneBits(~(~firstLeadingBit(arg_1.d))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(208f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)))))));
    var var_2 = !select(!(!select(vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, true), var_1.c)), !select(select(vec2<bool>(var_1.c, false), vec2<bool>(true, var_1.c), vec2<bool>(var_1.c, true)), !vec2<bool>(true, var_1.c), arg_1.c), select(!(!vec2<bool>(arg_1.c, true)), !(!vec2<bool>(true, arg_1.c)), _wgslsmith_clamp_i32(arg_1.d, -1i, -2147483647i) > (i32(-1i) * -20170i)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -933f))), _wgslsmith_f_op_f32(-940f + var_0.x), var_0.x, -578f)));
    return ~_wgslsmith_add_u32(0u << ((abs(39284u) & u_input.a.x) % 32u), ~_wgslsmith_div_u32(min(u_input.a.x, 13982u), 4294967295u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_1(select(arg_2, arg_3.zx, arg_2.x), 58547i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1249f, -576f, -438f, 591f)))))), !vec2<bool>(select(false, true, false) || arg_3.x, arg_3.x), 0u >= func_4(~func_2(Struct_2(u_input.c, 83567u, arg_3.x, 1i), arg_3.yzy, Struct_1(vec2<bool>(arg_2.x, false), arg_1.x, vec4<f32>(-304f, -478f, 215f, -163f), vec2<bool>(false, true), false), Struct_1(arg_3.yy, arg_1.x, vec4<f32>(1000f, -797f, 641f, -898f), arg_2, arg_2.x)), Struct_2(func_3(), _wgslsmith_add_u32(u_input.d.x, 0u), arg_3.x, _wgslsmith_mult_i32(arg_1.x, arg_0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, u_input.c), vec4<u32>(62140u, 4294967295u, u_input.b, u_input.c)), ~u_input.a.x, abs(u_input.b), u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), firstTrailingBit(vec3<i32>(0i, arg_1.x, arg_0.x)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))) + 1325f)));
    global0 = -416f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(func_1(vec2<i32>(-1i, -1i), vec2<i32>(1i, 1i), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec4<bool>(false, false, false, false)), firstTrailingBit(1i), _wgslsmith_sub_i32(select(-5635i, 2147483647i, true), -2147483647i), -37824i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -216f), -736f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1023f - -2153f), 405f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-294f)))))), vec2<f32>(754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + 220f)), u_input.a.xx & ~vec2<u32>(~57137u, u_input.c));
}

