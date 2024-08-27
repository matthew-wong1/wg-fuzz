struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = select(false, _wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(4294967295u & arg_2.x, u_input.c)) <= 4294967295u, false);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 370f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-744f, _wgslsmith_f_op_f32(min(189f, -403f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(968f, 569f))), -178f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(603f)))));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_0.yy;
    let var_1 = Struct_2(select(select(vec2<bool>(true, false), vec2<bool>(false, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), u_input.b.x != u_input.b.x), !vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, false, true)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), true)), !select(any(vec3<bool>(true, true, false)), true, u_input.b.x == u_input.b.x), true, Struct_1(~countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_2 = u_input.c;
    var var_3 = var_1.e;
    var var_4 = Struct_2(var_1.b.yw, var_1.b, u_input.b.x > -1i, !var_1.c, Struct_1(-select(vec3<i32>(64149i, var_1.e.a.x, 19975i) << (vec3<u32>(0u, u_input.c, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.b.x, var_1.e.a.x), !var_1.a.x)));
    return vec3<bool>(!any(vec4<bool>(false, true | var_4.a.x, u_input.a != 15429u, all(vec3<bool>(true, var_1.b.x, var_4.a.x)))), !var_4.d, !var_1.b.x);
}

fn func_2(arg_0: u32) -> vec4<i32> {
    var var_0 = 58283u <= _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, ~arg_0), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 34857u), vec2<u32>(74027u, 4294967295u))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 67285u), vec2<u32>(14039u, 82512u), vec2<u32>(u_input.c, 0u)), select(vec2<u32>(21884u, arg_0), vec2<u32>(0u, arg_0), vec2<bool>(false, true))), countOneBits(reverseBits(vec2<u32>(arg_0, arg_0)))));
    var_0 = true | !all(vec2<bool>(false, all(vec2<bool>(true, true))));
    let var_1 = -2147483647i > -_wgslsmith_mod_i32(~abs(2147483647i), u_input.b.x);
    var_0 = var_1;
    let var_2 = select(select(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 34027i)), vec4<u32>(0u, 18062u, 53770u, arg_0), vec3<u32>(32393u, 4294967295u, arg_0)))))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, var_1))), vec3<bool>(all(vec2<bool>(true, var_1)), select(var_1, !var_1, var_1 || false), select(var_1, all(vec2<bool>(var_1, var_1)), any(vec4<bool>(var_1, true, var_1, false))))), vec3<bool>(~arg_0 < ~u_input.c, !(countOneBits(u_input.a) >= ~19423u), false && ((1i >> (arg_0 % 32u)) > u_input.b.x)), !var_1);
    return -abs(abs(vec4<i32>(abs(13251i), u_input.b.x, abs(19879i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, 1i), u_input.b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_2(vec2<bool>(!(~39698u > ~u_input.a), true), select(select(vec4<bool>(true && arg_2.x, false, arg_2.x, arg_2.x), !(!vec4<bool>(true, arg_2.x, arg_2.x, false)), true), vec4<bool>(any(select(arg_2, arg_2, vec3<bool>(false, false, arg_2.x))), true, select(all(vec3<bool>(arg_2.x, true, arg_2.x)), !arg_2.x, true & arg_2.x), any(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), vec4<bool>(true, !(arg_2.x || arg_2.x), false, any(arg_2.xx))), arg_2.x, any(arg_2.zz), arg_1);
    var var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(36725i, var_0.e.a.x, ~arg_1.a.x, 2147483647i))), func_2(80477u));
    var var_2 = Struct_3(~select(vec2<u32>(~u_input.a, ~61041u), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(16155u, 0u), vec2<u32>(u_input.a, 26740u))), select(var_0.a, vec2<bool>(true, true), !arg_2.yz)));
    var var_3 = var_0.e;
    var_3 = arg_1;
    return Struct_4(Struct_3(~var_2.a), ~var_2.a.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1348f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 567f), vec2<f32>(-2292f, -1123f), true)))), vec2<f32>(1405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(216f, -1000f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1991f, -727f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, -1125f) * vec2<f32>(-1264f, var_0)))))))));
    var var_2 = Struct_3(min(~vec2<u32>(arg_0.a.a.x, 4294967295u), arg_1.a.a) >> (~vec2<u32>(u_input.c, arg_1.a.a.x) % vec2<u32>(32u)));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(reverseBits(abs(2147483647i)), reverseBits(i32(-1i) * -2147483647i)), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(countOneBits(2147483647i), 4724i ^ arg_2.a.x), -(~0i)), 0i));
    return Struct_2(vec2<bool>(true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), -1i < -arg_2.a.x), !any(!func_4(vec4<f32>(var_1.x, var_1.x, var_0, var_0)).xy), !(!any(func_4(vec4<f32>(var_0, 360f, var_1.x, -470f)).yy)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(max(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(u_input.b.x, 24480i, u_input.b.x)), 3367i)), u_input.b.x, -1i, u_input.b.x & _wgslsmith_mod_i32(u_input.b.x, countOneBits(-2147483647i) & ~u_input.b.x));
    var var_1 = func_5(func_1(var_0.yx, Struct_1(vec3<i32>(-7295i, abs(2107i), var_0.x)), select(vec3<bool>(true, true, all(vec2<bool>(true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true)), func_1(-vec2<i32>(-5054i, u_input.b.x), Struct_1(-firstTrailingBit(vec3<i32>(u_input.b.x, -1i, u_input.b.x))), vec3<bool>(false, true, true)), Struct_1(~u_input.b >> ((select(vec3<u32>(u_input.a, u_input.a, u_input.c), vec3<u32>(u_input.c, 29454u, u_input.a), vec3<bool>(true, false, false)) >> (~vec3<u32>(u_input.c, 69126u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var_1 = Struct_2(vec2<bool>(false, true), select(vec4<bool>(var_1.b.x, false, false && (var_1.a.x & true), var_1.d), vec4<bool>(false, any(var_1.b.xw), var_1.a.x, true), var_1.b), false, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, 323f, -563f, -1347f))))).x, var_1.e);
    let var_2 = Struct_2(var_1.b.zz, !vec4<bool>(!var_1.c, var_1.b.x, !var_1.b.x, false || (var_1.a.x | true)), any(!var_1.a), true, var_1.e);
    var_1 = var_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-399f, -310f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1394f, 1100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b), vec4<u32>(18920u, 2604u, 14023u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.c))).x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(315f, 587f), vec2<f32>(-913f, -216f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1022f), vec2<f32>(703f, -1182f), var_1.a))), false)))));
    let var_4 = Struct_2(!vec2<bool>(any(vec3<bool>(var_1.c, var_1.b.x, false)) | all(vec4<bool>(var_2.b.x, var_2.a.x, var_1.d, true)), false), var_2.b, true, true, func_5(Struct_4(func_1(var_2.e.a.yz, Struct_1(vec3<i32>(var_0.x, var_2.e.a.x, var_0.x)), vec3<bool>(true, var_1.d, false)).a, ~_wgslsmith_div_u32(u_input.c, u_input.a)), Struct_4(Struct_3(~vec2<u32>(74599u, u_input.c)), u_input.a), var_1.e).e);
    let var_5 = _wgslsmith_div_f32(var_3.x, 204f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.x, ~u_input.b.x), vec2<u32>(4294967295u, select(~u_input.c, 8211u, !var_4.a.x)), -vec4<i32>(-_wgslsmith_sub_i32(-35415i, var_2.e.a.x), func_2(_wgslsmith_add_u32(1u, 32648u)).x, _wgslsmith_dot_vec4_i32(-vec4<i32>(9704i, u_input.b.x, -21510i, -1534i), vec4<i32>(-2147483647i, -50772i, u_input.b.x, var_4.e.a.x)), reverseBits(_wgslsmith_mod_i32(var_4.e.a.x, -2147483647i))));
}

