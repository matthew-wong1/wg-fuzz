struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<bool>(true, false, 9512i < firstTrailingBit(~abs(-3309i)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))) | (all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))) | false));
    var var_1 = select(select(!select(var_0.wy, !var_0.ww, !var_0.wy), select(!vec2<bool>(false, var_0.x), var_0.ww, vec2<bool>(true, var_0.x)), select(vec2<bool>(false, any(vec2<bool>(false, var_0.x))), !var_0.xz, true)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, all(select(var_0.zwy, vec3<bool>(true, var_0.x, true), var_0.zwy))), !(!select(var_0.x, true, var_0.x))), var_0.xx);
    var_1 = var_0.zz;
    var var_2 = ~_wgslsmith_div_vec4_u32(min(u_input.d, reverseBits(~u_input.d)), _wgslsmith_div_vec4_u32(firstLeadingBit(~u_input.d), ~(~vec4<u32>(arg_1.a, 43728u, arg_0.a, u_input.d.x))));
    var var_3 = Struct_1(arg_1.a);
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_add_u32(arg_1.a, 0u), u_input.b.x | 0u)), select(~vec2<u32>(94901u, 18425u), _wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(var_2.yx, vec2<u32>(arg_1.a, arg_1.a)), vec2<u32>(4294967295u, u_input.c.x)), select(vec2<u32>(0u, var_3.a), ~var_2.yz, true)), ~_wgslsmith_clamp_i32(12529i, 32543i, 1i) == 14372i));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(u_input.b.x);
    var var_1 = Struct_1(var_0.a);
    var_0 = Struct_1(78874u);
    var_1 = Struct_1(func_3(Struct_1(var_0.a), Struct_1((47357u ^ u_input.d.x) | var_1.a)));
    let var_2 = false;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1221f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -519f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_2;
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-2147483647i, 37626i, -1i), vec3<i32>(-17032i, 2147483647i, 18866i), false), min(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -24879i, -40443i), _wgslsmith_mod_vec3_i32(vec3<i32>(52044i, 0i, 47828i), vec3<i32>(-1i, 1i, 3507i))), -36461i)), ~(~(-_wgslsmith_clamp_i32(-62715i, 1i, -1i))), ~abs(17787i));
    let var_2 = vec3<bool>(-1000f <= _wgslsmith_f_op_f32(-205f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)))), !(any(vec4<bool>(true, false, true, false)) && false), 20638u >= var_0.a);
    var_1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(min(countOneBits(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)), reverseBits(vec4<i32>(var_1.x, -25130i, var_1.x, var_1.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, 2147483647i, var_1.x, -24845i))) & -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -36401i, var_1.x, 8828i), vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)));
    return vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.x, -210f)))) - 1f));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, -313f))))), arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(132f, -1322f) + vec2<f32>(-858f, -611f))), arg_1, arg_1)), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))));
    let var_1 = reverseBits(vec3<i32>(~(-14699i << (1u % 32u)), 1i, 1i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, ~min(6695i, 1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 52062i, 32986i), vec3<i32>(-1i, -38500i, -19495i)), -55804i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 1i, 1i))));
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.d & _wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 4294967295u, 4294967295u, 5465u), u_input.d), max(u_input.d, u_input.d)), vec4<u32>(_wgslsmith_mult_u32(select(58806u, u_input.b.x, false), 1u), arg_1.a, 867u, 1u >> (u_input.a.x % 32u))) << (countOneBits(~reverseBits(u_input.d)) % vec4<u32>(32u));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0, -1475f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, arg_0, arg_0)), vec3<f32>(1000f, 1000f, arg_0), vec3<bool>(false, false, false))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, 898f, 451f)))))));
    let var_3 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-var_0.x));
    return Struct_1(32355u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u);
    let var_1 = func_1(-1345f, Struct_1(~(~12797u)));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, (vec2<u32>(var_1.a, 46350u) | u_input.c) ^ vec2<u32>(77972u, 1u)), max(u_input.c, firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, 74895u))))));
    var var_3 = vec3<i32>(0i ^ ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), -vec2<i32>(-1i, 2147483647i)), ~(-8958i), -24656i);
    var var_4 = _wgslsmith_f_op_f32(trunc(1f));
    let var_5 = !(!(_wgslsmith_mult_i32(var_3.x, -10566i) >= var_3.x) & true);
    var var_6 = -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, 3218i, var_3.x) | vec3<i32>(2147483647i, var_3.x, var_3.x), ~vec3<i32>(var_3.x, 1i, var_3.x)), vec3<i32>(max(var_3.x, var_3.x), i32(-1i) * -4994i, min(var_3.x, var_3.x))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, firstTrailingBit(3812i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(var_3.x, var_3.x, -1i))), min(vec3<i32>(var_3.x, var_3.x, 32275i), vec3<i32>(2147483647i, 2147483647i, -31747i)) | firstLeadingBit(vec3<i32>(var_3.x, var_3.x, 67124i))));
    let var_7 = _wgslsmith_add_vec4_i32(vec4<i32>(-(~(~2147483647i)), 2147483647i, -30589i, 3725i), min(vec4<i32>(0i & var_3.x, 2147483647i, var_3.x >> (var_1.a % 32u), ~var_3.x) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(11756i << (u_input.a.x % 32u), ~var_3.x, var_3.x, var_3.x | -53986i) | abs(vec4<i32>(var_3.x, var_3.x, 9542i, 1i))));
    let var_8 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-410f)) * _wgslsmith_f_op_vec3_f32(func_4(vec2<f32>(-396f, 1000f), Struct_1(1u), Struct_1(56697u))).x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.zw, u_input.d.yxz);
}

