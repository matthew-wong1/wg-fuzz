struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = -89006i;
    let var_1 = !arg_1;
    return ~(vec3<i32>(arg_0.x & -2147483647i, arg_3.a.e.x, _wgslsmith_mult_i32(arg_0.x, -2147483647i)) << (_wgslsmith_div_vec3_u32(select(u_input.c.yyy, u_input.c.xyz, var_1.xyx), countOneBits(vec3<u32>(1u, 0u, u_input.b))) % vec3<u32>(32u))) >> (~_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, u_input.a), u_input.c.yzy), vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 0u, 2816u, u_input.b)), u_input.c.x), firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, u_input.c.x))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = -32828i;
    var_0 = i32(-1i) * -1i;
    var var_1 = -reverseBits(select(~func_2(vec2<i32>(0i, 0i), arg_0, arg_0.x, Struct_2(Struct_1(false, vec2<bool>(false, arg_0.x), -662f, vec3<f32>(-678f, -422f, -184f), vec2<i32>(-36447i, -27675i)))), vec3<i32>(_wgslsmith_sub_i32(-37162i, -69873i), i32(-1i) * -1i, i32(-1i) * -2147483647i), vec3<bool>(true, false, true)));
    var_0 = -var_1.x;
    var var_2 = ~max(u_input.c, select(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.b, 4294967295u, 44769u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), u_input.c), ~vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 25408u), true));
    return -var_1.x >= 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = 375f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_3.x))));
    var var_1 = (0i | ~_wgslsmith_add_i32(arg_0.e.x, _wgslsmith_add_i32(arg_2.b.a.e.x, -76008i))) << (_wgslsmith_clamp_u32(41712u, u_input.c.x, ~u_input.a) % 32u);
    var_0 = 582f;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(1754f * arg_0.d.x), true)), _wgslsmith_f_op_f32(abs(-426f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2837f), arg_3.x))));
    return StorageBuffer(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1503f - _wgslsmith_f_op_f32(1289f * -1470f))))));
    var var_1 = 4294967295u;
    let x = u_input.a;
    s_output = func_3(Struct_1(true, vec2<bool>(true, all(vec3<bool>(false, false, true))), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -3068f, var_0))), ~(-(~vec2<i32>(-1i, -1i)))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(var_0 - var_0) <= -1436f), vec4<bool>(true, func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), select(any(vec2<bool>(false, true)), var_0 <= 573f, all(vec3<bool>(true, false, false))), true), true), Struct_4(false, Struct_2(Struct_1(true, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1843f, var_0), vec3<f32>(-1873f, -1281f, var_0)), vec2<i32>(63946i, 0i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(464f - 1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * 290f))), var_0)));
}

