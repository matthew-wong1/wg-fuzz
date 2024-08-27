struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    let var_0 = !(abs(4294967295u) > arg_2);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-724f, -1000f)) + _wgslsmith_f_op_f32(arg_1.b - arg_1.b)))), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(953f, -799f)) + arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b))))));
    var_1 = vec3<f32>(-1896f, arg_0, -361f);
    let var_2 = Struct_1(~vec2<u32>(max(arg_2, _wgslsmith_add_u32(arg_1.a.x, 4294967295u)), arg_2), -393f, _wgslsmith_sub_i32(~u_input.a.x, u_input.e) ^ arg_1.c);
    var var_3 = Struct_1(var_2.a, var_2.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 13015i, arg_1.c, -48484i), ~vec4<i32>(-1i, u_input.c, arg_1.c, arg_1.c)), _wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(arg_1.c, u_input.c, u_input.e, var_2.c)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c, var_2.c, -1i, arg_1.c), vec4<i32>(0i, -13450i, -1i, 1i)), vec4<i32>(u_input.a.x, u_input.e, 2147483647i, 47535i)))));
    return vec3<u32>(~reverseBits(9601u), 1u, arg_2);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec2<u32> {
    return firstLeadingBit(~arg_0.yy);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = Struct_1(vec2<u32>(max(~(~6404u), u_input.d.x), _wgslsmith_add_u32(8736u, 21368u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(432f, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(arg_0.b + arg_0.b)))))), ~31773i);
    let var_2 = firstTrailingBit(var_1.a << (~(~vec2<u32>(arg_0.a.x, 70264u)) % vec2<u32>(32u)));
    let var_3 = true;
    return Struct_1(_wgslsmith_mult_vec2_u32(countOneBits(func_4(func_3(-1000f, arg_0, var_0.a.x), _wgslsmith_f_op_f32(-arg_0.b), false)), _wgslsmith_mult_vec2_u32(func_4(vec3<u32>(0u, arg_0.a.x, u_input.d.x), -247f, true) ^ var_1.a, u_input.d.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1517f)))), select(-2147483647i, var_0.c, false) ^ ~countOneBits(u_input.a.x));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !select(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(false, true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, false, true)), true)), !vec3<bool>(true, true, select(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)), true)));
    var var_1 = ~(-2147483647i ^ _wgslsmith_add_i32(56685i, u_input.b));
    var var_2 = ~(~(~max(u_input.d, abs(u_input.d))));
    var var_3 = var_0.x;
    var_2 = ~(vec4<u32>(_wgslsmith_div_u32(~4294967295u, u_input.d.x), 43689u, arg_0.a.x, u_input.d.x >> (66772u % 32u)) & u_input.d);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 149f))))), -1319f, 1344f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(391f))), -1697f))));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.c, 1i, arg_2);
    var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i) << (vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), u_input.a ^ vec3<i32>(41452i, 1i, arg_2)), 59993i, firstTrailingBit(arg_2 >> (u_input.d.x % 32u))) ^ _wgslsmith_add_vec3_i32(u_input.a, select(vec3<i32>(func_2(Struct_1(vec2<u32>(33444u, u_input.d.x), 214f, arg_2)).c, abs(-5639i), -20162i), vec3<i32>(_wgslsmith_add_i32(-14363i, 2147483647i), u_input.a.x, firstLeadingBit(var_0.x)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))));
    var var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = -1261f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(arg_1))));
    return Struct_1(~u_input.d.yx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), reverseBits(36802i) >> (0u % 32u));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_5(func_2(Struct_1(vec2<u32>(938u, 4294967295u), 1000f, 65183i))))))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(702f))))), 0i);
    var var_1 = -(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, var_0.c), ~u_input.a.yz));
    let var_2 = ~u_input.d;
    let var_3 = var_0.a.x;
    let var_4 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, var_0.b, 261f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_add_i32(var_0.c, _wgslsmith_sub_i32(var_0.c, 0i))))).x + var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.d.zz, min(u_input.d.wx, u_input.d.xz >> (u_input.d.xy % vec2<u32>(32u)))), ~max(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, 98512u))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(321f, 472f)) - _wgslsmith_f_op_f32(f32(-1f) * -2448f)))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(0i, 0i, u_input.e, 151i)), select(select(vec4<i32>(21545i, u_input.e, u_input.c, u_input.b), reverseBits(vec4<i32>(u_input.e, u_input.a.x, u_input.e, -2147483647i)), vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 2147483647i), vec4<i32>(1i, 31803i, u_input.c, 1i)), true || (u_input.c > u_input.b))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(218f, 246f)) - 191f), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-var_0.b), var_0.a.x, -1i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_f_op_f32(abs(var_0.b))));
    var_0 = Struct_1(~func_4(vec3<u32>(~var_0.a.x, 1u, _wgslsmith_mult_u32(u_input.d.x, 40700u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(877f + 1075f)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1002f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))))), i32(-1i) * -u_input.c);
    var_0 = Struct_1(max(u_input.d.wx, select(~(~var_0.a), ~func_3(var_1.x, Struct_1(vec2<u32>(u_input.d.x, 18706u), 1732f, u_input.b), 4294967295u).yz, vec2<bool>(true, true))), var_1.x, _wgslsmith_mult_i32(34578i, var_0.c) ^ ((i32(-1i) * -1i) ^ u_input.e));
    let var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_6(vec4<f32>(var_0.b, var_0.b, var_0.b, -956f), -966f, var_0.c).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))) * 174f));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2261f - -414f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(1u, var_0.a.x), 883f, -2147483647i)).b - var_1.x) * _wgslsmith_f_op_f32(max(-1255f, _wgslsmith_f_op_f32(round(var_0.b))))));
    var_0 = func_6(_wgslsmith_f_op_vec4_f32(func_5(func_6(vec4<f32>(1577f, _wgslsmith_div_f32(-1657f, var_1.x), _wgslsmith_f_op_f32(var_1.x * -968f), var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), -10913i))), _wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_mod_i32(-49351i, -var_0.c) | func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_2, 1204f, 621f) - vec4<f32>(-451f, 1359f, 1986f, var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -511f), 0i).c);
    var var_4 = 91089u >> (_wgslsmith_add_u32(u_input.d.x, u_input.d.x) % 32u);
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wy);
}

