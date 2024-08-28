struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> bool {
    let var_0 = ~0i;
    var var_1 = Struct_1(~(~1u), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(-25877i, -2147483647i, 0i) >> (u_input.a % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(countOneBits(-36915i), var_0, 1i))));
    global0 = abs(u_input.a.zx);
    global0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yz, ~vec2<u32>(global0.x, 1u)), ~u_input.b.zy);
    let var_2 = -2147483647i;
    return any(vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(firstLeadingBit(~arg_0.a), vec3<i32>(reverseBits(_wgslsmith_mult_i32(0i, 2147483647i)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0.b.x, arg_3.b.x, arg_3.b.x, arg_2.b.x)), -vec4<i32>(arg_3.b.x, arg_2.b.x, arg_3.b.x, arg_3.b.x)) & _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(22729i, -2147483647i), vec2<i32>(13070i, arg_0.b.x)), i32(-1i) * -1i), -2147483647i));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(218f - -1997f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -733f))), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1445f)), 123f));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1822f, 1375f, var_2.x) + vec3<f32>(var_2.x, -298f, var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, var_2.x, 778f) - vec3<f32>(var_2.x, -332f, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, -300f, var_2.x) + vec3<f32>(-1290f, 1000f, var_2.x))))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * var_2.x)));
    var var_3 = ~select(vec4<u32>(~(u_input.b.x | var_0.a), 36899u, ~6773u, _wgslsmith_mod_u32(max(global0.x, global0.x), 30510u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(45610u, 34598u, var_0.a, 7241u), ~vec4<u32>(1u, 12023u, var_1.a, arg_2.a))), true);
    return any(select(vec2<bool>(false, all(!vec3<bool>(true, arg_1, true))), vec2<bool>(!(false & arg_1), arg_1), true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(func_2(), true, !func_3(arg_2, false, Struct_1(arg_2.a, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b.x, 0i, arg_0.b.x), arg_1.b)), Struct_1(1u & u_input.a.x, select(vec3<i32>(arg_2.b.x, arg_0.b.x, arg_1.b.x), arg_2.b, vec3<bool>(false, false, false)))));
    var_0 = 130f >= _wgslsmith_f_op_f32(step(-429f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1244f, -120f))))))));
    let var_1 = vec2<i32>(arg_2.b.x, -10229i);
    var_0 = true;
    var_0 = any(vec4<bool>(true, true, true, true));
    return Struct_1(0u, reverseBits(_wgslsmith_div_vec3_i32(abs(arg_0.b), -vec3<i32>(var_1.x, -5744i, -18969i)) ^ -(~arg_2.b)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global0 = u_input.a.zy;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f));
    let var_1 = ~(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 64811u, global0.x, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x)), max(1u, arg_0.x ^ u_input.b.x), u_input.b.x, u_input.b.x));
    let var_2 = func_1(Struct_1(func_1(arg_3, Struct_1(abs(u_input.b.x), vec3<i32>(2147483647i, 0i, arg_3.b.x)), func_1(arg_3, arg_3, arg_3)).a, _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(arg_3.b, arg_3.b, vec3<i32>(58244i, 0i, arg_3.b.x))), arg_3.b << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.x, 0u), vec3<u32>(arg_3.a, 1u, 0u)) % vec3<u32>(32u)))), Struct_1(0u, arg_3.b), func_1(arg_3, func_1(Struct_1(reverseBits(1u), _wgslsmith_sub_vec3_i32(arg_3.b, vec3<i32>(arg_3.b.x, 1i, arg_3.b.x))), arg_3, arg_3), func_1(arg_3, Struct_1(~u_input.a.x, arg_3.b), arg_3)));
    global0 = ~abs(vec2<u32>(abs(~arg_0.x), 27826u));
    return _wgslsmith_clamp_i32(arg_3.b.x, firstLeadingBit(~var_2.b.x), ~_wgslsmith_clamp_i32(~1i << (_wgslsmith_add_u32(arg_3.a, 74644u) % 32u), abs(~arg_3.b.x), -10341i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(19009u, 46697u);
    var var_1 = _wgslsmith_div_i32(~(-countOneBits(-39019i)), 1i);
    let var_2 = vec2<i32>(-1i, firstLeadingBit(func_4(~u_input.a.xy, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec4<bool>(true, false, true, true)), func_1(Struct_1(16020u, vec3<i32>(-1i, -325i, 2147483647i)), Struct_1(u_input.a.x, vec3<i32>(32694i, -2147483647i, 0i)), Struct_1(u_input.b.x, vec3<i32>(-2147483647i, 0i, -4235i)))) >> (18461u % 32u)));
    global0 = max(firstLeadingBit(select(vec2<u32>(30015u, global0.x) & vec2<u32>(0u, global0.x), vec2<u32>(global0.x, var_0), false)), vec2<u32>(abs(46878u), 18408u)) | u_input.a.yz;
    let var_3 = -(~(-_wgslsmith_add_vec3_i32(vec3<i32>(18407i, -15016i, var_2.x), vec3<i32>(var_2.x, var_2.x, var_2.x))));
    global0 = ~vec2<u32>(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.xx), reverseBits(vec2<u32>(var_0, 0u))), global0.x, false), 0u);
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-258f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-613f, 270f)) - _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -474f))) + -904f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-474f))), 743f));
}

