struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(all(vec4<bool>(true, true, true, true)));
    return var_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3;
    var var_1 = firstLeadingBit(~firstTrailingBit(select(select(vec4<i32>(1i, u_input.c, u_input.c, 14515i), vec4<i32>(arg_2, u_input.c, -13121i, 1i), vec4<bool>(arg_3.a, true, arg_3.a, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(522i, -2147483647i, u_input.c, 10966i), vec4<i32>(47220i, 0i, arg_2, u_input.c)), var_0.a & false)));
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-110f, 1073f, 854f, var_2), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -905f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(exp2(arg_0.x)), var_2, var_2)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, arg_0.x, 1114f, -712f)))))), vec4<f32>(_wgslsmith_div_f32(var_2, var_2), 1085f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-447f * var_2), -2059f)), -235f)));
    var_1 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_sub_i32(~arg_2, u_input.c >> (0u % 32u)), firstLeadingBit(reverseBits(var_1.x) ^ 0i)), 2147483647i, arg_2, u_input.c);
    return !(!vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, 1959f), vec2<f32>(389f, var_2))), _wgslsmith_f_op_vec2_f32(-var_3.xx), var_1.x ^ -1i, ~2574u).a, any(vec4<bool>(false, arg_1, arg_1, arg_1)), arg_3.a, true));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.b.x, u_input.a.x), min(vec2<u32>(4294967295u, u_input.e), _wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, 103072u)))), (u_input.a ^ ~u_input.b.xw) | ~vec2<u32>(u_input.e, u_input.b.x)) << (~vec2<u32>(4294967295u << ((4294967295u & u_input.d) % 32u), 33200u) % vec2<u32>(32u));
    var_0 = u_input.a;
    var var_1 = 10076u;
    let var_2 = 1077f;
    let var_3 = Struct_1(arg_0.x, vec3<f32>(var_2, var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2, 2338f))))), select(18661i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-4817i, -17325i)), true) << (_wgslsmith_div_u32(var_0.x, u_input.a.x) % 32u), 1i);
    return Struct_1(89455u <= u_input.a.x, var_3.b, var_3.c << (u_input.e % 32u), 0i);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> vec3<bool> {
    var var_0 = func_4(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.yw), vec2<f32>(430f, arg_1.x), vec2<bool>(false, true))) + arg_1.zw), true, -682i, func_2(vec2<f32>(arg_1.x, arg_1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2)))), firstLeadingBit(u_input.c | u_input.c), 1u)));
    var_0 = func_4(select(vec4<bool>(~u_input.a.x < ~u_input.b.x, var_0.a, true, func_4(vec4<bool>(var_0.a, true, arg_0.a, true)).a), !(!(!vec4<bool>(var_0.a, var_0.a, true, var_0.a))), true));
    var var_1 = vec4<f32>(arg_1.x, arg_2, 2272f, arg_1.x);
    var_0 = func_4(vec4<bool>(true, var_0.a, any(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), vec2<bool>(var_0.a, false))) && true, select(all(vec2<bool>(false, false)), !arg_0.a | (arg_0.a != false), var_0.a)));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(-13207i, select(2147483647i, ~u_input.c, arg_0.a)), _wgslsmith_clamp_i32(35615i, -(~u_input.c), 19877i ^ ~var_0.c), -2147483647i) >> (~max(reverseBits(u_input.b.yyz) | (vec3<u32>(u_input.e, 1u, 0u) >> (u_input.b.zyy % vec3<u32>(32u))), vec3<u32>(21088u, u_input.a.x << (30750u % 32u), max(u_input.e, 4294967295u))) % vec3<u32>(32u));
    return vec3<bool>(arg_0.a, 1i < var_0.d, !arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(u_input.c <= 0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(975f, -823f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(628f, -126f))))));
    let var_2 = max(1u, 68802u);
    var var_3 = !select(select(vec3<bool>(true, true, any(vec2<bool>(var_0, false))), !func_1(Struct_2(var_0), vec4<f32>(520f, var_1.x, var_1.x, var_1.x), var_1.x), var_0), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, -670f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, var_1.x))), any(vec2<bool>(var_0, true)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, var_1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-434f, var_1.x), vec2<f32>(266f, -679f)), u_input.c, 1u & u_input.a.x)).wxw, func_3(vec2<f32>(1f, 1f), false, u_input.c ^ u_input.c, Struct_2(var_0 && var_0)).zwx);
    var var_4 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(var_1.x, -319f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(695f, _wgslsmith_f_op_f32(-var_1.x)))), vec2<f32>(-844f, 799f), -30730i, firstLeadingBit(_wgslsmith_mod_u32(abs(var_2 | 0u), 0u)));
    var var_5 = func_4(!select(!func_3(vec2<f32>(var_1.x, var_1.x), false, 31581i, Struct_2(var_4.a)), vec4<bool>(true, u_input.b.x == 4294967295u, var_1.x >= var_1.x, var_3.x), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(var_5.b.x, _wgslsmith_f_op_f32(-754f * var_1.x))), 1179f, _wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c, -60642i), -35170i) << (select(vec2<u32>(41922u, 32002u), select(vec2<u32>(28135u, 51000u), vec2<u32>(1u, var_2), var_3.x), true) % vec2<u32>(32u)), -reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_5.d), vec2<i32>(24967i, u_input.c)))), ~_wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(7922u, u_input.a.x)), ~var_2));
}

