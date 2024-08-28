struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = select(vec2<bool>(any(vec2<bool>(any(vec2<bool>(true, false)), -8881i < u_input.e)), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), u_input.d.x > 1u), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), u_input.e >= u_input.e), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), any(vec2<bool>(false, false)))), true);
    let var_1 = Struct_4(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.e, ~(-23391i)), vec2<i32>(1i, 1i)), vec2<i32>(756i, ~(-1i))));
    var var_2 = _wgslsmith_add_u32(~(~firstLeadingBit(~u_input.b.x)), firstLeadingBit(~(11824u & (u_input.b.x >> (u_input.b.x % 32u)))));
    let var_3 = Struct_5(!vec4<bool>(!(!var_0.x), any(!vec2<bool>(true, var_0.x)), all(vec2<bool>(true, var_0.x)), var_0.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.e, _wgslsmith_sub_i32(2147483647i ^ var_1.a.x, _wgslsmith_sub_i32(u_input.e, u_input.e)), u_input.e), 1i));
    var_2 = ~115202u;
    return u_input.c.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, true)))), ~(~(_wgslsmith_sub_i32(u_input.e, -1i) << (13497u % 32u))), max(u_input.d.x, _wgslsmith_sub_u32(66428u, select(func_3(), 4294967295u << (0u % 32u), false))));
    let var_1 = ~(~vec2<u32>(1u, ~46652u)) >> (max(vec2<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), var_0.c), reverseBits(_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.c.zz), u_input.a.yy))) % vec2<u32>(32u));
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1005f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-570f, 1069f), -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f + -1372f))))));
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(357f)), -321f))))));
    return Struct_4(~max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 41239i, u_input.e), vec3<i32>(u_input.e, -29765i, u_input.e)), ~u_input.e), -vec2<i32>(u_input.e, 0i)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = (u_input.e << (u_input.c.x % 32u)) << (firstLeadingBit(~(~abs(u_input.a.x))) % 32u);
    let var_1 = !select(vec2<bool>(!(arg_1.x <= -625f), false), select(vec2<bool>(u_input.e != u_input.e, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, false)), !((2147483647i <= u_input.e) & true));
    var_0 = max(~(-29720i << (u_input.d.x % 32u)), u_input.e);
    var var_2 = func_2();
    var_2 = func_2();
    return Struct_2(Struct_1(!var_1, 0i >> (reverseBits(~u_input.d.x) % 32u), 0u), Struct_1(!var_1, max(0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, var_2.a.x, -2147483647i), -vec3<i32>(-37409i, u_input.e, 58680i))), min(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6766u, 16340u, 4294967295u, 1153u), vec4<u32>(11301u, u_input.b.x, u_input.a.x, u_input.d.x))) >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - 1037f), arg_1.x) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(901f, arg_1.x, 876f), vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 790f, arg_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 516f, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, 1436f))))))), Struct_1(vec2<bool>(all(vec4<bool>(arg_0, false, var_1.x, var_1.x)), false), u_input.e, 5629u), arg_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = min(u_input.e, _wgslsmith_mod_i32(func_2().a.x, abs(7609i)));
    let var_1 = true;
    var_0 = _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(0i, -arg_0.d.b, arg_0.a.b, _wgslsmith_clamp_i32(u_input.e, -1175i, arg_0.a.b))), countOneBits(vec4<i32>(~u_input.e, ~(-1i), ~arg_0.d.b, 22962i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(53016u, u_input.d.x, 0u, u_input.b.x), vec4<u32>(4154u, arg_0.d.c, 47667u, 4015u), vec4<u32>(arg_0.a.c, u_input.d.x, u_input.b.x, 0u)), vec4<u32>(1u, 4294967295u, 22024u, 1u) | vec4<u32>(arg_0.b.c, u_input.b.x, u_input.a.x, u_input.d.x)), firstLeadingBit(vec4<u32>(30589u, arg_0.d.c, arg_0.b.c, 15721u))) % vec4<u32>(32u)));
    var var_2 = 0i << ((~(~(u_input.d.x << (arg_0.b.c % 32u))) ^ ~(~32328u)) % 32u);
    var var_3 = _wgslsmith_f_op_f32(-1296f + arg_0.e) > 156f;
    return arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = vec4<bool>(true, true, arg_2.a.a.x, any(vec4<bool>(func_4(arg_2, vec2<bool>(arg_0.x, false)).d.a.x && arg_2.d.a.x, (arg_2.d.b >= u_input.e) || func_1(true, vec2<f32>(604f, arg_1.x)).a.a.x, arg_0.x, arg_2.d.a.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(arg_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.wz - vec2<f32>(arg_1.x, arg_1.x)), vec2<f32>(-178f, 1318f))).e + arg_1.x)));
    var_0 = !(!vec4<bool>(arg_2.a.a.x, var_0.x, !all(vec2<bool>(arg_2.d.a.x, arg_0.x)), (arg_2.d.b <= u_input.e) || true));
    var_1 = arg_1.x;
    var var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(countOneBits(select(u_input.a.x, u_input.a.x, var_0.x)), 0u, ~u_input.b.x >> (u_input.d.x % 32u)), ~(~arg_2.d.c), ~(~max(arg_2.b.c, u_input.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b.c, arg_2.d.c, 1u, u_input.d.x), vec4<u32>(1u, 0u, 0u, 11175u)) | u_input.b.x);
    return 80007u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~(-u_input.e), _wgslsmith_add_i32(u_input.e, -(u_input.e & u_input.e) & max(u_input.e, -2147483647i)));
    var var_1 = Struct_5(vec4<bool>(true, false && !(u_input.e <= -11214i), -21752i > (firstTrailingBit(u_input.e) << (~u_input.a.x % 32u)), false), u_input.e);
    let var_2 = Struct_1(!(!select(vec2<bool>(false, true), !var_1.a.zx, var_1.a.yx)), 1i, func_5(var_1.a.wzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2042f, -1619f, 768f, -1000f)))), func_4(func_1(var_1.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1132f, 397f) + vec2<f32>(-1183f, -541f))), var_1.a.yz)));
    var_1 = Struct_5(var_1.a, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(-(vec4<i32>(1i, u_input.e, -67443i, u_input.e) << (vec4<u32>(1u, u_input.a.x, var_2.c, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, var_1.b, u_input.e, var_2.b), vec4<i32>(var_1.b, 1i, -34103i, 1475i), vec4<i32>(-32282i, 2147483647i, -2147483647i, u_input.e)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, -1i, 16905i, var_2.b), vec4<i32>(-36492i, var_1.b, var_1.b, var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-787f - 233f), _wgslsmith_f_op_f32(select(-1800f, -1362f, var_1.a.x)))))), u_input.d.x);
}

