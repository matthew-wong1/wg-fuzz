struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = -_wgslsmith_div_i32((_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -4862i, -34676i, -1i), vec4<i32>(24517i, 93917i, -2147483647i, 1i)) << (_wgslsmith_div_u32(u_input.a, 1u) % 32u)) << (52058u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-50945i, -2281i, 0i, 0i), vec4<i32>(0i, -636i, 1i, 2657i)), countOneBits(vec4<i32>(-41683i, 11585i, 2147483647i, -36355i) << (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))));
    var var_1 = Struct_1(~(~min(vec3<u32>(17233u, 79885u, 101395u), ~vec3<u32>(0u, u_input.a, 37192u))));
    return Struct_2(vec2<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, var_0)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = ~(~(~1u));
    let var_0 = firstTrailingBit(abs(_wgslsmith_clamp_u32(~81272u, u_input.a, u_input.a) ^ max(_wgslsmith_dot_vec3_u32(vec3<u32>(110453u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 76961u)), ~1u)));
    let var_1 = vec3<u32>(~(~(~1u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0, var_0, 4294967295u, 65823u) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 1u), vec4<u32>(var_0, var_0, var_0, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_sub_u32(var_0, 60408u), abs(1u), u_input.a, var_0)), ~firstLeadingBit(u_input.a));
    let var_2 = true;
    let var_3 = Struct_2(select(_wgslsmith_add_vec2_i32(reverseBits(abs(vec2<i32>(2147483647i, 26248i))), ~vec2<i32>(-37033i, 73831i)), firstTrailingBit(vec2<i32>(i32(-1i) * -15565i, _wgslsmith_sub_i32(62891i, -28609i))), var_2));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) - 751f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(37880u, 22215u, u_input.a), vec3<u32>(u_input.a, 17611u, u_input.a)), 34770u), vec3<u32>(~21067u, 1u, ~93760u)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(43158u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 41178u), vec3<u32>(u_input.a, 65764u, u_input.a)), select(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, u_input.a, 4294967295u), vec3<bool>(true, true, arg_2)))));
    var var_1 = Struct_2(~_wgslsmith_mod_vec2_i32(vec2<i32>(14450i, arg_0.a.x) ^ vec2<i32>(2147483647i, arg_0.a.x), min(vec2<i32>(arg_0.a.x, 18151i), _wgslsmith_mult_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, arg_0.a.x)))));
    let var_2 = 934f;
    let var_3 = 370f;
    var var_4 = ~(~44927i);
    return _wgslsmith_dot_vec2_u32(var_0.a.yx, ~(~max(vec2<u32>(34133u, u_input.a), ~vec2<u32>(u_input.a, 1u))));
}

fn func_1() -> Struct_3 {
    let var_0 = !(!(_wgslsmith_mult_u32(u_input.a, 23848u) < ~7824u)) & (reverseBits(min(26061u, _wgslsmith_div_u32(50921u, u_input.a))) == _wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)), ~(~u_input.a)));
    var var_1 = u_input.a;
    global0 = func_4(func_2(1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3(1351f)), _wgslsmith_f_op_f32(-147f * -857f), _wgslsmith_f_op_f32(f32(-1f) * -306f), -174f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1076f, 441f, 422f, 513f), vec4<f32>(306f, 1783f, 418f, 1759f))))))))), !select((var_0 & false) || all(vec2<bool>(false, var_0)), false, var_0));
    var var_2 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(trunc(839f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1192f, 1000f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2436f - -1212f)) * -582f))));
    var_2 = Struct_2(vec2<i32>(var_2.a.x, var_2.a.x));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(func_3(117f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -214f)))), -countOneBits(-vec4<i32>(var_2.a.x, 10951i, -2147483647i, var_2.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-38325i, 18414i), reverseBits(vec2<i32>(1i, 1i)) | ~_wgslsmith_sub_vec2_i32(var_2.a, var_2.a), var_2.a >> (abs(vec2<u32>(1u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 22531u, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, 25379u))), vec3<u32>(~_wgslsmith_div_u32(u_input.a, 14594u), ~u_input.a, firstLeadingBit(1u) | u_input.a) & ~vec3<u32>(abs(27389u), firstTrailingBit(u_input.a), u_input.a), vec3<u32>(max(1u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(3246u, 14136u, 37466u, 31983u), vec4<u32>(24788u, u_input.a, u_input.a, 25208u)), vec4<u32>(u_input.a, 26474u, u_input.a, 4294967295u) << (vec4<u32>(57081u, u_input.a, 0u, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(func_4(Struct_2(arg_1.c), vec4<f32>(553f, arg_1.a.x, arg_1.a.x, -283f), true), u_input.a), select(u_input.a ^ 35192u, 0u, false)), ~(~u_input.a) << (~u_input.a % 32u)));
    let var_1 = Struct_1(vec3<u32>(var_0.x, _wgslsmith_add_u32(var_0.x, 4294967295u), var_0.x));
    return StorageBuffer(~var_1.a.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), min(~vec2<u32>(u_input.a, 4294967295u), select(var_1.a.zy, var_0.yz, vec2<bool>(false, true)))) % 32u), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-596f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -549f, arg_1.a.x, -911f) * vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<f32>(arg_1.a.x, -471f, -592f, -1090f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, arg_1.a.x, 1156f, arg_1.a.x) - vec4<f32>(-895f, -1000f, 922f, arg_1.a.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -273f, arg_1.a.x, -365f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, -1499f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(890f, -1339f, arg_1.a.x, arg_1.a.x))) + vec4<f32>(1195f, arg_1.a.x, arg_1.a.x, -329f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = 1i;
    let var_2 = ~u_input.a << (~(~abs(0u)) % 32u);
    let var_3 = !select(!vec4<bool>(all(vec4<bool>(false, true, true, false)), true, select(true, true, true), true), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true))), true == !any(vec2<bool>(false, false)));
    var var_4 = 47830u;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(862f - 339f), 507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - 203f))) * _wgslsmith_f_op_f32(-2616f - _wgslsmith_div_f32(-238f, -1048f))), -1586f);
    let var_6 = var_5.wzx;
    var_0 = var_2;
    let x = u_input.a;
    s_output = func_5(select(vec2<i32>(var_1, var_1), -(~abs(vec2<i32>(var_1, 2147483647i))), var_3.yw), func_1());
}

