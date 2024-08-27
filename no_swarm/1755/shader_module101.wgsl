struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(arg_0.a, ~_wgslsmith_mult_u32(arg_0.a, arg_0.a))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 13243u, 31348u), _wgslsmith_mult_u32(~(~3867u), u_input.b.x)));
    return !(!arg_0.b.xy);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = 0u;
    var var_1 = ~abs(vec4<u32>(~(~u_input.a.x), arg_0.b, max(u_input.b.x, var_0), u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(abs(725f));
    var_1 = vec4<u32>(arg_0.b, ~1u & u_input.a.x, ~arg_0.b, 0u);
    let var_3 = i32(-1i) * -(~_wgslsmith_mod_i32(-arg_0.c, arg_0.c));
    return 1270f;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = min(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~u_input.a.x), select(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.b.x, 0u), func_1(Struct_1(u_input.a.x, vec3<bool>(true, false, false), arg_2.x)))), vec2<u32>(1u & ~u_input.b.x, 1u)), abs(_wgslsmith_sub_u32(~1u, abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)))));
    let var_1 = arg_2.x;
    var var_2 = Struct_3((i32(-1i) * -1i) > (_wgslsmith_mod_i32(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1, 2147483647i), arg_2)) >> (abs(65802u) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1, 1i), -973i, 25369i), _wgslsmith_clamp_i32(12725i, ~2147483647i, min(var_1, -18670i))), arg_2.yx), Struct_2(!select(true, true, all(vec2<bool>(false, false))), countOneBits(u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(21666u, var_0, 0u, 105122u), vec4<u32>(var_0, u_input.a.x, u_input.b.x, var_0)) % 32u)), var_1), arg_0, vec3<i32>(2147483647i, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1, 27440i, var_1, arg_2.x), -vec4<i32>(var_1, 1i, arg_2.x, var_1))), i32(-1i) * -(var_1 ^ arg_2.x)));
    let var_3 = arg_1;
    var_2 = Struct_3(true, -15797i, var_2.c, arg_0, vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(~var_2.c.c, _wgslsmith_sub_i32(-487i, arg_2.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -2147483647i), firstLeadingBit(arg_2.zx)), -abs(vec2<i32>(-2147483647i, 15922i))), var_1));
    return vec3<u32>(15573u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b >> (vec2<u32>(var_2.c.b, 34675u) % vec2<u32>(32u)), min(u_input.b, u_input.a)), var_2.c.b, 20986u), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(24317u, u_input.a.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0, 9876u), select(vec3<u32>(u_input.b.x, var_2.c.b, var_0), vec3<u32>(17833u, u_input.a.x, var_2.c.b), vec3<bool>(var_2.c.a, false, var_2.a))))), _wgslsmith_add_u32(var_0, u_input.b.x));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1085f, -1000f))), _wgslsmith_f_op_f32(1618f * _wgslsmith_f_op_f32(func_3(Struct_2(true, 6677u, 2147483647i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(step(968f, 1000f))), !(!vec2<bool>(arg_0.x, false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1057f, 364f), vec2<f32>(567f, 867f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1413f, 1496f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1672f, -133f), vec2<f32>(-1017f, -617f), vec2<bool>(arg_0.x, true)))))), vec3<i32>(abs(-1i), -1i, countOneBits(-firstTrailingBit(25079i))));
    return !(!(!(!arg_0.x))) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), func_1(Struct_1(41363u, vec3<bool>(false, true, false), 27295i)), vec2<bool>(true, true)), !(!vec2<bool>(func_2(vec4<bool>(true, true, true, false)), true)), !select(vec2<bool>(all(vec3<bool>(false, true, false)), select(false, true, false)), vec2<bool>(true, true), select(true, all(vec2<bool>(true, false)), all(vec2<bool>(false, false)))));
    var var_1 = ~(~vec3<u32>(~_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_sub_u32(abs(1u), ~u_input.a.x), 1u << (1u % 32u)));
    var_1 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(~u_input.b.x, 1u, u_input.a.x)), ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 68463u, 0u) & vec3<u32>(43430u, 4294967295u, 33750u), ~vec3<u32>(108917u, u_input.b.x, var_1.x)), vec3<u32>(u_input.b.x << (51234u % 32u), ~4294967295u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(countOneBits(11223i), 1i)));
}

