struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    return -abs(_wgslsmith_dot_vec2_i32(u_input.c, select(max(vec2<i32>(u_input.c.x, 5399i), vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(-2147483647i, u_input.c.x), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), false))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_i32(u_input.c.x, select(i32(-1i) * -30553i, -func_3(Struct_2(arg_1.b), -165f), false));
    let var_2 = Struct_2(true);
    var var_3 = abs(0u);
    let var_4 = 1f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_4) * vec2<f32>(-1017f, 749f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1587f, var_4) + vec2<f32>(-533f, 793f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1483f, 1099f) - vec2<f32>(var_4, var_4)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-874f, var_4), vec2<f32>(629f, var_4))), arg_1.a.x)))));
}

fn func_1() -> i32 {
    var var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, ~(-1i)), u_input.c.x, 41279i));
    var_0 = -abs(vec3<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), ~(var_0.x << (u_input.a % 32u)), ~(-16930i)));
    var_0 = vec3<i32>(~(-16338i), _wgslsmith_mod_i32(-var_0.x, -_wgslsmith_div_i32(var_0.x, u_input.c.x)) | 1i, u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(u_input.b, 0u, u_input.a), Struct_1(vec3<bool>(true, false, false), false)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1214f)), -1109f)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(-u_input.c.x, func_1()), -1i, -4456i >> (0u % 32u), u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2102f)))), _wgslsmith_f_op_f32(-891f - -641f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_2(~vec3<u32>(u_input.a, 0u, u_input.a), Struct_1(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), true))).x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -171f);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~vec4<u32>(10821u, u_input.a, 0u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 59493u, 0u, 47352u) ^ vec4<u32>(u_input.b, 1u, 1u, 50116u), ~vec4<u32>(4294967295u, 19252u, 39904u, u_input.b), abs(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a))) ^ select(~vec4<u32>(u_input.a, u_input.b, 15643u, 118896u), ~vec4<u32>(u_input.a, 9326u, 119563u, 27091u), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1403f, -245f, -300f, -654f) + vec4<f32>(933f, -1011f, -101f, 503f)), vec4<f32>(-1077f, 531f, -1134f, -2008f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, 842f, 618f, 1037f)))), _wgslsmith_f_op_f32(ceil(-1563f)), select(1u, u_input.b, all(vec2<bool>(true, true))), -1i);
}

