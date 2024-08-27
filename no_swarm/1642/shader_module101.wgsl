struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-306f)), true, true, vec4<f32>(-1125f, _wgslsmith_f_op_f32(f32(-1f) * -800f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), -577f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2321f)), _wgslsmith_f_op_f32(ceil(-1000f))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1725f, _wgslsmith_f_op_f32(-var_0.a.d.x))))) - _wgslsmith_f_op_f32(-var_0.b)));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = u_input.b.x;
    var_0 = ~_wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(48420u, u_input.e.x, arg_1, 0u), vec4<u32>(15773u, u_input.c, u_input.e.x, u_input.b.x)), vec4<u32>(u_input.b.x, ~u_input.e.x, func_3(), min(arg_1, 19972u))), ~u_input.b);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.d.x)), all(arg_3.c), Struct_1(_wgslsmith_f_op_f32(-1209f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1927f, 1742f)) + arg_3.b.b)), false, ((u_input.b.x >= u_input.e.x) && !arg_3.c.x) || any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.a.d.x, -192f, arg_3.b.b, 2605f) * arg_3.b.a.d) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.b.a.a, -325f, 1017f, arg_3.b.a.a)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2229f * var_1.a)), var_1.c.d.x), arg_3.b.b)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(377f)) * _wgslsmith_f_op_f32(step(-272f, arg_3.b.a.a))) <= 279f) & !(!var_1.b), arg_3.b.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(339f)) * _wgslsmith_f_op_f32(f32(-1f) * -264f)));
    return vec4<f32>(var_3, var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-203f)))))), _wgslsmith_f_op_f32(round(var_1.a)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = Struct_2(Struct_1(258f, !any(vec3<bool>(true, false, true)), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2024f, 1528f, 315f, arg_2) + vec4<f32>(-249f, -820f, 2573f, arg_2)), _wgslsmith_f_op_vec4_f32(func_2(u_input.d.x, arg_1, vec3<bool>(false, false, true), Struct_4(u_input.d, Struct_2(Struct_1(arg_2, true, false, vec4<f32>(arg_2, -760f, arg_2, 1550f)), arg_2), vec4<bool>(true, true, true, true))))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), -2320f, -1219f, -737f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec3<bool>(false, false, false)))))), -497f);
    var_0 = Struct_2(Struct_1(1000f, select(false, !var_0.a.c, var_0.a.b), var_0.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_0.a.d.x, -2452f, _wgslsmith_div_f32(arg_2, -780f)) + var_0.a.d)), 299f);
    let var_1 = Struct_4((reverseBits(u_input.d) >> (~max(vec3<u32>(arg_0, 19890u, arg_1), u_input.b.yyw) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(u_input.d >> (~u_input.b.yxz % vec3<u32>(32u)), vec3<i32>(-u_input.d.x, 1i, i32(-1i) * -1i)), Struct_2(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -870f)), vec4<bool>(!all(vec3<bool>(var_0.a.c, var_0.a.b, false)), all(!(!vec3<bool>(var_0.a.b, true, true))), !(!var_0.a.b | true), var_0.a.c));
    let var_2 = !var_1.c.yw;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(var_0.a.a, -660f)), var_2.x, var_1.b.a.b, vec4<f32>(_wgslsmith_f_op_f32(178f - 1746f), -487f, var_1.b.b, -232f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1153f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -2431f))), all(select(var_1.c.zw, var_2, true)))), _wgslsmith_f_op_f32(ceil(960f)))));
    return any(var_1.c.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, ~u_input.b.x);
    let var_1 = ~var_0.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(314f)), -687f, func_1(0u, u_input.c, 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1015f, -1366f)))), false, true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, -371f, -524f, -557f) - vec4<f32>(-967f, -1375f, -1353f, -636f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(ceil(826f)), _wgslsmith_f_op_f32(trunc(297f)), _wgslsmith_f_op_f32(ceil(539f)))))), -456f);
    var var_3 = var_2.a;
    var_2 = Struct_2(var_2.a, 1f);
    var_3 = Struct_1(var_2.a.d.x, all(!(!vec3<bool>(true, var_3.b, var_3.c))), var_3.c, var_2.a.d);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a + var_2.b)) + 1000f) * _wgslsmith_f_op_f32(abs(-676f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

