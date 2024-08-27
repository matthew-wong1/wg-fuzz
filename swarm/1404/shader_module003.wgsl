struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44627u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> f32 {
    global0 = firstTrailingBit(0u);
    return arg_3.b.x;
}

fn func_2() -> Struct_3 {
    var var_0 = 2147483647i;
    let var_1 = !(~32125i < _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.a));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(593f)), -1386f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-406f))))), _wgslsmith_f_op_f32(-138f * _wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(select(-740f, -1622f, var_1)))), _wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-557f, _wgslsmith_f_op_f32(func_3(2216f, -1i, 1604f, Struct_2(vec3<bool>(var_1, false, false), vec2<f32>(-1785f, 172f)))), false)))), u_input.b);
    let var_3 = var_2.a.x < var_2.c;
    let var_4 = Struct_3(Struct_2(!select(vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, true, true), select(vec3<bool>(false, var_3, false), vec3<bool>(false, var_3, var_1), var_3)), vec2<f32>(-522f, _wgslsmith_f_op_f32(f32(-1f) * -525f))), firstLeadingBit(u_input.e.yy), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1294f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 1441f)))))), -1335f);
    return var_4;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = func_2();
    var_0 = Struct_3(arg_3.a, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b.x) - arg_1.x), 1785f), arg_1.x);
    var var_1 = -1048f;
    var var_2 = func_2().a;
    let var_3 = vec3<bool>(false, !(-373f != var_2.b.x), !var_2.a.x);
    return abs(countOneBits(vec3<u32>(1u, 0u, ~u_input.c.x))) & u_input.c.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_u32(19512u, firstTrailingBit(~(~u_input.c.x) | ((u_input.c.x ^ 61159u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x), u_input.e) % 32u))));
    global0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.e.x), 23270u);
    global0 = _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u) << (vec3<u32>(u_input.e.x, u_input.e.x, u_input.c.x) % vec3<u32>(32u)), ~u_input.e.wxx), abs(~13746u), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, 1u), ~1u))));
    global0 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, u_input.c.x), func_1(vec3<bool>(false, true, false), vec4<f32>(-886f, -381f, 494f, -1440f), false, Struct_3(Struct_2(vec3<bool>(false, false, false), vec2<f32>(1492f, -304f)), vec2<u32>(56650u, 89299u), vec2<f32>(-123f, -460f), 465f)))), _wgslsmith_mult_u32(4294967295u, abs(0u >> (u_input.c.x % 32u))), u_input.e.x);
    global0 = 68937u;
    global0 = 22553u;
    var var_0 = ~_wgslsmith_mult_u32(4294967295u, 0u);
    let var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec2_i32(u_input.b.zz, max(vec2<i32>(-1i, -19281i), u_input.b.xz)), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, var_1, min(u_input.a, -19207i), u_input.d), min(~vec4<i32>(var_1, -52623i, u_input.d, 14768i), vec4<i32>(1i, 1i, 1i, 1i))));
}

