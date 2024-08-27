struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<bool> {
    var var_0 = ~(-arg_0);
    return vec4<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, false, all(vec4<bool>(true, false, true, true)), all(vec2<bool>(true, true))))), true, false, any(vec4<bool>(true, true, false, true | (arg_1 <= arg_1))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 618f, !any(vec4<bool>(0i < u_input.b, false, arg_3.x, any(arg_0.a.yw)))));
    var var_1 = arg_0;
    var_0 = 1000f;
    var var_2 = Struct_2(vec4<i32>(u_input.c.x, firstLeadingBit(u_input.d), -1i, u_input.c.x));
    var var_3 = Struct_2(vec4<i32>(-1i, u_input.a, max(~_wgslsmith_sub_i32(6332i, u_input.b), 59115i), abs(_wgslsmith_add_i32(u_input.c.x, u_input.d))));
    return !(!select(select(!vec4<bool>(arg_3.x, false, arg_3.x, false), vec4<bool>(false, var_1.a.x, false, true), select(arg_3, arg_0.a, true)), func_3(~var_3.a.x, 1u), func_3(var_2.a.x, 1u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = u_input.b;
    let var_1 = vec2<f32>(563f, _wgslsmith_f_op_f32(f32(-1f) * -646f));
    let var_2 = ~_wgslsmith_clamp_i32(arg_1.a.x, -50951i, 0i) << (reverseBits(arg_0.x) % 32u);
    let var_3 = arg_0.yyw;
    var var_4 = Struct_1(select(select(func_2(Struct_1(vec4<bool>(arg_3.x, arg_3.x, true, false), 359f, vec2<f32>(arg_2, 303f)), _wgslsmith_f_op_f32(var_1.x - 640f), _wgslsmith_f_op_f32(arg_2 * var_1.x), select(vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(arg_3.x, true, false, arg_3.x), false)), func_2(Struct_1(vec4<bool>(true, arg_3.x, true, false), 231f, vec2<f32>(390f, arg_2)), _wgslsmith_f_op_f32(arg_2 * 925f), _wgslsmith_f_op_f32(var_1.x + -825f), vec4<bool>(false, true, arg_3.x, true)), vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), arg_3.x, false)), select(!vec4<bool>(true, false, false, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), true), false), var_1.x, _wgslsmith_f_op_vec2_f32(max(var_1, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(161f, -1476f), vec2<f32>(var_1.x, 881f))))));
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_2), 879f)) < _wgslsmith_f_op_f32(1353f - -1109f), arg_3.x || var_4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.c.wx), select(_wgslsmith_mult_vec2_i32(u_input.c.xw, -u_input.c.zw), -(~u_input.c.wy), vec2<bool>(false, all(vec3<bool>(true, true, false)))));
    let var_1 = reverseBits(select(vec2<u32>(reverseBits(~1u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(31275u, 4294967295u, 0u, 16360u), vec4<u32>(15418u, 75742u, 14617u, 0u)), ~1u)), ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(74221u, 0u), vec2<u32>(0u, 0u)), ~vec2<u32>(0u, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(func_1(vec4<u32>(16386u, 4294967295u, 33383u, 28159u), Struct_2(u_input.c), _wgslsmith_f_op_f32(-608f - -928f), vec3<bool>(true, true, true)), func_3(-16779i, 1u).yz, func_2(Struct_1(vec4<bool>(true, true, false, false), -746f, vec2<f32>(1663f, 671f)), _wgslsmith_div_f32(2148f, -696f), _wgslsmith_f_op_f32(363f - 1349f), func_2(Struct_1(vec4<bool>(false, false, false, false), 1208f, vec2<f32>(-2474f, -1340f)), 149f, 660f, vec4<bool>(false, true, true, true))).wz)));
    var var_2 = ~4294967295u;
    let var_3 = _wgslsmith_dot_vec3_u32(abs(abs(select(~vec3<u32>(var_1.x, 4294967295u, 34593u), vec3<u32>(var_1.x, var_1.x, var_1.x), true))), vec3<u32>(4294967295u, var_1.x, ~var_1.x));
    var var_4 = Struct_2(~u_input.c);
    var var_5 = -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.c.xy, var_4.a.zy), abs(max(vec2<i32>(0i, -12906i), vec2<i32>(var_4.a.x, 1i))), u_input.c.yw), vec2<i32>(~_wgslsmith_mult_i32(var_0.x, var_4.a.x), var_4.a.x));
    var var_6 = -824f;
    var_4 = Struct_2(~(-vec4<i32>(u_input.a, _wgslsmith_add_i32(37689i, var_4.a.x), var_4.a.x << (81356u % 32u), u_input.b & 2147483647i)));
    var var_7 = Struct_2(vec4<i32>((i32(-1i) * -var_0.x) | (i32(-1i) * -var_0.x), 0i, var_4.a.x | 9118i, var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_clamp_u32(var_1.x, var_3, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1, var_1), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3, var_1.x), vec2<u32>(var_3, var_3))), var_1)), 1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, 2275f) - vec2<f32>(-246f, -2139f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -900f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1332f, 998f) + vec2<f32>(-931f, 239f)))))), -434f);
}

