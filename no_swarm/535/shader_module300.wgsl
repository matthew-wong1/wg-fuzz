struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_div_i32(-(~(-(i32(-1i) * -51216i))), 1i);
    let var_0 = _wgslsmith_f_op_f32(964f - _wgslsmith_f_op_f32(round(-1276f)));
    global0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1096f, _wgslsmith_f_op_f32(531f + var_0))));
    var var_2 = abs(-_wgslsmith_div_i32(6736i, _wgslsmith_mod_i32(-44435i, 2147483647i >> (1u % 32u))));
    return 37704u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    global1 = array<vec2<i32>, 15>();
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(37582u, func_3(), 6598u), firstTrailingBit(_wgslsmith_sub_vec3_u32(arg_2.b.b.xzx, ~select(vec3<u32>(arg_2.c, 0u, 10471u), arg_2.b.b.zyy, true))));
    let var_1 = arg_2.b;
    let var_2 = u_input.a;
    var var_3 = Struct_4(1f, Struct_3(!vec2<bool>(true, select(true, true, true))));
    return -2147483647i;
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_mult_vec2_u32(~(~_wgslsmith_sub_vec2_u32(u_input.c, u_input.c)), u_input.c), Struct_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, func_2(2147483647i, 572f, Struct_2(arg_0, Struct_1(0u, vec4<u32>(1u, u_input.c.x, 4294967295u, 94070u), 1348f, vec3<u32>(u_input.c.x, 0u, u_input.c.x)), u_input.d))), 0i, _wgslsmith_mod_i32(reverseBits(arg_0), ~u_input.a.x)), Struct_1(1u, vec4<u32>(~17928u, 39529u, u_input.c.x, 31883u & u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-529f))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(27568u, 1u, 1u), vec3<u32>(u_input.d, 44845u, 24037u)), abs(vec3<u32>(u_input.c.x, 640u, 68518u)))), u_input.d & _wgslsmith_dot_vec2_u32(vec2<u32>(37012u, 4294967295u), select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), false))));
    global0 = -2147483647i;
    var var_1 = var_0.b.b;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-309f, var_1.c)) - var_0.b.b.c))), Struct_3(vec2<bool>(!(arg_0 != -2147483647i), all(vec2<bool>(true, true)) | true)));
    var var_3 = u_input.a.yx;
    return Struct_3(!var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_1 = func_1(~0i);
    var_1 = Struct_3(!var_1.a);
    global0 = u_input.a.x;
    global0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(62555i, -u_input.a.x), ~(-28922i)), ~0i) << (u_input.d % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, -1168f), -617f, 209f, 330f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, 1519f), vec4<f32>(130f, -685f, -540f, 1819f), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1349f, 1026f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, -1586f, var_0.x)))), all(!select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, true))))), -689f, u_input.a.x, u_input.d);
}

