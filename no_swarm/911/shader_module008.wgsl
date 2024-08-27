struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), -758f, vec3<u32>(3909u, 0u, 0u), 766f, 693f);

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = ~47716u;
    var var_1 = Struct_2(~_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_3.a, arg_3.a), _wgslsmith_mult_i32(firstLeadingBit(arg_2.x), ~(-2147483647i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -375f), global0.d, _wgslsmith_f_op_f32(abs(-1406f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, -983f, 194f, 734f) - vec4<f32>(global1.e, global1.e, -260f, arg_0.x)))), vec4<bool>(false, global0.a.x, select(global0.a.x, global0.a.x & global0.a.x, global0.a.x), true | global0.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))));
    global1 = Struct_1(!(!select(vec3<bool>(true, global0.a.x, false), global1.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1731f * 403f) + var_2.x))), ~(~vec3<u32>(select(0u, global0.c.x, false), _wgslsmith_add_u32(4294967295u, global1.c.x), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2179f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(811f))), -309f));
    return -706f;
}

fn func_3() -> vec2<f32> {
    global0 = Struct_1(vec3<bool>(global0.a.x, !all(!vec4<bool>(true, global1.a.x, false, global1.a.x)), true), -2613f, select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(15208u, global0.c.x, u_input.a.x)), vec3<u32>(76535u, 0u, u_input.a.x)), vec3<u32>(0u, firstTrailingBit(global1.c.x), 27143u)), u_input.a, true), global1.e, _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(trunc(global1.e))))));
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(global1.d * global0.b), vec3<u32>(global1.c.x << (1u % 32u), 1u, global1.c.x) & u_input.a, _wgslsmith_f_op_f32(-437f * _wgslsmith_f_op_f32(-global1.d)), 532f);
    let var_1 = firstTrailingBit(~1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1020f, global0.d)), _wgslsmith_f_op_f32(-var_0.d)))));
    var var_3 = Struct_1(global0.a, -251f, select(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c, vec3<u32>(0u, var_0.c.x, 4294967295u) | u_input.a), vec3<u32>(49171u, global1.c.x, var_0.c.x)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, u_input.a.x), global1.c.yy), global1.c.x & 206u), ~(~global0.c.x), _wgslsmith_mod_u32(reverseBits(29601u), ~var_1)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1158f * 104f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2101f, var_2.x)))), -380f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(var_0.e, -917f), true, -vec2<i32>(0i, -31200i), Struct_2(-2147483647i))), var_2.x))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = global1.d;
    var_0 = -1202f;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.e, global0.d))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-828f, global1.d)))), false, vec2<i32>(62619i, ~(-36875i)), Struct_2(58937i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f + _wgslsmith_f_op_f32(round(global1.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e, global1.b) * _wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d, global1.d), vec2<f32>(global0.d, 1266f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, -2085f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, global0.b) + vec2<f32>(-2509f, global1.d)) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), arg_0))));
    let var_2 = Struct_1(global0.a, var_1.x, reverseBits(~firstLeadingBit(~vec3<u32>(44366u, 4294967295u, 46852u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(973f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * _wgslsmith_f_op_vec2_f32(func_3()).x)));
    var var_3 = _wgslsmith_div_vec3_u32(~global0.c, global0.c);
    return _wgslsmith_div_f32(-1081f, -1585f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, global1.e, select(global0.c, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~14815u), ~reverseBits(global0.c.x), select(select(9121u, 13702u, true), firstTrailingBit(0u), 508f < global1.d)), vec3<bool>(!(!global0.a.x), _wgslsmith_f_op_f32(func_1(false)) == _wgslsmith_f_op_f32(exp2(global1.d)), global0.a.x)), global1.b, 676f);
    var var_1 = var_0.a.zy;
    global0 = Struct_1(global1.a, var_0.b, ~u_input.a, -1739f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-212f, -1000f)) + _wgslsmith_f_op_f32(func_2(vec2<f32>(-522f, var_0.b), any(vec2<bool>(var_1.x, true)), countOneBits(vec2<i32>(-12437i, -8753i)), Struct_2(19779i))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -1053f)), -1159f)), _wgslsmith_f_op_f32(max(-2635f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_1(var_0.a.x || select(false, var_0.a.x, var_0.a.x))), var_2.x, -174f)));
    let x = u_input.a;
    s_output = StorageBuffer(2096f, ~(-reverseBits(_wgslsmith_div_i32(-17242i, -1i))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(47876u, u_input.a.x, global0.c.x)), select(vec3<u32>(var_0.c.x, 54699u, global1.c.x), u_input.a, var_0.a)), u_input.a), ~56299u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, var_0.b, 252f, var_0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, var_0.e, global1.e, global1.b))))));
}

