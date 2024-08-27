struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = Struct_2(false, Struct_1(arg_0.b.zy, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -24574i), vec2<i32>(u_input.a, u_input.a)), -43650i << (u_input.b % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), reverseBits(select(i32(-1i) * -74843i, max(1i, 1i), false) | -arg_0.b.x));
    var var_1 = reverseBits(~(~u_input.d) << ((~_wgslsmith_mod_u32(u_input.d, u_input.b) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.b, u_input.b), vec3<u32>(u_input.d, u_input.b, u_input.d) >> (vec3<u32>(u_input.d, u_input.b, u_input.b) % vec3<u32>(32u))) % 32u)) % 32u));
    let var_2 = u_input.d;
    var var_3 = any(!(!(!(!vec4<bool>(true, true, var_0.a, var_0.a)))));
    var_0 = Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_f32(global0.x + var_0.c), -(u_input.c << (abs(var_2 ^ 35998u) % 32u)));
    return arg_0.b.xzw;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> u32 {
    var var_0 = func_3(Struct_3(-18703i, arg_0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + vec2<f32>(global0.x, -1598f))))));
    var var_2 = Struct_2(false, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(~var_0.zy, min(vec2<i32>(0i, -77270i), vec2<i32>(u_input.a, arg_0.a))), func_3(Struct_3(1i, vec4<i32>(0i, arg_0.b.x, arg_0.a, u_input.c))).x), _wgslsmith_div_vec2_i32(~(-arg_0.b.yx), var_0.yy)), _wgslsmith_f_op_f32(global0.x - -386f), -_wgslsmith_div_i32(arg_1.x, abs(-9505i)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_2.c));
    var_2 = Struct_2(false, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -296f), -90758i);
    return _wgslsmith_mod_u32(5347u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), vec2<u32>(~24167u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(25260u, u_input.b)))), 23307u));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 1i, -2890i), -(~vec3<i32>(-1i, 0i, -78580i))), _wgslsmith_add_i32(-13367i, 1i), 23092i);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(273f, -759f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2587f)), _wgslsmith_f_op_f32(select(global0.x, -115f, true))))))));
    let var_2 = Struct_3(~(~11290i), vec4<i32>(-4510i ^ _wgslsmith_mult_i32(abs(u_input.c), -var_0.x), u_input.c, 1i, _wgslsmith_dot_vec3_i32(var_0, ~var_0)));
    var_1 = global0.x;
    let var_3 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), any(vec2<bool>(true, false)) || (arg_0.x < abs(arg_0.x))));
    return Struct_1(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a, ~(-2147483647i)), -(~vec2<i32>(var_0.x, var_2.a)))), _wgslsmith_mod_vec2_i32(min(select(var_2.b.yx, select(var_0.xz, vec2<i32>(43827i, 1i), vec2<bool>(var_3, var_3)), var_3), abs(var_0.yy >> (arg_0.xy % vec2<u32>(32u)))), countOneBits(var_0.zy)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = arg_0.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zw + arg_0.ww) * arg_0.zy), arg_0.yw), vec2<f32>(_wgslsmith_div_f32(global0.x, -1014f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -467f))))), _wgslsmith_f_op_vec2_f32(-arg_0.yy));
    var var_1 = false;
    let var_2 = Struct_2(!all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, false), false)), func_4(vec3<u32>(select(25329u, func_2(Struct_3(u_input.c, vec4<i32>(-1i, u_input.a, 46656i, -9776i)), vec2<i32>(0i, u_input.a)), true), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 35892u, u_input.d) << (vec3<u32>(u_input.b, u_input.d, 60333u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, u_input.b, 9970u)), ~32903u & _wgslsmith_mult_u32(u_input.d, 16262u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(1335f, _wgslsmith_div_f32(global0.x, global0.x))))), ~_wgslsmith_sub_i32(-13280i | _wgslsmith_dot_vec4_i32(vec4<i32>(15092i, 24484i, u_input.c, -1i), vec4<i32>(38126i, u_input.c, 2147483647i, u_input.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(31177i, 7596i), vec2<i32>(u_input.a, u_input.a))));
    let var_3 = ~u_input.b;
    return !all(vec4<bool>(!(!var_2.a), all(vec4<bool>(true, true, var_2.a, var_2.a)), false, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(532f, 653f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, 2799f, 1124f), vec4<f32>(491f, global0.x, -1000f, global0.x), false))))), func_4(vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, 51118u), vec4<u32>(u_input.b, u_input.d, 0u, u_input.d)), firstTrailingBit(vec4<u32>(15251u, u_input.d, 0u, 4294967295u))), 4294967295u)), _wgslsmith_f_op_f32(abs(global0.x)), 9485i);
    var var_1 = var_0;
    var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), global0.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c, var_0.c)))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(615f, global0.x), vec2<f32>(var_1.c, 679f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(844f, -226f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), -1533f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-766f)), 609f))))));
    var_1 = Struct_2(true, Struct_1(var_0.b.a, var_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f - global0.x) * _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), -var_1.b.a.x);
    var var_2 = Struct_3(-7828i, -vec4<i32>(~abs(u_input.a), -119066i, -abs(-15885i), var_1.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1332f - var_1.c), _wgslsmith_f_op_f32(max(-988f, -698f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, var_0.c)) - -737f)), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(997f)))), global0.x));
}

