struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_div_u32(firstLeadingBit(~min(~27443u, abs(u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(~38195u, ~u_input.c.x), abs(47943u)), ~vec3<u32>(arg_0.b.x, ~25580u, u_input.c.x)));
    var_0 = _wgslsmith_mult_u32(0u, 4294967295u);
    var_0 = _wgslsmith_mult_u32(1u, ~(~(~u_input.c.x))) | 0u;
    var_0 = _wgslsmith_mult_u32(arg_0.b.x, 4294967295u);
    var_0 = _wgslsmith_clamp_u32(u_input.d >> (u_input.b % 32u), 0u, arg_0.b.x);
    return select(arg_0.c, vec3<bool>(!(any(vec2<bool>(arg_0.c.x, false)) & true), true, arg_0.c.x), vec3<bool>(false, arg_0.c.x, all(select(vec2<bool>(true, false), vec2<bool>(arg_0.c.x, arg_0.c.x), true))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    var var_0 = ~u_input.e.x;
    var_0 = max(u_input.a, ((u_input.a << (76535u % 32u)) | 2147483647i) | u_input.e.x) | -13009i;
    var var_1 = Struct_2(Struct_1(~u_input.e.x), u_input.c | _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, 1u) >> (vec3<u32>(3748u, u_input.c.x, 26670u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.c & u_input.c, ~vec3<u32>(1u, u_input.d, u_input.c.x))), select(!(!func_3(Struct_2(Struct_1(u_input.e.x), u_input.c, vec3<bool>(arg_1, false, false)))), func_3(Struct_2(Struct_1(2147483647i), vec3<u32>(1u, 13519u, u_input.c.x), vec3<bool>(true, true, false))), !(!func_3(Struct_2(Struct_1(-1i), vec3<u32>(0u, 19591u, 47491u), vec3<bool>(false, false, false))))));
    var var_2 = false;
    let var_3 = Struct_4(50676i, !vec4<bool>(arg_2.x | all(vec3<bool>(arg_2.x, true, false)), all(vec2<bool>(arg_2.x, false)), false, !arg_1 != true));
    return var_1.a.a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    var var_0 = vec3<i32>(~(~u_input.e.x), (func_2(_wgslsmith_div_vec2_f32(vec2<f32>(889f, -2085f), vec2<f32>(466f, 679f)), arg_2.x, arg_2.yy) | (i32(-1i) * -arg_1)) << (_wgslsmith_add_u32(~_wgslsmith_sub_u32(4294967295u, 1u), ~arg_3) % 32u), arg_0);
    let var_1 = Struct_3(Struct_2(Struct_1(~50193i), vec3<u32>(arg_3, ~arg_3, u_input.b), arg_2.xzw), Struct_1(-max(var_0.x & 2147483647i, _wgslsmith_clamp_i32(27865i, -1i, arg_0))), Struct_2(Struct_1(arg_0), vec3<u32>(1u, arg_3, ~_wgslsmith_mult_u32(u_input.d, arg_3)), arg_2.yyy), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, ~_wgslsmith_clamp_i32(arg_1, 4590i, 1i), -2147483647i, 1i), vec4<i32>(-1i, ~firstTrailingBit(12891i), _wgslsmith_add_i32(-arg_1, arg_0), -22231i)), Struct_1(arg_0 | 0i));
    var var_2 = Struct_4(_wgslsmith_div_i32(0i, select(abs(u_input.e.x), firstLeadingBit(u_input.e.x), any(select(arg_2, arg_2, false)))), vec4<bool>(false, arg_2.x, all(var_1.a.c.yy), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(129f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -798f), -858f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(f32(-1f) * -1001f)) + vec4<f32>(1132f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 653f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1012f, 655f), _wgslsmith_f_op_f32(max(863f, 254f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -910f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(382f)) + _wgslsmith_div_f32(-249f, -1000f)) + _wgslsmith_f_op_f32(step(-656f, -541f)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -721f);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i, -42769i, vec4<bool>(false, true, true, false), u_input.d)) + _wgslsmith_f_op_f32(sign(565f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1302f, -1194f) - -1277f)), -1000f), -1893f, _wgslsmith_f_op_f32(-694f + -571f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(177f)), _wgslsmith_f_op_f32(545f * _wgslsmith_f_op_f32(-1000f + -1897f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1432f, -617f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(642f)), -226f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1507f, -1464f, -1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, 203f, -1000f, -1135f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-540f, -731f, -880f, 230f), vec4<f32>(-861f, 564f, 1769f, 377f)))))), u_input.b);
}

