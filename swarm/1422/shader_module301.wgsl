struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    var var_0 = 1i;
    var_0 = -23421i;
    var var_1 = arg_1;
    var_1 = ~vec3<u32>(abs(u_input.d.x), ~(~27715u), 3761u);
    let var_2 = Struct_4(var_1.x & 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f - 432f) * -309f) - -380f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1036f, -236f)) * _wgslsmith_f_op_f32(select(315f, -121f, arg_0.x)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * var_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.a.x))))));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(vec2<f32>(-517f, var_0.a.x));
    let var_1 = Struct_3(Struct_2(~46347u, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, 1845f), _wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-822f, 214f)))))), 4294967295u, arg_0.x, ~_wgslsmith_sub_vec4_i32(vec4<i32>(abs(-43181i), firstTrailingBit(u_input.b), i32(-1i) * -26129i, _wgslsmith_mod_i32(5302i, 69872i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 2147483647i, 33560i, 58877i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f - -1316f))) + _wgslsmith_f_op_f32(var_1.a.b.a.x + _wgslsmith_f_op_f32(floor(var_1.a.b.a.x)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-1176f));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(118f - 2661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 1545f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(554f, _wgslsmith_f_op_f32(func_2(-380f, vec3<u32>(4294967295u, 4294967295u, 38262u))), _wgslsmith_f_op_f32(-1880f + -1488f)), vec3<f32>(_wgslsmith_f_op_f32(round(-550f)), -833f, _wgslsmith_f_op_f32(f32(-1f) * -179f))), vec3<f32>(648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, arg_0), arg_2.x, 31520u)) - _wgslsmith_f_op_f32(func_2(178f, u_input.d))), _wgslsmith_f_op_f32(f32(-1f) * -109f))));
    let var_2 = !vec4<bool>(any(!(!vec2<bool>(true, arg_0))), true, all(!vec3<bool>(arg_0, false, arg_0)), all(!vec2<bool>(true, arg_0)));
    return ~(arg_1.x & firstLeadingBit(~_wgslsmith_mult_u32(0u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~35365u, max(19744u, ~(~countOneBits(u_input.a.x))), ~(~reverseBits(~u_input.d.x)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_u32(func_1(false, ~vec2<u32>(41063u, u_input.c), select(vec2<i32>(-63454i, 47243i), vec2<i32>(u_input.b, -10903i), true), ~vec2<i32>(u_input.b, 1i)), 6558u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1234f, 811f) - vec2<f32>(1596f, 656f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, var_0.x), vec2<u32>(_wgslsmith_clamp_u32(var_0.x, 52659u, var_0.x), u_input.a.x)), _wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.d.xy)), true, vec4<i32>(~u_input.b | ~(~u_input.b), -1i, -u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))))));
    var_0 = max(firstLeadingBit(reverseBits(select(reverseBits(vec3<u32>(var_1.a.a, var_1.a.a, 0u)), select(u_input.d, u_input.d, vec3<bool>(var_1.c, false, var_1.c)), !vec3<bool>(var_1.c, true, var_1.c)))), ~(~max(u_input.a >> (u_input.d % vec3<u32>(32u)), u_input.d)));
    let var_2 = abs(countOneBits(~u_input.d.x)) | var_1.b;
    var_0 = u_input.d;
    var var_3 = u_input.b;
    var var_4 = Struct_4(var_0.x);
    var_0 = _wgslsmith_sub_vec3_u32(~(~u_input.a), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.a, var_2, 0u), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, min(1i, _wgslsmith_add_i32(u_input.b, -20669i))) ^ ~_wgslsmith_dot_vec3_i32(~var_1.d.zxx, _wgslsmith_div_vec3_i32(var_1.d.yyw, vec3<i32>(var_1.d.x, -23160i, var_1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(399f, 182f, var_1.a.b.a.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.b.a.x, var_1.a.b.a.x, 1000f)))))), -var_1.d.xyx, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-201f, 916f, 347f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.a.x, var_1.a.b.a.x, var_1.a.b.a.x))))))), abs(_wgslsmith_mod_u32(min(~var_0.x, 1u), ~func_1(true, var_0.xy, vec2<i32>(2147483647i, -1i), var_1.d.wy))));
}

