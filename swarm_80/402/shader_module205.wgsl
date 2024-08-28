struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(525f, 242f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(1i << ((_wgslsmith_sub_u32(u_input.a.x, 0u) | 39947u) % 32u)), arg_3.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(arg_1, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1941f)))));
    var var_2 = vec2<bool>(true, true);
    var_2 = !(!(!(!select(vec2<bool>(true, true), arg_3.zy, vec2<bool>(false, false)))));
    let var_3 = var_2.x;
    return Struct_1(var_0.a, true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-arg_2))));
    var var_0 = ~max(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, firstTrailingBit(vec2<u32>(26300u, u_input.a.x))), firstTrailingBit(~arg_0.xw)));
    var_0 = ~min(min(4294967295u, ~u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, firstLeadingBit(0u)));
    var_0 = _wgslsmith_div_u32(18u, abs(u_input.a.x));
    var_0 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(u_input.a.x, 5404u)) | ~_wgslsmith_add_u32(0u, 4965u);
    return ~arg_0.x;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_2(867f, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, global0.x)), min(~u_input.a, select(u_input.a, u_input.a << (~u_input.a % vec2<u32>(32u)), vec2<bool>(select(true, true, true), false))), vec3<bool>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1152f)) * _wgslsmith_f_op_f32(167f + -995f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_mult_vec2_u32(u_input.a, reverseBits(u_input.a)), vec3<bool>(global0.x >= -194f, any(vec4<bool>(true, false, true, false)), true)).b, any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), -3529i > _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, -37889i)), vec2<i32>(14337i, -1106i))));
    global0 = vec2<f32>(400f, 140f);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(1523f, -300f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(467f, global0.x)), _wgslsmith_f_op_f32(select(global0.x, -621f, var_1.b))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(695f, global0.x));
    return func_2(-1517f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(139f, _wgslsmith_f_op_f32(step(396f, -331f))) + vec2<f32>(_wgslsmith_f_op_f32(-1230f * global0.x), _wgslsmith_f_op_f32(global0.x - -969f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(779f, global0.x)))))))), u_input.a, select(select(!(!vec3<bool>(true, var_1.b, var_1.b)), select(!vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, true, var_1.b)), true), vec3<bool>(true, var_1.b, all(!vec2<bool>(false, var_1.b))), func_2(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(877f, global0.x), vec2<f32>(-677f, global0.x), var_1.b)), ~u_input.a, select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(false, false, var_1.b), vec3<bool>(false, true, var_1.b))).b && true));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    let var_0 = 0u;
    var var_1 = func_4(firstLeadingBit(_wgslsmith_sub_u32(func_3(vec4<u32>(var_0, 84865u, var_0, u_input.a.x), func_2(global0.x, arg_0.xy, vec2<u32>(0u, 1316u), vec3<bool>(false, false, false)), 1563f), u_input.a.x)));
    var var_2 = func_4(_wgslsmith_add_u32(var_0, ~_wgslsmith_clamp_u32(93803u, max(12975u, var_0), ~u_input.a.x)));
    var var_3 = global0.x;
    var var_4 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(16030u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, 1u, var_0)), var_0)), ~max(1u, firstTrailingBit(_wgslsmith_mult_u32(var_0, var_0))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(ceil(-857f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = vec2<f32>(-1203f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(global0.x * 484f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, -2278f, arg_0.b)), global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(36557u, 11364u), vec2<u32>(u_input.b.x, u_input.b.x)) >= u_input.b.x)))));
    global0 = arg_1.xz;
    global0 = arg_1.zy;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(func_1(arg_1, u_input.a.x))) - _wgslsmith_f_op_f32(288f + arg_1.x)), arg_1.x));
    var var_0 = Struct_1(abs(arg_0.a), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~1i, !all(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(vec4<bool>(true, true, false, true)))));
    let var_1 = func_5(Struct_1(~max(-17722i, var_0.a) | -48715i, any(select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, false), var_0.b), !vec2<bool>(var_0.b, var_0.b), var_0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-677f, -270f, global0.x), u_input.a.x))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-261f + global0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-380f, -747f)), global0.x, _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -628f, global0.x) * vec3<f32>(343f, global0.x, global0.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -145f, global0.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_2.x, 1818f))));
    let var_3 = -abs(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(2147483647i, var_1.a)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, var_1.a) ^ vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_0.a, -2147483647i))));
    let var_4 = func_2(1000f, _wgslsmith_f_op_vec2_f32(-var_2.zz), vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x, 0u), ~(~u_input.b.x)), firstLeadingBit(u_input.b.x)), vec3<bool>(true, func_2(_wgslsmith_f_op_f32(1214f * var_2.x), vec2<f32>(-265f, global0.x), ~u_input.a, vec3<bool>(false, var_1.b, false)).a != _wgslsmith_sub_i32(~var_0.a, var_0.a >> (u_input.b.x % 32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x * 757f), -min(~_wgslsmith_mult_i32(var_0.a, var_0.a), _wgslsmith_dot_vec2_i32(abs(var_3), select(var_3, vec2<i32>(0i, 1i), var_4.b))));
}

