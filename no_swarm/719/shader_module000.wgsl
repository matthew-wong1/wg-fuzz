struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(426f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_3(1f);
    global0 = Struct_3(_wgslsmith_div_f32(1215f, global0.a));
    let var_0 = Struct_2(Struct_1(true != (0u <= u_input.b.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-19440i, 6358i, u_input.d, 0i) ^ vec4<i32>(u_input.d, -1i, u_input.a, -1i), ~vec4<i32>(-29509i, 2147483647i, u_input.d, u_input.a)), _wgslsmith_mult_i32(u_input.a, u_input.d))), ~select(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.d, u_input.d, 6411i)), _wgslsmith_add_vec3_i32(vec3<i32>(-7630i, 2147483647i, -1i), vec3<i32>(u_input.d, -1i, u_input.a))), ~vec3<i32>(-1i, 60222i, 2147483647i) | (vec3<i32>(u_input.a, 19698i, -2147483647i) | vec3<i32>(2468i, u_input.d, u_input.a)), vec3<bool>(true, true, true)), Struct_1(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), all(vec4<bool>(false, false, true, true))), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false))), _wgslsmith_div_vec3_i32(-vec3<i32>(-9731i, -11658i, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.d), vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(-1i, u_input.d, u_input.a)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global0.a))), global0.a))));
    let var_2 = _wgslsmith_dot_vec2_u32(~(reverseBits(vec2<u32>(u_input.e, u_input.c.x)) ^ min(vec2<u32>(0u, 0u), u_input.b.wx)) >> (~abs(max(u_input.b.yy, u_input.b.xy)) % vec2<u32>(32u)), select(vec2<u32>(1u, u_input.e), vec2<u32>(abs(48733u), u_input.c.x ^ u_input.b.x), select(!vec2<bool>(var_0.c.a, var_0.c.b.x), vec2<bool>(var_0.c.b.x, true), all(vec4<bool>(var_0.c.b.x, true, var_0.a.b.x, false)))) << (u_input.b.xy % vec2<u32>(32u)));
    return select(!(!var_0.a.b), !(!select(select(vec3<bool>(false, var_0.a.b.x, var_0.c.a), vec3<bool>(var_0.a.b.x, false, false), var_0.c.a), !var_0.a.b, any(var_0.c.b))), any(select(select(vec2<bool>(var_0.c.b.x, true), var_0.a.b.zy, var_0.c.b.x), !var_0.c.b.xy, var_0.c.b.xy)) | any(select(select(var_0.a.b.zz, var_0.a.b.zx, true), var_0.a.b.xz, true)));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global0 = arg_0.b;
    let var_0 = Struct_2(Struct_1(all(vec3<bool>(true, u_input.d != -2147483647i, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), vec3<i32>(-_wgslsmith_mult_i32(-73601i, u_input.a), -52110i, -19371i)), select(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-9492i, 11001i, -1i), -vec3<i32>(-7161i, u_input.a, u_input.d))), vec3<i32>(u_input.d, firstTrailingBit(~(-50694i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 22750i, u_input.a), vec3<i32>(7993i, -1i, u_input.d))), !func_3()), Struct_1(false, !vec3<bool>(true, all(vec3<bool>(true, false, true)), global0.a != 915f), -min(max(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(-9939i, u_input.d, 2147483647i)), vec3<i32>(6155i, u_input.d, -14612i))));
    var var_1 = var_0;
    let var_2 = var_1.a;
    var_1 = Struct_2(Struct_1(firstLeadingBit(-var_2.c.x) != var_2.c.x, func_3(), vec3<i32>(-(~7068i), ~var_2.c.x, ~var_1.c.c.x & abs(2147483647i))), vec3<i32>(1i, -u_input.d ^ (select(-1i, u_input.a, var_1.a.b.x) | ~(-12442i)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.c.x, var_2.c.x, 35397i, 2147483647i), vec4<i32>(var_0.b.x, 3788i, 2147483647i, -18731i))), Struct_1(var_0.a.b.x, !var_0.a.b, ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_1.b.x, 67689i), vec3<i32>(-22806i, 12523i, 1i)), var_2.c.x, u_input.a << (47888u % 32u))));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = !(any(vec4<bool>(all(vec3<bool>(arg_1.c.b.x, arg_1.c.b.x, arg_1.a.b.x)), false, true, true)) == any(arg_1.a.b));
    var_0 = func_3().x && (!arg_1.c.b.x && true);
    var var_1 = _wgslsmith_f_op_f32(select(-1136f, _wgslsmith_f_op_f32(exp2(arg_0)), all(select(arg_1.c.b, arg_1.c.b, !func_2(Struct_4(1418f, Struct_3(-1127f))).a.b))));
    var_0 = all(arg_1.c.b.xy);
    let var_2 = arg_1.b | arg_1.b;
    return 32178u | _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.zy) >> (u_input.b.wx % vec2<u32>(32u)), u_input.b.xy);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_div_f32(global0.a, global0.a))))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.ww, u_input.b.yz << (abs(_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.c.yz)) % vec2<u32>(32u))), _wgslsmith_mult_u32(u_input.b.x, ~u_input.c.x ^ 1u), func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)), global0.a)), func_2(Struct_4(_wgslsmith_f_op_f32(var_0.a - 1688f), var_0))));
    let var_2 = true;
    let var_3 = vec4<i32>(u_input.d, -u_input.d, -(~countOneBits(1i)), u_input.d);
    var var_4 = _wgslsmith_f_op_f32(var_0.a + var_0.a);
    return Struct_2(Struct_1(any(select(!vec4<bool>(var_2, true, var_2, false), !vec4<bool>(false, var_2, true, false), false)), func_2(Struct_4(_wgslsmith_f_op_f32(global0.a * -1131f), var_0)).a.b, ~vec3<i32>(_wgslsmith_mult_i32(1i, -47279i), _wgslsmith_sub_i32(-82700i, var_3.x), u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-24758i, abs(-2147483647i), 1i), vec3<i32>(var_3.x, u_input.a, _wgslsmith_dot_vec2_i32(max(var_3.xy, var_3.zz), var_3.zy))), Struct_1(func_2(Struct_4(-732f, Struct_3(-1000f))).c.a, !vec3<bool>(func_3().x, u_input.c.x == arg_0, var_2), ~_wgslsmith_clamp_vec3_i32(~var_3.yzx, ~vec3<i32>(var_3.x, u_input.d, var_3.x), ~var_3.yxx)));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    let var_0 = arg_0.a.b.x;
    global0 = Struct_3(-413f);
    global0 = Struct_3(global0.a);
    var var_1 = _wgslsmith_add_i32(1i, arg_0.a.a.c.x);
    let var_2 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(~abs(~u_input.b.wyy), ~(~vec3<u32>(u_input.c.x, 17445u, 0u))));
    return Struct_4(-1539f, Struct_3(global0.a));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = all(vec3<bool>(!(func_4(-633f, Struct_2(Struct_1(true, vec3<bool>(true, false, false), vec3<i32>(u_input.a, u_input.d, u_input.d)), vec3<i32>(-24926i, 2147483647i, u_input.a), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(u_input.d, u_input.d, u_input.a)))) > 4294967295u), true, !func_2(arg_0).c.b.x));
    var_0 = !(true && !((140f == arg_0.a) && any(vec3<bool>(true, false, true))));
    global0 = Struct_3(-2576f);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(Struct_5(func_1(~u_input.e), vec4<bool>(true, true, true, true))), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(5429u, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.b.xw, u_input.b.zx))) & countOneBits(~vec2<u32>(u_input.c.x, u_input.e)), func_5(Struct_5(Struct_2(Struct_1(true, vec3<bool>(false, false, true), vec3<i32>(u_input.d, u_input.a, u_input.d)), -vec3<i32>(-13372i, -13356i, u_input.a), func_2(Struct_4(153f, Struct_3(254f))).c), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))).b);
    global0 = func_6(Struct_4(722f, func_5(Struct_5(Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec3<i32>(-19419i, u_input.d, 17541i)), vec3<i32>(u_input.d, 4233i, u_input.d), Struct_1(false, vec3<bool>(true, false, true), vec3<i32>(u_input.d, 9459i, -101855i))), vec4<bool>(true, true, true, true))).b), u_input.b.yy, Struct_3(-2286f));
    global0 = Struct_3(_wgslsmith_f_op_f32(select(669f, _wgslsmith_f_op_f32(trunc(global0.a)), true)));
    global0 = Struct_3(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.a) * global0.a))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    global0 = func_6(func_5(Struct_5(func_1(1u), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))))), ~(~u_input.c.zz), func_6(Struct_4(global0.a, func_6(Struct_4(-710f, Struct_3(global0.a)), _wgslsmith_clamp_vec2_u32(u_input.b.zx, vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)), Struct_3(global0.a))), u_input.b.xw, Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a, -932f), _wgslsmith_f_op_f32(trunc(822f)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c.x, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a))), Struct_2(func_2(Struct_4(global0.a, Struct_3(965f))).a, reverseBits(vec3<i32>(u_input.a, -50580i, u_input.a)), func_2(Struct_4(366f, Struct_3(-641f))).c))), ~u_input.b.wz, ~vec3<i32>(~(-1i), func_1(4294967295u).a.c.x, abs(2927i)) >> (u_input.c.zyw % vec3<u32>(32u)), 1317u);
}

