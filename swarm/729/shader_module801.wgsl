struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2522f, -336f);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - -628f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))) * global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1762f + _wgslsmith_f_op_f32(-843f * 1073f))))));
    var var_1 = select(true & (~u_input.e <= ~73355u), true, true) || false;
    let var_2 = firstTrailingBit(-(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.d.x), -u_input.b.x) ^ u_input.d.x));
    var_0 = -countOneBits(var_2) < (22098i | (_wgslsmith_dot_vec4_i32(u_input.b & vec4<i32>(0i, var_2, var_2, 0i), vec4<i32>(19553i, 1i, -2147483647i, var_2)) | _wgslsmith_mod_i32(i32(-1i) * -1i, -13030i)));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.b)))))), global0.b);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global1.a, -1000f), _wgslsmith_div_f32(587f, -1430f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(967f, global1.b) + vec2<f32>(global0.b, 1316f)))), all(vec4<bool>(true, true, true, true)) && true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1824f, 1612f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-563f, arg_0.a)))))), select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a, -346f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, global0.b), vec2<f32>(-193f, 1860f), vec2<bool>(true, false))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b, var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-928f - global0.b), _wgslsmith_f_op_f32(331f + var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, var_0.x), vec2<f32>(arg_0.b, 771f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, global1.a), vec2<f32>(-198f, global0.b))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global1.a)))) * vec2<f32>(_wgslsmith_f_op_f32(min(126f, -1000f)), var_0.x)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1820f + -901f) + arg_0.a)), global0.a);
    var_0 = _wgslsmith_f_op_vec2_f32(-var_1);
    var var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(-func_2().a), _wgslsmith_f_op_f32(func_2().b - global1.b));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2504f + arg_0.b) - _wgslsmith_f_op_f32(-global1.a)))) + _wgslsmith_f_op_f32(-1f));
    var var_1 = arg_0;
    global0 = func_3(arg_0);
    var var_2 = arg_0;
    var var_3 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(170f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -1000f) + _wgslsmith_f_op_f32(global0.a * arg_0.b)) - 1094f)), _wgslsmith_f_op_f32(f32(-1f) * -2541f));
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = var_0;
    let var_3 = vec4<bool>(all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true))), true, firstLeadingBit(abs(_wgslsmith_mult_i32(arg_1.x, arg_1.x))) <= ~_wgslsmith_clamp_i32(-arg_1.x, max(-45195i, u_input.d.x), -2147483647i), true);
    return vec2<f32>(var_2.a, 1139f);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(func_3(func_2()), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b ^ vec4<i32>(u_input.b.x, 0i, u_input.b.x, 8002i), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.d.x) & vec4<i32>(u_input.d.x, 1i, -2147483647i, -18097i)), min(u_input.a, 6491i) & (2147483647i & u_input.a))), ~abs(u_input.d.yx)));
    global1 = func_2();
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))), global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global0.b))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -287f))) + _wgslsmith_div_vec2_f32(vec2<f32>(452f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(592f, global0.a))))));
    return vec2<bool>(any(vec3<bool>(false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)), true)), false);
}

fn func_6(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>) -> bool {
    let var_0 = !vec2<bool>(false, any(!(!vec4<bool>(arg_2.x, true, arg_0, false))));
    global0 = func_3(Struct_1(global0.b, global0.b));
    var var_1 = -_wgslsmith_clamp_i32(u_input.b.x << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(32054u, u_input.e, 39934u, 56220u), vec4<u32>(u_input.e, 4294967295u, 0u, u_input.e)), 4294967295u) % 32u), 25399i, -7076i);
    let var_2 = func_3(Struct_1(-710f, global1.b));
    var_1 = _wgslsmith_div_i32(-11648i >> (u_input.e % 32u), 1i ^ ((u_input.b.x << (firstLeadingBit(u_input.e) % 32u)) << (u_input.e % 32u)));
    return func_1().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(vec3<bool>(false, false, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(global1.a > 573f, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)))));
    let var_1 = global1.a;
    var_0 = select(!(!select(vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, var_0.x), !var_0.x)), !vec2<bool>(func_6(var_0.x, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b, 214f), vec2<f32>(2063f, -1219f)), func_1()), any(vec4<bool>(true, false, var_0.x, true))), vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b, global1.a, global0.b)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, 1762f, -1142f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1784f, global0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 115f, -110f))))) - vec3<f32>(_wgslsmith_f_op_f32(-1000f - 2085f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1356f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), var_2.x);
    let var_3 = _wgslsmith_f_op_f32(-global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - _wgslsmith_f_op_f32(-826f - -725f)))))), _wgslsmith_f_op_f32(min(1130f, _wgslsmith_div_f32(902f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(645f))))))));
    global0 = func_3(Struct_1(-397f, 777f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(u_input.c, 37307u), vec2<u32>(u_input.c, u_input.e)), vec2<u32>(1u, 1u)), ~vec2<u32>(u_input.c, 53948u) ^ max(vec2<u32>(u_input.e, 18027u), vec2<u32>(12130u, u_input.c))), select(vec2<u32>(0u, min(u_input.c, 7338u)), ~vec2<u32>(u_input.e, 36291u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(85828u, u_input.c), vec2<u32>(u_input.c, u_input.e)) % vec2<u32>(32u)), select(var_0.x, any(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x))), func_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.b) - 623f)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(u_input.d.x, u_input.a)) & _wgslsmith_mult_i32(1i, u_input.d.x), _wgslsmith_add_i32(-10532i, 33809i) & _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(4869i, 12823i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.b.x)))).b, firstLeadingBit(firstLeadingBit(u_input.e)), ~(~(~select(vec3<u32>(u_input.c, 29988u, u_input.c), vec3<u32>(4294967295u, u_input.e, u_input.c), var_0.x))), ~((u_input.d | -u_input.b.yyz) << (countOneBits(vec3<u32>(u_input.e, u_input.c, u_input.e)) % vec3<u32>(32u))));
}

