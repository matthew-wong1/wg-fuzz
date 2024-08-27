struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return Struct_1(arg_0.x, 223f);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(~0u, firstLeadingBit(25971u));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_2.b), arg_2), vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_f32(trunc(arg_2.b)), Struct_1(-1i, _wgslsmith_f_op_f32(arg_0 - -714f))), _wgslsmith_sub_u32(var_0, min(countOneBits(~var_0), 1u)));
    var_1 = Struct_4(var_1.a, var_1.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)), Struct_1(465i, _wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_sub_u32(~(var_0 ^ var_0) & _wgslsmith_div_u32(var_1.d, 4294967295u), var_0));
    var_1 = Struct_4(var_1.a, !var_1.b, var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(var_0), 1u, 0u ^ var_1.d), ~(~vec3<u32>(var_0, 43609u, var_1.d))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 15741u, var_1.d)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, 4294967295u, var_1.d), vec3<u32>(0u, 19974u, 1u))))));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b)))), func_2(max(u_input.a, -u_input.a))), var_1.b, Struct_2(arg_0, func_2(~vec3<i32>(-2147483647i, 2147483647i, -12333i))), select(~(~5925u), 1u, !(!(u_input.b != 2147483647i))));
    return Struct_3(Struct_1(select(var_2.c.b.a, abs(0i), false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.c.a)), var_1.a.b.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = ~(-(~firstLeadingBit(vec2<i32>(-32672i, arg_0.x))));
    var var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(125f, 247f, true))), 1384f))), 0i, func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, abs(u_input.a.x), -1i), countOneBits(vec3<i32>(-15445i, arg_0.x, -21894i) & vec3<i32>(22050i, -2147483647i, 0i)))));
    var var_2 = vec3<bool>(any(vec2<bool>(true & all(vec2<bool>(false, arg_1)), false)), !arg_1, arg_1);
    var_2 = !select(!(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, false), arg_1)), vec3<bool>(var_2.x, var_2.x, all(vec4<bool>(true, arg_1, arg_1, var_2.x))), all(select(vec4<bool>(var_2.x, arg_1, var_2.x, arg_1), !vec4<bool>(true, true, var_2.x, false), select(vec4<bool>(var_2.x, var_2.x, false, arg_1), vec4<bool>(false, arg_1, true, false), vec4<bool>(true, true, var_2.x, true)))));
    var var_3 = var_0.x > abs(_wgslsmith_div_i32(max(var_1.a.a, ~var_0.x), abs(var_1.a.a)));
    return _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1232f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = true;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, arg_1.a.b.a), -2147483647i) <= arg_0.c.b.a;
    let var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b.a, -arg_0.c.b.a, -94i, abs(arg_1.c.b.a)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1.c.b.a, arg_1.a.b.a, arg_1.c.b.a, arg_2.b.a), vec4<i32>(arg_2.b.a, arg_2.b.a, -50103i, -37503i) & vec4<i32>(-1i, 0i, arg_1.c.b.a, 2147483647i))), _wgslsmith_f_op_f32(-1488f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f - 1842f))));
    return Struct_3(arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(Struct_2(_wgslsmith_f_op_f32(func_1(-vec4<i32>(u_input.c, -58997i, 26220i, u_input.a.x), all(vec3<bool>(true, false, true)))), Struct_1(-u_input.a.x, 1000f)), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, any(vec2<bool>(false, true))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), Struct_2(_wgslsmith_f_op_f32(1000f * 1005f), Struct_1(1i, _wgslsmith_f_op_f32(2214f * 322f))), _wgslsmith_mod_u32(_wgslsmith_div_u32(max(108442u, 42198u), 82435u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(2504u, 1u), vec2<u32>(4294967295u, 70696u))))), Struct_4(Struct_2(-655f, Struct_1(1i, _wgslsmith_f_op_f32(f32(-1f) * -1094f))), !vec3<bool>(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, true))), Struct_2(func_3(_wgslsmith_div_f32(-1000f, 612f), u_input.b, func_2(u_input.a)).a.b, func_3(_wgslsmith_f_op_f32(abs(249f)), _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, u_input.c)), func_2(u_input.a)).a), 32662u << (min(1u, _wgslsmith_div_u32(0u, 55925u)) % 32u)), Struct_2(-141f, func_2(firstTrailingBit(u_input.a))), reverseBits(countOneBits(1u)));
    let var_1 = 43054u;
    var var_2 = Struct_4(Struct_2(-556f, Struct_1(_wgslsmith_div_i32(countOneBits(1i), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)))), select(!vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), false), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.c, var_0.a.a, u_input.a.x, 16523i), true))))), Struct_1(_wgslsmith_mult_i32(u_input.c, -27255i), 852f)), var_1);
    var_2 = Struct_4(var_2.a, select(vec3<bool>(var_1 >= 1u, var_2.b.x || true, true), vec3<bool>(all(select(vec4<bool>(var_2.b.x, true, true, var_2.b.x), vec4<bool>(var_2.b.x, true, true, false), true)), true, select(var_2.b.x, all(vec4<bool>(var_2.b.x, var_2.b.x, false, false)), var_2.b.x)), !(!vec3<bool>(var_2.b.x, true, var_2.b.x))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_2.a.a, var_2.a.b.a, var_0.a).a.b + _wgslsmith_f_op_f32(select(1576f, var_0.a.b, var_2.b.x))), var_2.a.a, (4319u == var_2.d) | var_2.b.x)), var_0.a), var_2.d);
    var var_3 = ~(var_2.d | _wgslsmith_clamp_u32(abs(33945u), var_2.d, var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, vec3<i32>(~func_3(var_2.c.a, 0i, var_2.a.b).a.a, -(~var_2.c.b.a), ~var_0.a.a), vec3<i32>(~abs(~var_0.a.a), ~2147483647i, -(~(-1i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.a.b.b, var_2.a.b.b), _wgslsmith_f_op_f32(-121f * 578f), _wgslsmith_f_op_f32(floor(var_0.a.b))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.a.b, 1000f))))))), _wgslsmith_div_vec2_i32(vec2<i32>(~0i, -6973i), vec2<i32>(u_input.b, firstLeadingBit(7274i))));
}

