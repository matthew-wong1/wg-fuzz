struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<u32>, 9>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    global0 = arg_0;
    var var_0 = 665f;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(arg_3)), arg_2);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -1490f, 195f, -538f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, -261f, arg_1.a.x, 713f), vec4<f32>(arg_3, -635f, var_1.a, -714f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(672f, arg_2.a.x, arg_1.a.x, 310f), vec4<f32>(arg_1.a.x, -203f, arg_2.a.x, 429f), false)))))))));
    global1 = array<vec3<u32>, 9>();
    return select(vec4<bool>(true, true, true, true), vec4<bool>(!(countOneBits(arg_0.x) <= reverseBits(arg_0.x)), true, all(vec2<bool>(true, all(vec3<bool>(false, true, false)))), false), (any(vec4<bool>(true, true, true, true)) != false) | (u_input.e.x != _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(33119u, u_input.c)), u_input.a.yy & u_input.a.xw)));
}

fn func_2() -> Struct_3 {
    global1 = array<vec3<u32>, 9>();
    var var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, 1115f))) + vec2<f32>(1f, 1f)));
    let var_2 = !select(!func_3(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(8479i, 2147483647i)), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x)), Struct_1(var_1.a), _wgslsmith_f_op_f32(-529f + var_1.a.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), func_3(vec2<i32>(-2147483647i, 1i), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x)), Struct_1(var_1.a), var_1.a.x), select(true, false, true)), select(func_3(vec2<i32>(global0.x, global0.x), Struct_1(var_1.a), Struct_1(vec2<f32>(-694f, var_1.a.x)), 1454f), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), true)), vec4<bool>(all(vec3<bool>(false, false, true)), false, !all(vec4<bool>(false, false, false, true)), true));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.a, _wgslsmith_f_op_vec2_f32(min(var_1.a, var_1.a))))));
    return Struct_3(Struct_2(var_1.a.x, Struct_1(var_1.a)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = func_2();
    return 37042i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.b, ~u_input.b);
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(-33965i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(47088i, global0.x), vec2<i32>(0i, global0.x)) & (-25851i >> (u_input.a.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, 39148i), -global0.x))), select(vec2<i32>(func_1(vec2<u32>(4294967295u, u_input.d.x), vec3<f32>(1001f, -1283f, 541f), vec2<f32>(636f, -2078f)), -(~1i)), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(26879i, global0.x)), ~vec2<i32>(-43409i, -22663i))), true || any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~_wgslsmith_sub_u32(u_input.b, u_input.d.x), ~u_input.b), u_input.d.zw);
    var var_1 = firstLeadingBit(max(vec2<u32>(68656u, u_input.c), vec2<u32>(u_input.d.x, 1u)) & vec2<u32>(0u | ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x | u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.d.x, u_input.c), vec4<u32>(47333u, 1298u, u_input.c, u_input.b)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(171f, _wgslsmith_f_op_f32(209f + 1761f), -194f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, -1639f, -844f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2939f, -598f, 1769f), vec3<f32>(279f, 1437f, 2025f), vec3<bool>(false, false, false))), vec3<bool>(true, true, false))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1107f + 540f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1516f)))));
    var_1 = max(u_input.e.zz, ~(u_input.a.yz >> (~u_input.e.zx % vec2<u32>(32u)))) >> (~(u_input.a.xx << ((_wgslsmith_mod_vec2_u32(u_input.e.zz, vec2<u32>(u_input.e.x, 0u)) >> (u_input.a.xx % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zy);
}

