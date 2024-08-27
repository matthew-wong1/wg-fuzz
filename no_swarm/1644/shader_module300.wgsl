struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = ~u_input.e;
    var var_1 = ~(vec4<u32>(~_wgslsmith_mod_u32(20768u, 1u), 0u, _wgslsmith_sub_u32(24836u, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 0u)), ~_wgslsmith_sub_u32(8986u, u_input.c.x)) & select(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c.x, 41709u, 5649u, 93160u), vec4<u32>(5283u, u_input.c.x, u_input.c.x, 56416u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 63966u, 11553u), vec4<u32>(4294967295u, 30994u, u_input.c.x, 0u))), ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) ^ vec4<u32>(29719u, 33846u, u_input.c.x, 56521u)), true & any(vec2<bool>(false, false))));
    var var_2 = Struct_1(arg_1);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * _wgslsmith_f_op_vec3_f32(-arg_0)))))));
    return var_0;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    let var_1 = max(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(arg_0.a ^ -24388i, _wgslsmith_add_i32(arg_0.a, var_0.a)), ~(~76i), countOneBits(func_3(vec3<f32>(-2315f, 891f, -695f), u_input.d.x, arg_0)))), u_input.b.yxw);
    var var_2 = !(((u_input.c.x > u_input.c.x) && true) || all(vec3<bool>(true, true, true)));
    let var_3 = Struct_1(-var_0.a);
    var_0 = arg_0;
    return Struct_1(~var_1.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = ~abs(arg_1.a);
    let var_1 = arg_0;
    let var_2 = func_2(arg_1);
    let var_3 = func_2(arg_1);
    var var_4 = arg_1;
    return (u_input.d.x | -(~5408i)) == (select(abs(~(-17265i)), 2147483647i, all(vec2<bool>(true, true))) | 2147483647i);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_3;
    var var_1 = func_2(func_2(func_2(arg_3)));
    var_1 = func_2(func_2(Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.d))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, -1757f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, 791f) + _wgslsmith_div_vec2_f32(vec2<f32>(-791f, 1450f), vec2<f32>(arg_0.x, 1936f)))), arg_0.xz)), _wgslsmith_mod_u32(8081u, 14907u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(abs(u_input.e), -(~_wgslsmith_mult_i32(19788i, u_input.a)), -(~(~2147483647i)), _wgslsmith_dot_vec3_i32(u_input.b.yww, ~vec3<i32>(2147483647i, u_input.a, -34082i)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, -784f) - vec3<f32>(-1277f, -956f, 1099f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, 2395f, -376f) * vec3<f32>(2459f, 526f, 2952f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(543f, -845f, 1552f), vec3<f32>(-562f, -2291f, 129f))))), func_1(abs(u_input.c.x), Struct_1(10137i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 398f), vec2<f32>(485f, 912f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, -2024f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-719f, 869f), vec2<f32>(823f, 1462f)))) + vec2<f32>(828f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-925f + -199f) - _wgslsmith_f_op_f32(ceil(-411f))))), Struct_1(reverseBits(func_2(Struct_1(u_input.a)).a) >> (~17456u % 32u)));
}

