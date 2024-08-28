struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(372f, -1135f, -2194f, 397f, -630f, 486f, 1168f, -1558f, -1376f, 341f, -188f, 1000f, -773f, 1192f, 228f, -977f, 1276f, 1417f, 1000f, 1156f, 1780f, 127f, 1353f, -757f, -368f, 114f, 672f, 478f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(29274i, 480f, select(vec2<bool>(any(vec3<bool>(true, true, true)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(step(597f, -1662f)), !select(vec2<bool>(!var_0.c.x, var_0.c.x), var_0.c, var_0.c));
    var_1 = var_0;
    let var_2 = i32(-1i) * -(abs(abs(-23063i)) & var_1.a);
    let var_3 = ~firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 19424u, u_input.b) << (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u)))) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, ~100119u) << (~vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(27999u, u_input.b, u_input.b)));
    return !(!select(!(!vec3<bool>(false, var_1.c.x, var_1.c.x)), vec3<bool>(4294967295u == u_input.b, true, true), var_1.b <= -1366f));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3();
    var var_1 = Struct_1(-9452i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), ~max(firstTrailingBit(vec3<u32>(u_input.b, 106084u, 82568u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 27053u, 72523u), vec3<u32>(29606u, 4914u, 4294967295u)))), 28u)], vec2<bool>(var_0.x, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, -1647f), vec2<f32>(-703f, -427f))))))), vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_f_op_f32(-563f * 191f)), var_1.c));
    let var_3 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b & u_input.b, 28u)] + _wgslsmith_f_op_f32(trunc(-1134f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(482f)) + -196f) - var_2.x))), func_3().yx);
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, -1286f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 239f) * vec2<f32>(var_1.b, -765f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, -270f)))))));
    return var_3;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = array<f32, 28>();
    let var_0 = false;
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_1 = ~vec3<u32>(firstTrailingBit(arg_2), 31878u, ~u_input.b);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    let var_0 = arg_0;
    global0 = array<f32, 28>();
    let var_1 = u_input.b;
    let var_2 = !(!(!(!vec3<bool>(var_0.c.x, var_0.c.x, true))));
    let var_3 = !(!arg_0.c.x);
    return u_input.c.x & ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.c.x ^ -func_4(func_1(u_input.b, 5133u, u_input.b, 144f), -1211f, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 36813u, u_input.b), vec4<u32>(44582u, u_input.b, u_input.b, u_input.b)))) >> (~(~21344u) % 32u);
    var var_1 = Struct_1(_wgslsmith_mult_i32(-2147483647i ^ abs(_wgslsmith_add_i32(-10664i, u_input.d.x)), -(~7417i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1102f, 233f))), -1417f, true && (~u_input.b < u_input.b))), func_2().c);
    var var_2 = select(vec4<u32>(~96613u, 22066u, _wgslsmith_mult_u32(u_input.b ^ 1u, abs(12843u)), select(u_input.b, u_input.b, false | !var_1.c.x)), vec4<u32>(u_input.b, select(reverseBits(u_input.b), 49952u, func_3().x) ^ abs(min(u_input.b, 4294967295u)), ~u_input.b, firstLeadingBit(u_input.b)), select(select(vec4<bool>(var_1.c.x, 2147483647i > var_1.a, true, var_1.c.x), select(vec4<bool>(var_1.c.x, true, var_1.c.x, true), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, false, var_1.c.x, false), true)), vec4<bool>(var_1.c.x, global0[_wgslsmith_index_u32(u_input.b, 28u)] == -248f, true, false)), select(select(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), !vec4<bool>(var_1.c.x, var_1.c.x, true, true), !vec4<bool>(false, false, true, var_1.c.x)), vec4<bool>(!var_1.c.x, all(vec2<bool>(true, false)), true & var_1.c.x, var_1.c.x && var_1.c.x), func_1(4294967295u, 1u, u_input.b, 788f).b >= 367f), !select(select(vec4<bool>(true, var_1.c.x, false, var_1.c.x), vec4<bool>(false, false, var_1.c.x, false), var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.c.x, true, var_1.c.x), vec4<bool>(false, var_1.c.x, false, false), vec4<bool>(var_1.c.x, true, true, var_1.c.x)), select(vec4<bool>(var_1.c.x, true, true, var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, false)))));
    var var_3 = !(!select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, var_1.c.x, true, false), vec4<bool>(true, false, true, false), select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, true, false, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x))), true));
    let var_4 = Struct_1(i32(-1i) * -2147483647i, -143f, vec2<bool>((-1i >= u_input.d.x) && false, !var_1.c.x));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -208f);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.b, var_2.x, select(73255u, u_input.b, false)), 28u)] - -827f) + 1000f);
    var_1 = var_4;
    let var_7 = ~var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wy, 33327u);
}

