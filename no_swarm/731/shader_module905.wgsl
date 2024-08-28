struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec4<u32> {
    return ~arg_2;
}

fn func_2() -> bool {
    var var_0 = Struct_1(~u_input.b);
    var var_1 = Struct_1(max(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 13911u, 1u, u_input.b.x), var_0.a), ~var_0.a), vec4<u32>(~u_input.b.x, ~var_0.a.x, abs(67132u), u_input.a.x & 11464u)) | min(_wgslsmith_add_vec4_u32(u_input.b, func_3(0u, Struct_1(u_input.b), var_0.a, false)), func_3(~28240u, Struct_1(vec4<u32>(4294967295u, 1u, u_input.a.x, var_0.a.x)), var_0.a, true)));
    var_1 = Struct_1(u_input.b);
    let var_2 = _wgslsmith_dot_vec2_u32(~var_1.a.zy, reverseBits(var_0.a.xx));
    var var_3 = u_input.c;
    return true != !(!(!(var_2 >= u_input.a.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    return u_input.b.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = true;
    global0 = false & all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    global0 = func_4(select(vec4<bool>(func_2(), u_input.a.x <= u_input.a.x, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), true), vec4<bool>(true, 4294967295u > u_input.a.x, true, all(vec3<bool>(true, true, true)))), true) <= ~4294967295u;
    return Struct_1(vec4<u32>(0u, u_input.a.x, ~(~53094u), 52441u) | _wgslsmith_mult_vec4_u32(u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(firstTrailingBit(-1i), u_input.c);
    var var_1 = Struct_1(~vec4<u32>(_wgslsmith_clamp_u32(abs(u_input.b.x), ~u_input.b.x, 1u), ~_wgslsmith_sub_u32(u_input.b.x, u_input.a.x), u_input.a.x, 1u));
    var_1 = func_1(-min(max(vec4<i32>(49878i, -2147483647i, var_0, var_0), vec4<i32>(var_0, var_0, var_0, var_0)) ^ ~vec4<i32>(2147483647i, var_0, 13804i, var_0), _wgslsmith_mod_vec4_i32(vec4<i32>(-12218i, var_0, 22525i, var_0), select(vec4<i32>(u_input.c, u_input.c, var_0, u_input.c), vec4<i32>(u_input.c, u_input.c, -40425i, u_input.c), false))));
    var var_2 = 25368i;
    global0 = true;
    var var_3 = func_1(vec4<i32>(firstLeadingBit(firstTrailingBit(0i)), _wgslsmith_sub_i32(u_input.c, max(_wgslsmith_dot_vec4_i32(vec4<i32>(31370i, -27151i, u_input.c, -16628i), vec4<i32>(1579i, u_input.c, var_0, 2147483647i)), firstTrailingBit(u_input.c))), -var_0, firstTrailingBit(-2136i)));
    var var_4 = vec4<bool>(true, true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f + -2548f) * -610f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), -699f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-106f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(max(1123f, 754f)))), -1000f), 20720u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(786f + -2580f), 956f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1142f, -170f, 342f, 150f), vec4<f32>(-667f, 383f, 1125f, 1523f))), vec4<f32>(470f, -1538f, -1092f, 1497f))), vec4<f32>(-509f, _wgslsmith_f_op_f32(ceil(-735f)), 712f, -169f)))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(418f + 211f)))));
}

