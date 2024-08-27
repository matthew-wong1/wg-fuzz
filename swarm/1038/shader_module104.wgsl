struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = -(~vec2<i32>(arg_1.b, 0i)) ^ arg_1.a;
    var var_1 = arg_1.c.yx;
    let var_2 = Struct_1(firstTrailingBit(vec2<i32>(i32(-1i) * -69618i, max(-1i, 1i))), _wgslsmith_div_i32(_wgslsmith_add_i32(max(~0i, _wgslsmith_mult_i32(var_0.x, -17173i)), max(_wgslsmith_div_i32(7744i, 57241i), _wgslsmith_mod_i32(arg_1.a.x, -9604i))), -_wgslsmith_dot_vec4_i32(min(vec4<i32>(2403i, u_input.d.x, 13493i, arg_1.a.x), vec4<i32>(-35415i, u_input.a.x, var_0.x, -107143i)), vec4<i32>(2147483647i, 25436i, arg_1.a.x, 1i))), vec3<bool>(!(false | any(vec2<bool>(var_1.x, var_1.x))), any(!(!arg_1.c.zz)), !arg_1.c.x), arg_1.d);
    var var_3 = var_2;
    var var_4 = Struct_1(select(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-19557i, var_3.a.x)), _wgslsmith_sub_vec2_i32(~arg_1.a, -var_3.a)), (vec2<i32>(-1i) * -vec2<i32>(-3441i, var_0.x)) | ~vec2<i32>(arg_1.a.x, var_2.b), any(!select(vec4<bool>(true, false, arg_1.c.x, false), vec4<bool>(var_2.c.x, false, false, true), false))), ~arg_1.a.x, !vec3<bool>(var_1.x, false, var_2.c.x), _wgslsmith_f_op_f32(-var_3.d));
    return !(!(!(_wgslsmith_f_op_f32(-131f + var_4.d) > _wgslsmith_f_op_f32(select(995f, arg_1.d, false)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(false, Struct_1((vec2<i32>(-29047i, u_input.a.x) | -u_input.d.wy) ^ u_input.d.xx, -11010i, vec3<bool>(func_3(2156f, Struct_1(u_input.a.wx, 52417i, vec3<bool>(false, false, false), -606f)), any(vec3<bool>(true, false, false)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -255f), 1187f, true)))), Struct_1(~(~vec2<i32>(u_input.d.x, u_input.a.x)), reverseBits(2147483647i), vec3<bool>(func_3(892f, Struct_1(u_input.d.yz, u_input.a.x, vec3<bool>(false, false, false), 1000f)), true, true), -359f));
    let var_1 = u_input.b.x;
    var var_2 = abs(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(5484i, var_0.b.b), max(-57185i, _wgslsmith_add_i32(-1i, -2147483647i)), 9095i), u_input.d.x));
    var var_3 = vec4<f32>(594f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(148f * _wgslsmith_f_op_f32(1004f + var_0.c.d)), var_0.c.d)), _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.d))));
    var var_4 = Struct_2(all(var_0.c.c.yy), Struct_1(var_0.b.a, _wgslsmith_sub_i32(1i, var_2.x) | u_input.a.x, select(!var_0.c.c, select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b.c.x, var_0.c.c.x, var_0.a), var_0.a), select(vec3<bool>(var_0.c.c.x, true, var_0.b.c.x), vec3<bool>(var_0.a, false, var_0.b.c.x), vec3<bool>(true, true, false)), true), any(vec2<bool>(true, var_0.a))), _wgslsmith_f_op_f32(select(-1395f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.d))), false))), var_0.c);
    return Struct_2(var_4.c.c.x, Struct_1(var_0.c.a | (vec2<i32>(-31583i, 0i) | var_4.b.a), -1i, select(var_4.b.c, !(!vec3<bool>(false, var_4.a, var_4.a)), true), -1000f), var_4.c);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-356f, arg_3, arg_2.c.d) - vec3<f32>(239f, 163f, arg_2.b.d)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, arg_2.b.d) * vec3<f32>(arg_0.b.d, 611f, -1549f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 281f, -455f)), arg_0.a | arg_2.b.c.x)))), vec3<bool>(true, all(vec4<bool>(false, arg_0.c.c.x, true, arg_2.b.c.x)) | true, true))), vec3<f32>(-1068f, arg_3, -1267f)));
    var var_1 = arg_2;
    let var_2 = arg_2.c;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1772f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(538f * -613f))))), 201f));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(-arg_2.c.d))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_2.c.d - var_2.d))));
    return var_2.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -2147483647i;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, -((u_input.d.x & u_input.a.x) ^ 1i)), arg_3.b.a.x, _wgslsmith_dot_vec2_i32(func_4(func_2(), _wgslsmith_dot_vec3_i32(u_input.d.xwy, min(vec3<i32>(u_input.d.x, arg_3.b.b, arg_3.c.b), vec3<i32>(arg_3.b.b, arg_3.b.a.x, u_input.d.x))), func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + arg_3.b.d), arg_3.c.d))), u_input.d.yw));
    let var_1 = func_2();
    var var_2 = var_1;
    var var_3 = -1i;
    return var_1.b;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 - -1330f))))));
    let var_1 = func_1(u_input.c, arg_2.c.x, 516f, arg_3);
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.d)) > -241f;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, 16768u), u_input.b.x & ~(~_wgslsmith_add_u32(u_input.c.x, 1u)));
    var var_4 = arg_3.c.d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.xz;
    let var_1 = select(select(!vec4<bool>(true, all(vec3<bool>(false, false, true)), u_input.c.x > var_0.x, all(vec2<bool>(true, true))), !vec4<bool>(true, true, -2147483647i > u_input.a.x, true), vec4<bool>(true, all(vec4<bool>(true, false, false, true)) != true, _wgslsmith_sub_i32(u_input.d.x, -42211i) <= -6388i, func_5(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, 688f, 1557f)), func_1(u_input.c, true, 754f, Struct_2(true, Struct_1(vec2<i32>(u_input.d.x, 39323i), -1386i, vec3<bool>(false, true, true), -1352f), Struct_1(u_input.d.zz, u_input.a.x, vec3<bool>(false, false, true), 195f))), func_2()))), select(vec4<bool>(false, (57141u & var_0.x) <= ~var_0.x, true, true && all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, u_input.a.x == u_input.d.x, any(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), all(vec2<bool>(false, true)))), !vec4<bool>(func_2().a, true, false, any(vec3<bool>(false, true, true)))), func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-120f, 1908f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(125f)), _wgslsmith_f_op_f32(trunc(1305f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, -201f, -221f)))), func_1(abs(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, var_0.x, var_0.x))), !any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f)), Struct_2(select(true, false, false), func_1(u_input.c, true, -1310f, Struct_2(false, Struct_1(u_input.a.zx, 1660i, vec3<bool>(true, false, true), -505f), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, vec3<bool>(true, false, true), 1489f))), func_1(u_input.c, true, -2034f, Struct_2(true, Struct_1(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.x, vec3<bool>(true, false, false), 1510f), Struct_1(u_input.d.yy, 490i, vec3<bool>(true, false, true), 478f))))), Struct_2(true, Struct_1(vec2<i32>(2147483647i, u_input.a.x), u_input.d.x, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-568f + 1000f)), Struct_1(vec2<i32>(1i, -2147483647i), ~u_input.a.x, vec3<bool>(true, true, true), -188f))));
    var var_2 = ~vec2<i32>(reverseBits(-40694i), firstTrailingBit(_wgslsmith_mod_i32(u_input.d.x, -45243i | u_input.d.x)));
    var var_3 = Struct_1(abs(countOneBits(firstTrailingBit(vec2<i32>(u_input.d.x, var_2.x)))), func_1(u_input.c | ~min(vec3<u32>(26510u, var_0.x, 0u), u_input.c), func_2().b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1210f)))), func_2()).a.x, func_2().c.c, 1788f);
    let var_4 = ~(~(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, u_input.c.x), vec4<u32>(1u, 60303u, 3362u, var_0.x), vec4<u32>(4294967295u, u_input.b.x, var_0.x, u_input.b.x)), vec4<u32>(u_input.b.x, var_0.x, 21609u, 70574u))));
    var var_5 = func_1(vec3<u32>(_wgslsmith_dot_vec4_u32((var_4 << (vec4<u32>(var_0.x, var_4.x, var_4.x, var_0.x) % vec4<u32>(32u))) >> (vec4<u32>(9588u, 35348u, var_4.x, var_4.x) % vec4<u32>(32u)), var_4), var_0.x >> (39587u % 32u), ~(~(var_0.x | var_0.x))), all(func_1(vec3<u32>(~27736u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), var_4.yw), var_4.x), any(select(var_3.c, var_1.xzx, vec3<bool>(var_1.x, true, var_1.x))), func_2().b.d, Struct_2(var_3.c.x, func_1(u_input.c, var_3.c.x, -192f, Struct_2(var_1.x, Struct_1(var_3.a, 2147483647i, vec3<bool>(var_3.c.x, true, var_1.x), var_3.d), Struct_1(u_input.a.wy, 2147483647i, var_1.xyz, var_3.d))), Struct_1(vec2<i32>(-38417i, var_3.b), 1i, vec3<bool>(false, false, var_1.x), var_3.d))).c.zy), _wgslsmith_f_op_f32(step(var_3.d, _wgslsmith_f_op_f32(-var_3.d))), func_2());
    var var_6 = ~select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 17967u, var_0.x, var_0.x), vec4<u32>(var_4.x, var_4.x, 76013u, 23963u) ^ vec4<u32>(var_0.x, 54863u, 8989u, 86577u)), _wgslsmith_mult_vec4_u32(~var_4, ~vec4<u32>(9580u, u_input.c.x, var_4.x, 27723u))), vec4<u32>(1u, max(_wgslsmith_add_u32(u_input.c.x, 133141u), var_0.x), _wgslsmith_div_u32(var_4.x, 53581u), ~var_4.x & 31317u), vec4<bool>(func_2().b.c.x, var_1.x, var_3.c.x, !var_1.x));
    var var_7 = max(func_2().b.b, var_5.b);
    var var_8 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-201f, 1818f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-112f - var_3.d))), var_3.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(113f, var_5.d, var_5.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1769f, -187f, var_5.d)))), func_2().b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

