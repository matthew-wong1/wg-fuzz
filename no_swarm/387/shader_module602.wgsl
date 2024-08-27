struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-887f, 353f, -797f);

var<private> global1: vec4<f32> = vec4<f32>(2504f, 1180f, 974f, -314f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = 1i;
    let var_1 = Struct_1(global0.x, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(434f, _wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x)))))), var_0);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_1.c.xzz, _wgslsmith_f_op_vec3_f32(-global1.yxz))));
    global0 = var_1.c.xzz;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1713f)) * 1487f), _wgslsmith_f_op_f32(round(-564f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))));
    return select(u_input.b, abs(0i), select((u_input.a.x << (arg_0.x % 32u)) >= u_input.e, false, true) | all(select(vec2<bool>(false, true), !vec2<bool>(var_1.b, true), select(vec2<bool>(false, var_1.b), vec2<bool>(false, var_1.b), var_1.b))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, -994f, global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(354f, global1.x, 1000f))))));
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(-965f, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1743f, -800f, -918f, _wgslsmith_f_op_f32(ceil(arg_0.x)))), func_3(~(~vec4<u32>(u_input.e, 79023u, var_0, u_input.e)) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.e), vec2<u32>(13123u, 25789u)), var_0, 1u, _wgslsmith_clamp_u32(u_input.e, 21336u, var_0))));
    let var_2 = arg_1.c;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -797f), -584f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -990f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global0.x, select(!all(vec2<bool>(true, true)), false, true), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1174f), -1158f)), _wgslsmith_f_op_f32(f32(-1f) * -1232f), -201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(115f, global1.x))))), u_input.c.x);
    let var_1 = -vec4<i32>(_wgslsmith_sub_i32(var_0.d, -var_0.d), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(var_0.d, u_input.c.x, -2147483647i, -2147483647i)), ~vec4<i32>(u_input.d.x, -2147483647i, 1i, 2147483647i)), ~var_0.d, 32366i);
    let var_2 = vec3<bool>(!(var_0.b | (firstTrailingBit(var_0.d) != var_1.x)), var_0.b & true, false);
    var var_3 = 499f == _wgslsmith_f_op_f32(func_4(global0.yx, Struct_2(vec2<i32>(-47682i, 0i), u_input.e, Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_2.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-102f, -386f, global0.x, -325f))), func_3(vec4<u32>(4294967295u, u_input.e, u_input.a.x, u_input.a.x))), u_input.d, Struct_1(global0.x, 1856f < global1.x, _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(global1.x, var_0.c.x, 842f, global1.x)), 1i))));
    var var_4 = Struct_1(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_f_op_f32(ceil(global0.x)))))), false, _wgslsmith_f_op_vec4_f32(-var_0.c), i32(-1i) * -countOneBits(1i));
    return Struct_1(_wgslsmith_f_op_f32(round(var_0.c.x)), select(var_0.b, true, -_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(2147483647i, -1i, 1i, 3865i)) < 2147483647i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.c) - var_0.c))), min(_wgslsmith_mod_i32(-var_1.x, u_input.c.x ^ var_4.d) >> (abs(firstLeadingBit(25020u)) % 32u), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.d, var_1.x, 1i), 1i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-global1.yxw);
    var var_0 = func_2();
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(628f, 1f), _wgslsmith_div_f32(1658f, _wgslsmith_f_op_f32(global0.x + -1544f)), _wgslsmith_f_op_f32(ceil(-266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + func_2().c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, _wgslsmith_f_op_f32(var_0.c.x - global1.x), _wgslsmith_div_f32(-986f, -663f), arg_0.a) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.x, -1041f, global0.x, -1154f), vec4<f32>(1000f, -1067f, var_0.c.x, var_0.c.x)))))))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(-359f, global1.x)), Struct_2(vec2<i32>(-15862i, arg_0.d), u_input.e, arg_0, u_input.c, Struct_1(global0.x, true, vec4<f32>(-1115f, arg_0.c.x, -1112f, 625f), var_0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 217f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<f32>(global1.x, var_0.a), Struct_2(u_input.d.yy, 76129u, arg_0, u_input.d, arg_0))) + 1000f), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(sign(843f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(-arg_0.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(354f, 1347f, -102f, global1.x), arg_0.c, vec4<bool>(arg_1.x, true, var_0.b, var_0.b))))) + arg_0.c));
    global1 = arg_0.c;
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(844f, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - 165f))), vec3<f32>(-263f, _wgslsmith_f_op_f32(round(920f)), 691f)));
    global0 = arg_2.c.c.yxy;
    let var_0 = Struct_2(reverseBits(vec2<i32>(10975i, _wgslsmith_mod_i32(-26554i, -u_input.b))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.b, 0u, 13105u, 4294967295u)), firstTrailingBit(vec4<u32>(0u, 4294967295u, 1u, arg_2.b))), func_5(arg_2.c, vec2<bool>(!any(vec4<bool>(arg_1.b, arg_2.c.b, arg_2.e.b, arg_2.e.b)), !(arg_1.b || true))), firstTrailingBit(_wgslsmith_div_vec3_i32(arg_2.d ^ vec3<i32>(2147483647i, arg_1.d, arg_1.d), select(u_input.d, vec3<i32>(2877i, -1i, arg_2.d.x), arg_2.c.b)) & arg_2.d), arg_1);
    global0 = vec3<f32>(arg_0, var_0.c.c.x, 1453f);
    global0 = _wgslsmith_f_op_vec3_f32(select(arg_1.c.wxw, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.c.wxz), _wgslsmith_f_op_vec3_f32(arg_2.c.c.wyz * _wgslsmith_f_op_vec3_f32(global1.wyy - vec3<f32>(global0.x, -1000f, arg_1.a))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_0) + 1927f) <= _wgslsmith_f_op_f32(trunc(203f))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), !(2147483647i != _wgslsmith_add_i32(~u_input.c.x, 29012i)), arg_2.e.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~(~var_0.d.x), 43581i, -35941i), _wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_1.d, var_0.e.d, -7296i, -2147483647i)), firstTrailingBit(vec4<i32>(2147483647i, -3413i, u_input.c.x, 43310i)))));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(155f, 854f, -2745f)));
    let var_0 = u_input.c.x;
    let var_1 = func_6(global1.x, func_5(func_2(), select(vec2<bool>(func_2().b, true), select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec3<bool>(true, true, false)))), Struct_2(max(_wgslsmith_add_vec2_i32(u_input.d.xz, vec2<i32>(2147483647i, var_0)), firstLeadingBit(firstTrailingBit(u_input.c.yy))), ~(~4294967295u), Struct_1(global0.x, true, vec4<f32>(global0.x, -543f, _wgslsmith_f_op_f32(global1.x - 679f), _wgslsmith_f_op_f32(trunc(990f))), 1i), firstLeadingBit(~(vec3<i32>(u_input.b, var_0, -18494i) << (vec3<u32>(u_input.a.x, 0u, 25690u) % vec3<u32>(32u)))), func_5(func_5(Struct_1(global1.x, true, vec4<f32>(global0.x, -793f, 516f, 828f), var_0), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(119f * -756f), func_6(global1.x, Struct_1(-1647f, false, vec4<f32>(var_1.c.x, global0.x, global1.x, -229f), var_1.d), Struct_2(u_input.c.yx, 1u, var_1, vec3<i32>(-13927i, var_0, -26327i), Struct_1(global0.x, var_1.b, var_1.c, var_1.d))).c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-1244f, _wgslsmith_f_op_f32(-global0.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global1.x)), var_1.c));
    let var_2 = global0.x;
    return Struct_2(vec2<i32>(var_0, -7928i ^ firstTrailingBit(-56042i)), ~u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-global0.x), false, _wgslsmith_f_op_vec4_f32(-var_1.c), -var_0), u_input.c, func_6(_wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(-global0.x), 15332u != ~u_input.e)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * -461f), all(!vec3<bool>(var_1.b, var_1.b, true)), vec4<f32>(-735f, 1040f, _wgslsmith_f_op_f32(func_4(vec2<f32>(global1.x, 579f), Struct_2(vec2<i32>(41803i, var_1.d), u_input.a.x, Struct_1(650f, var_1.b, var_1.c, 17383i), u_input.c, var_1))), _wgslsmith_f_op_f32(-global0.x)), -(var_1.d | u_input.d.x)), Struct_2((vec2<i32>(68672i, u_input.c.x) & vec2<i32>(var_0, 2147483647i)) ^ (u_input.c.zy << (u_input.a.zz % vec2<u32>(32u))), 4294967295u, Struct_1(_wgslsmith_div_f32(-1204f, -298f), 2147483647i < var_1.d, var_1.c, -var_0), firstTrailingBit(u_input.d), var_1)));
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.e.c.zzx + global1.xzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.zxx)))));
    let var_1 = !arg_0;
    var var_2 = min(~1u, func_1().b);
    let var_3 = arg_3.b;
    var var_4 = !select(!(!vec4<bool>(arg_3.c.b, true, false, var_1)), !select(vec4<bool>(arg_0, var_1, true, false), vec4<bool>(arg_0, true, arg_3.c.b, false), select(var_1, arg_3.c.b, false)), !(!vec4<bool>(true, arg_0, true, var_1)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -488f), _wgslsmith_f_op_f32(-811f * global0.x))))) + _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_7(0i == u_input.c.x, func_1(), func_1().d, Struct_2(u_input.d.xy, u_input.e, Struct_1(691f, true, vec4<f32>(global0.x, 157f, 2261f, global0.x), -31043i), u_input.d, Struct_1(global0.x, true, vec4<f32>(949f, global0.x, 582f, 1207f), u_input.c.x)))), 453f))));
    let var_1 = select(!vec4<bool>(func_3(vec4<u32>(1u, 1u, 27478u, 62990u)) == u_input.b, ~u_input.c.x >= 2147483647i, any(vec2<bool>(true, true)), false), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true))), vec4<bool>(!any(vec3<bool>(false, false, false)), false, false, false), false), false);
    global1 = vec4<f32>(675f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * 1070f), global1.x))), _wgslsmith_f_op_f32(func_7(4294967295u > abs(u_input.a.x), func_1(), u_input.c, func_1()))));
    var var_2 = !(!(!vec2<bool>(var_1.x, !var_1.x)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1382f);
    let var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

