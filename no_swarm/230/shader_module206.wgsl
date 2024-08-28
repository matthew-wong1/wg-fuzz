struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = 1i;
    var var_1 = arg_0;
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1518f, _wgslsmith_f_op_f32(-230f * 1000f), _wgslsmith_f_op_f32(-824f - -1139f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1210f, -692f))), vec3<bool>(true, any(vec2<bool>(false, false)), true))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1089f + -1501f) * _wgslsmith_f_op_f32(f32(-1f) * -504f)), _wgslsmith_f_op_f32(step(-1451f, _wgslsmith_f_op_f32(select(-1174f, 640f, false))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3, vec3<f32>(var_3.x, var_3.x, var_3.x)));
    return 0i;
}

fn func_2() -> f32 {
    var var_0 = 3955u;
    var var_1 = select(select(vec3<bool>(all(vec4<bool>(false, false, true, true)) != true, false, _wgslsmith_sub_i32(-1i, -48495i) <= func_3(vec3<u32>(u_input.b, 6857u, 25836u), vec4<i32>(u_input.a, -1i, -36562i, -2147483647i))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, !select(false, true, false), true), !select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true)), any(vec4<bool>(select(true, true, true), select(true, true, any(vec2<bool>(true, true))), true == select(false, false, true), abs(36658i) >= _wgslsmith_add_i32(67094i, u_input.a))));
    let var_2 = var_1.x;
    var_1 = !select(select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(true, false, var_1.x)), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), any(!vec2<bool>(false, var_1.x))), select(vec3<bool>(false, any(var_1.xx), !var_1.x), select(!vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, true), vec3<bool>(false, var_1.x, true)), any(vec3<bool>(var_1.x, var_1.x, true))), vec3<bool>(true & var_1.x, true, select(true, var_1.x, true))), (var_1.x & (24672i >= u_input.a)) & !any(vec3<bool>(var_1.x, var_1.x, var_1.x)));
    var var_3 = select(!select(select(select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false)), select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, false, false, false)), !vec4<bool>(var_1.x, true, var_1.x, var_1.x)), vec4<bool>(all(var_1.yz), all(vec4<bool>(var_1.x, true, false, var_1.x)), var_1.x, all(vec4<bool>(var_1.x, var_1.x, false, false))), !(!vec4<bool>(var_1.x, true, true, var_1.x))), vec4<bool>(all(!select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, false), false)), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -63108i, u_input.a), vec4<i32>(-24189i, -1i, -4143i, 0i)) >= -2147483647i) || true, var_1.x, var_1.x), true);
    return _wgslsmith_f_op_f32(-316f * 1283f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec4<i32> {
    let var_0 = vec2<i32>(func_3(vec3<u32>(arg_1.d, ~arg_1.d, u_input.b), vec4<i32>(i32(-1i) * -41101i, _wgslsmith_sub_i32(arg_1.b, -u_input.a), _wgslsmith_sub_i32(~(-1i), u_input.a), -2147483647i)), -(~_wgslsmith_mod_i32(arg_1.b, 0i) << (~(arg_1.d >> (0u % 32u)) % 32u)));
    let var_1 = vec3<i32>(firstTrailingBit(~(func_3(vec3<u32>(arg_1.d, u_input.b, u_input.b), vec4<i32>(-1i, arg_1.b, var_0.x, var_0.x)) >> (abs(u_input.b) % 32u))), i32(-1i) * -2147483647i, arg_1.b);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1767f) * arg_2)));
    let var_3 = select(vec4<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, arg_3)) && false, false || all(vec2<bool>(false, arg_3)), all(vec2<bool>(true, true)) & (_wgslsmith_add_i32(0i, 16972i) >= _wgslsmith_mod_i32(var_0.x, u_input.a)), arg_1.c), vec4<bool>(arg_0, arg_0, true, all(!(!vec3<bool>(arg_3, arg_0, false)))), all(select(!vec3<bool>(false, arg_1.c, arg_3), vec3<bool>(arg_3, false | arg_0, arg_1.c), false)));
    var var_4 = min(min((vec2<i32>(-1i, arg_1.b) >> (firstLeadingBit(vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))) ^ countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -29667i), var_0)), select(var_0, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b, 4814i), var_1.zz), vec2<i32>(42921i, var_1.x) >> (vec2<u32>(6436u, 1u) % vec2<u32>(32u))), vec2<bool>(false, all(vec4<bool>(true, false, true, var_3.x))))), min(-firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(arg_1.b, 32618i))), abs(firstTrailingBit(var_0))));
    return vec4<i32>(8647i, var_1.x, countOneBits(-(var_4.x ^ var_0.x)), _wgslsmith_mod_i32(min(reverseBits(-1i), _wgslsmith_div_i32(14265i, var_1.x)), u_input.a));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = ~(~select(vec4<i32>(arg_1.b, u_input.a, 0i, u_input.a) | vec4<i32>(arg_1.b, arg_1.b, -30743i, 71466i), vec4<i32>(0i, -2630i, 33335i, 2147483647i) | vec4<i32>(9564i, u_input.a, -1241i, 15417i), all(vec3<bool>(arg_2, arg_1.c, false)))) & func_4(true, Struct_1(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -166f), 1000f), _wgslsmith_mod_i32(u_input.a, -1i), arg_2, min(~1u, ~arg_1.d)), 1f, any(vec4<bool>(arg_2, arg_1.b != arg_1.b, false, !arg_2)));
    var var_1 = vec4<i32>(~(func_3(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<i32>(1i, -455i, -30828i, var_0.x)) ^ -22581i), firstLeadingBit(1i), abs(func_4((false && arg_2) && select(arg_0, arg_1.c, arg_2), arg_1, arg_1.a.x, any(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_2, arg_0), arg_2))).x), -(max(~1i, u_input.a) << (~arg_3 % 32u)));
    let var_2 = ~reverseBits(vec2<u32>(24048u, select(4294967295u, arg_1.d ^ u_input.b, any(vec4<bool>(true, false, true, arg_0)))));
    var_1 = reverseBits(var_0) ^ ~(~(~var_0) & -(~var_0));
    let var_3 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(385f - arg_1.a.x), arg_1.a.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2086f + 141f) + arg_1.a.x), arg_2, true, !select(arg_0 & true, true, u_input.a == arg_1.b));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)) - arg_1.a), u_input.a, all(var_3.wxw), reverseBits(firstLeadingBit(55393u)) | firstLeadingBit(firstTrailingBit(~arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1330f * 262f), _wgslsmith_f_op_f32(583f - -610f), 1319f, _wgslsmith_f_op_f32(f32(-1f) * -116f))), _wgslsmith_sub_i32(u_input.a, u_input.a), true, 14799u), false, 27697u & max(_wgslsmith_div_u32(u_input.b, u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(0u, 1u, 3643u)))));
    let var_1 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_0.d, 1u)) & vec2<u32>(u_input.b & ~u_input.b, select(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 65571u, u_input.b), vec3<u32>(34679u, 59007u, 0u)), !var_0.c)), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.d), vec2<u32>(43913u, 49442u)))));
    var var_2 = var_1.x;
    let var_3 = ~_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 2968i) | (~vec2<i32>(var_0.b, -2147483647i) & vec2<i32>(0i, 1i)), func_4(15762i < u_input.a, Struct_1(var_0.a, u_input.a, var_0.c, 4294967295u), _wgslsmith_f_op_f32(-1844f * var_0.a.x), true).zz >> (vec2<u32>(_wgslsmith_add_u32(var_1.x, u_input.b), u_input.b) % vec2<u32>(32u)));
    var_2 = 47540u;
    var var_4 = vec4<f32>(845f, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(159f)) * 1921f))), _wgslsmith_f_op_f32(-1000f - 482f), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_4.x))) + _wgslsmith_f_op_f32(-var_0.a.x)), abs(min(var_0.b, var_3.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a, -1i, u_input.a), max(~vec4<i32>(var_3.x, var_0.b, 0i, var_3.x), vec4<i32>(u_input.a, u_input.a, var_0.b, var_0.b))), -(~func_1(var_0.c, var_0, var_0.c, var_0.d).b), _wgslsmith_div_i32((847i & var_0.b) ^ -var_3.x, ~var_3.x & -2147483647i), ~func_1(false, var_0, !var_0.c, ~var_1.x).b), _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(35706u, var_1.x, u_input.b), vec3<u32>(4294967295u, var_1.x, 1u) & vec3<u32>(u_input.b, var_1.x, 20866u))), max(vec3<u32>(~var_1.x, var_0.d, func_1(true, Struct_1(var_0.a, 1i, true, 4294967295u), true, 22624u).d), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_0.d, 1u), ~vec3<u32>(var_1.x, var_0.d, 4294967295u)))), abs(~select(vec3<u32>(u_input.b, 75500u, 52991u) | vec3<u32>(41756u, u_input.b, 4339u), ~vec3<u32>(u_input.b, 26686u, 0u), any(vec2<bool>(var_0.c, var_0.c)))));
}

