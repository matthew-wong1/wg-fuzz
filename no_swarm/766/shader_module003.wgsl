struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> bool {
    global0 = -2326f;
    var var_0 = 11108u;
    var_0 = _wgslsmith_dot_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 6209u, 1u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(18635u, 1u, 5248u, 33803u))), 1u), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1008u, 1u), 1u >> (0u % 32u)), _wgslsmith_clamp_u32(~13224u, _wgslsmith_mult_u32(4294967295u, 0u), 50440u))), firstLeadingBit(~(~(~vec2<u32>(0u, 4294967295u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_div_f32(841f, -311f))))), 1u, vec2<i32>(1i, arg_1));
    var var_2 = !(!arg_0);
    return true && arg_0.x;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(1f, 1f), ~countOneBits(firstLeadingBit(1u)), max(u_input.a ^ -vec2<i32>(u_input.e, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -38251i), u_input.b.yy)), -(~vec2<i32>(-5863i, u_input.a.x)))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))) * var_0.a.x)));
    global0 = -417f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, var_0.a.x)))))), 4294967295u, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(max(abs(u_input.c), max(0i, -28088i)), u_input.e)));
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(537f, var_1.a.x) - var_0.a))))), ~(min(var_0.b, countOneBits(40664u)) >> (~var_1.b % 32u)), ~u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0.b;
    let var_1 = arg_0;
    var var_2 = abs(arg_0.b >> (1u % 32u));
    let var_3 = func_3(arg_1, select(select(vec2<bool>(var_1.b <= arg_0.b, arg_1), select(vec2<bool>(arg_1, true), !vec2<bool>(arg_1, true), true), !(!vec2<bool>(arg_1, arg_1))), select(!vec2<bool>(false, arg_1), vec2<bool>(true, true), !vec2<bool>(arg_1, false)), !all(vec2<bool>(false, arg_1))));
    let var_4 = var_1;
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(func_3(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec3<bool>(false, false, true)))), !vec2<bool>(func_2(vec4<bool>(false, true, true, false), -28783i), true)), select(true, any(vec4<bool>(u_input.c != -39805i, true, false, arg_0.x >= 58783u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1202f)) * _wgslsmith_div_f32(796f, -1085f)) < 1465f));
    var var_1 = func_3(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))) && any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, any(vec2<bool>(false, true)), false))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)))), 45236u, vec2<i32>(u_input.c, firstTrailingBit(_wgslsmith_sub_i32(var_0.c.x, 0i)) ^ u_input.e));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-var_1.a.x)), func_3(var_0.c.x <= -var_0.c.x, select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false))).a.x) - 1000f);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(step(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(-441f)), var_1.a.x))), ~0u, _wgslsmith_add_vec2_i32(var_0.c, var_1.c));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_1(~(~vec3<u32>(4294967295u, arg_2.b, 27258u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b, arg_2.b, 0u), vec3<u32>(arg_2.b, 11831u, arg_2.b)))).a, min(arg_2.b, arg_2.b), countOneBits(vec2<i32>(arg_2.c.x, ~u_input.a.x)));
    var var_1 = func_3(!any(select(!vec4<bool>(arg_1, true, true, arg_1), select(vec4<bool>(false, arg_1, arg_0, true), vec4<bool>(arg_1, true, arg_1, arg_0), true), false)), vec2<bool>(!(var_0.b < (arg_2.b & var_0.b)), false));
    let var_2 = Struct_1(vec2<f32>(-1742f, arg_2.a.x), var_0.b, vec2<i32>(arg_2.c.x, var_0.c.x << (~1u % 32u)));
    var var_3 = func_4(var_0, true).c.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 984f, -551f, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1726f, 110f, -234f, var_1.a.x))))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i) ^ u_input.a, -vec2<i32>(u_input.a.x, -33206i)) | -1i) ^ abs(~16848i));
    let var_1 = func_5(true, !(!all(vec4<bool>(false, true, false, false))), func_1(vec3<u32>(1u, 1u, 1u)));
    global0 = 983f;
    var var_2 = all(vec4<bool>(false, true, false, false));
    var var_3 = vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-func_3(false, vec2<bool>(true, true)).a.x)), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), 602f, var_1.a.x);
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2194f, -651f, var_1.a.x, -908f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, var_3.x, 1396f, var_3.x), vec4<f32>(-920f, 560f, var_1.a.x, -2060f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), func_3(any(vec2<bool>(false, true)), vec2<bool>(false, true)).a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(133f - var_1.a.x), _wgslsmith_f_op_f32(1000f + var_1.a.x), true))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    var var_4 = func_3(true, !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(u_input.d > 42630i, true), vec2<bool>(all(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c >> (((~vec2<u32>(0u, 3667u) >> ((vec2<u32>(41769u, var_4.b) ^ vec2<u32>(4294967295u, 5311u)) % vec2<u32>(32u))) >> (reverseBits(~vec2<u32>(1u, var_1.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<f32>(-110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.a.x)) - -637f) + 498f), var_4.a.x, _wgslsmith_f_op_f32(-1190f - 1118f)));
}

