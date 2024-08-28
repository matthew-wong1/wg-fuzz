struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = Struct_3(vec4<u32>(((u_input.a | u_input.a) << (~u_input.a % 32u)) ^ u_input.a, ~2801u, ~arg_2, countOneBits(~(u_input.a ^ 1u))), arg_0.a.ww);
    let var_1 = _wgslsmith_mult_i32(var_0.b.x, -1i) & -var_0.b.x;
    global0 = array<vec4<u32>, 15>();
    var var_2 = var_0;
    var var_3 = arg_0;
    return arg_1;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(0u, 15u)], firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(1i, 29280i)), select(vec2<i32>(-11975i, 5910i), vec2<i32>(71649i, 2147483647i), false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2656f * 315f));
    var_0 = Struct_3(vec4<u32>(18187u, ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(69707u, 15u)], vec4<u32>(0u, var_0.a.x, u_input.a, 1u)) | max(0u, ~var_0.a.x), _wgslsmith_sub_u32(u_input.a, 1u), ~(~u_input.a)), ~vec2<i32>(_wgslsmith_div_i32(var_0.b.x, 36839i) >> ((var_0.a.x >> (4294967295u % 32u)) % 32u), abs(_wgslsmith_mod_i32(7450i, -4960i))));
    let var_2 = -vec4<i32>(-66562i, var_0.b.x >> (_wgslsmith_add_u32(~u_input.a, var_0.a.x) % 32u), -1i ^ _wgslsmith_mod_i32(var_0.b.x, ~var_0.b.x), ~_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), var_0.b.x));
    let var_3 = var_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-vec4<i32>(var_2.x, -49139i, var_2.x, -1i), _wgslsmith_div_f32(-810f, var_1), vec3<bool>(true, true, true)), var_1, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 8321u), ~var_0.a.yw))) + var_1);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, -83915i), -vec4<i32>(-8790i, -12496i, 1i, 3462i), -vec4<i32>(-36292i, 32962i, -2147483647i, -1i)), vec4<i32>(~31102i, ~(-2147483647i), i32(-1i) * -3269i, ~(-2147483647i))), _wgslsmith_f_op_f32(func_2()), vec3<bool>(false, false, all(vec3<bool>(all(vec2<bool>(true, false)), false, true))));
    var var_1 = ~var_0.a.zyw ^ vec3<i32>(1i, 1i, 1i);
    var var_2 = !vec3<bool>(any(vec3<bool>(true, !var_0.c.x, false)), var_0.c.x, false);
    global0 = array<vec4<u32>, 15>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    return Struct_2(vec4<i32>(1i, abs(var_1.x << (~0u % 32u)), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(24348i, var_0.a.x, 0i), var_0.a.zyw, var_0.c), firstTrailingBit(~var_0.a.ywx)), _wgslsmith_dot_vec2_i32(max(var_1.xx, var_0.a.yy), select(firstLeadingBit(var_1.xz), ~var_1.zz, select(var_0.c.yy, vec2<bool>(true, var_2.x), var_0.c.x)))), -336f, vec3<bool>(true, any(select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, true, true), select(var_0.c, vec3<bool>(var_2.x, var_2.x, false), false))), false));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 15>();
    var var_0 = _wgslsmith_mod_u32(u_input.a, 1u);
    var_0 = 4294967295u;
    let var_1 = arg_2.b;
    global0 = array<vec4<u32>, 15>();
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(65787i, arg_0.x, 0i) ^ vec3<i32>(-361i, -1i, -20122i), ~vec3<i32>(0i, arg_0.x, -29905i)), vec3<i32>(22831i, -arg_2.a.x, arg_0.x) | arg_2.a.wwz), select(select(!select(arg_2.c.yz, arg_2.c.xz, false), select(vec2<bool>(true, arg_2.c.x), vec2<bool>(arg_2.c.x, arg_2.c.x), any(vec2<bool>(false, true))), arg_2.c.yx), select(select(select(arg_2.c.zx, arg_2.c.yz, vec2<bool>(arg_2.c.x, arg_2.c.x)), arg_2.c.yz, all(vec2<bool>(arg_2.c.x, false))), vec2<bool>(true, true), select(vec2<bool>(arg_2.c.x, false), vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c.x)), arg_2.c.x), !(!any(arg_2.c.xz)), 59505u);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f + _wgslsmith_f_op_f32(f32(-1f) * -895f)) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1563f, 705f, arg_0.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f - -405f) * 1f)), 574f) - vec4<f32>(258f, -966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3242f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-2484f))))));
    let var_1 = Struct_3(~abs(vec4<u32>(4294967295u, u_input.a, arg_0.d >> (15521u % 32u), 19850u)), _wgslsmith_div_vec2_i32(select(-arg_0.a.zx, vec2<i32>(-arg_0.a.x, -29830i), false), arg_0.a.xx));
    var var_2 = ~(-vec4<i32>(_wgslsmith_sub_i32(0i, reverseBits(arg_0.a.x)), arg_0.a.x, abs(~1i), firstTrailingBit(~var_1.b.x)));
    return func_1();
}

fn func_6(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a, arg_0.b, vec3<bool>(!arg_0.c.x, arg_0.c.x, false)), arg_0.b, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) * _wgslsmith_f_op_f32(ceil(arg_0.b)))));
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_div_u32(func_4(countOneBits(arg_0.a.wz), func_1().a.x, arg_0).d, 1u), u_input.a, ~u_input.a & 1u, abs(~u_input.a ^ u_input.a)), -arg_0.a.wx);
    var_1 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(~74507u), 78053u), 15u)], func_1().a.zz);
    let var_2 = (0i <= var_1.b.x) && false;
    let var_3 = vec4<bool>(false, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-863f - 1000f)))) < -1189f, !(!var_2) && !(!(!arg_0.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -298f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1539f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * arg_0.b), -265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-781f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1365f)), _wgslsmith_f_op_f32(func_6(func_5(func_4(abs(vec2<i32>(0i, 655i)), 0i, func_1())))), -489f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 201f, -1952f, 1570f) + vec4<f32>(550f, -665f, 2434f, 1514f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1311f, var_0.x, 1400f) - vec4<f32>(402f, -1309f, 1019f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, -146f, -293f))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), 591f, -853f, _wgslsmith_f_op_f32(step(342f, -822f)))), select(vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec2<bool>(false, false)), func_4(vec2<i32>(-1i, 12490i), 1i, Struct_2(vec4<i32>(1i, -1i, -1i, 0i), var_0.x, vec3<bool>(false, true, true))).b.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(false, true, false, var_0.x != var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, -283f, var_0.x, -1162f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -464f)))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1475f, 418f, 2671f, 644f) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * vec4<f32>(1182f, 1017f, -212f, -1188f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -2196f, _wgslsmith_f_op_f32(max(-1000f, var_0.x)), _wgslsmith_f_op_f32(ceil(271f)))))), vec4<f32>(245f, _wgslsmith_f_op_f32(var_0.x * -1000f), _wgslsmith_f_op_f32(var_0.x - 330f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, -462f)), vec4<f32>(var_0.x, -802f, -1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -726f, var_0.x, var_0.x) + vec4<f32>(var_0.x, 1057f, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1768f, var_0.x, var_0.x, var_0.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x));
    var_1 = var_0.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(-20061i, var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1().b - 375f), -1687f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)))))), 4294967295u);
}

