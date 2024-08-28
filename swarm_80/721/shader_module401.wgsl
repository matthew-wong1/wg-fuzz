struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(abs(vec3<i32>(2147483647i, ~u_input.e.x, 1i)) | (countOneBits(firstLeadingBit(vec3<i32>(0i, u_input.b, -24903i))) & -(vec3<i32>(-1811i, u_input.b, -14405i) << (u_input.a.zyx % vec3<u32>(32u)))));
    var_0 = Struct_2(abs(var_0.a));
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, ~57428u, 333u, 37190u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1856f))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(max(-945f, -1000f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))))), u_input.a.wyy);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 274f, _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x))));
    var_1 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + 311f) + _wgslsmith_f_op_f32(var_2.a.x * 1566f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), var_2.a.x))), any(vec4<bool>(false, false, true, true)) | all(vec2<bool>(true, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, max(firstTrailingBit(u_input.d), ~var_1.a)), firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.a.yyz, u_input.a.wwz >> (var_1.c % vec3<u32>(32u))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(ceil(arg_0.x))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.x, 1000f)), _wgslsmith_f_op_f32(647f + -1493f)))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-532f * _wgslsmith_f_op_f32(f32(-1f) * -405f))))), arg_1);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0.zzz))));
    let var_2 = Struct_2(vec3<i32>(-66076i, -63408i, _wgslsmith_clamp_i32(u_input.c, u_input.e.x, _wgslsmith_add_i32(u_input.c, -u_input.b))));
    var var_3 = Struct_4(i32(-1i) * -2147483647i, false);
    let var_4 = Struct_2(select(var_2.a, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-14695i, 17284i, var_2.a.x)), vec3<i32>(var_2.a.x, var_3.a, -2147483647i), var_2.a) >> (vec3<u32>(u_input.a.x | arg_2.c.x, ~u_input.a.x, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(var_3.a < 68505i, any(vec2<bool>(var_3.b, false)), 133f <= arg_2.b.x)));
    return arg_2.b;
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(u_input.a.x)), u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(7851u, _wgslsmith_sub_u32(u_input.d, 1u)), vec2<u32>(16251u, u_input.d & u_input.a.x)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1633f, -1588f, 1157f, -1075f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(603f, -571f, 1051f, -1000f), vec4<f32>(-2188f, -980f, 1495f, 558f), true)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, 262f, -394f, 637f)), _wgslsmith_f_op_f32(step(917f, 2413f)), Struct_1(20119u, vec4<f32>(277f, -510f, -219f, 2044f), u_input.a.xzy))), vec4<bool>(u_input.e.x < u_input.b, true, true, true)))));
    var var_2 = max(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(-39i, u_input.e.x, u_input.c, u_input.c), ~vec4<i32>(0i, u_input.c, u_input.b, 412i), true), ~vec4<i32>(u_input.b, ~49293i, ~(-34410i), select(u_input.b, u_input.b, false))), select(min(firstTrailingBit(vec4<i32>(-8618i, u_input.b, u_input.c, u_input.e.x)), vec4<i32>(u_input.e.x, u_input.c, 2147483647i, 38003i)) | vec4<i32>(u_input.b >> (1u % 32u), u_input.c, min(u_input.b, 0i), u_input.c | 8722i), abs(vec4<i32>(2147483647i, u_input.c, 2147483647i, ~25807i)), vec4<bool>(true, true, true, (u_input.c << (u_input.d % 32u)) < u_input.b)));
    return Struct_5(Struct_1(0u | (_wgslsmith_div_u32(u_input.d, 4924u) & _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, u_input.d, 4083u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, var_1.a.x, var_1.a.x, var_1.a.x)))), max(u_input.a.zzz, ~_wgslsmith_clamp_vec3_u32(u_input.a.zxx, u_input.a.xzw, u_input.a.xyy))), ~(-21139i << (u_input.a.x % 32u)) != firstLeadingBit(countOneBits(var_2.x ^ var_2.x)), true, Struct_1(~31274u, vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1.a.wzw)) - _wgslsmith_f_op_f32(599f + -507f)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f * -728f))), ~vec3<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), u_input.d, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(max(select(vec3<i32>(u_input.c, u_input.b, u_input.c), ~vec3<i32>(u_input.b, u_input.b, 21540i), true), vec3<i32>(~u_input.b, 0i, u_input.b >> (14615u % 32u)))));
    let var_1 = func_1();
    let var_2 = !(!select(!select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, false), false), vec2<bool>(true, true), var_1.c));
    let var_3 = -414f;
    let var_4 = u_input.a.x;
    var var_5 = false;
    var var_6 = -var_0.a.x | var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1108f, -31821i);
}

