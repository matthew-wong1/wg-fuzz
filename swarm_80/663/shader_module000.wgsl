struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = !any(vec3<bool>(true, true, true));
    let var_1 = max(_wgslsmith_div_u32(4294967295u, u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x | 1u));
    var var_2 = Struct_4(Struct_2(all(!vec2<bool>(var_0, true)), vec2<bool>(select(false, false, true), true), _wgslsmith_f_op_f32(global0.x * global0.x), select(min(u_input.a.wx, u_input.a.zw) << (u_input.b.zy % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.a.zx, countOneBits(u_input.a.xw)), true)), Struct_2(var_0, !(!(!vec2<bool>(true, var_0))), global0.x, select(vec2<i32>(2447i, abs(26175i)), ~u_input.a.xy, true)), Struct_2(true, select(!vec2<bool>(false, var_0), !(!vec2<bool>(true, var_0)), all(vec3<bool>(var_0, var_0, var_0))), _wgslsmith_f_op_f32(-987f * global0.x), vec2<i32>(-u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.a.x)) & u_input.a.yz), ~firstLeadingBit(countOneBits(u_input.b)));
    var_2 = Struct_4(var_2.c, Struct_2(!(var_2.c.b.x & var_0) != (var_0 & true), vec2<bool>(false, false), _wgslsmith_f_op_f32(-459f * global0.x), var_2.a.d), Struct_2(all(vec2<bool>(true, true)), !vec2<bool>(var_0, true), -3406f, abs(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a.x, var_2.a.d.x), select(u_input.a.xw, vec2<i32>(u_input.c, -28019i), false)))), u_input.b);
    let var_3 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 61061u, var_1)), var_2.d), vec3<u32>(var_1, ~var_2.d.x, abs(u_input.b.x)), vec3<u32>(u_input.b.x, 4294967295u, abs(69366u))), ~(~var_2.d << ((var_2.d ^ var_2.d) % vec3<u32>(32u))));
    return 56159i;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-252f - arg_1.c)))), arg_1.c)));
    global0 = vec2<f32>(global0.x, arg_1.c);
    var var_0 = Struct_1(true, arg_3.a, u_input.b.xz);
    let var_1 = Struct_2(true, !vec2<bool>(any(vec3<bool>(false, arg_1.a, arg_3.b.x)), any(vec3<bool>(false, arg_1.b.x, false))), 1042f, arg_3.d);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(var_1.c + -1000f), arg_3.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(315f + arg_1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -548f), -2879f, true))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_3(), Struct_2(select(arg_0, false, arg_0), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), _wgslsmith_f_op_f32(-1211f - -394f), vec2<i32>(-1i, u_input.c)), _wgslsmith_add_vec2_u32(u_input.b.zz, firstLeadingBit(u_input.b.xz)), Struct_2(any(vec3<bool>(true, arg_0, arg_0)), select(vec2<bool>(true, false), vec2<bool>(arg_0, false), arg_0), _wgslsmith_f_op_f32(-global0.x), u_input.a.yy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2184f, _wgslsmith_f_op_f32(-global0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), global0.x))));
    var var_0 = vec3<bool>(false, true, arg_0);
    var var_1 = Struct_4(Struct_2(var_0.x, var_0.zy, -311f, u_input.a.zx), Struct_2(arg_0, var_0.xz, _wgslsmith_f_op_f32(f32(-1f) * -132f), u_input.a.zx), Struct_2(arg_0 | true, select(vec2<bool>(false || arg_0, true), vec2<bool>(all(vec4<bool>(false, arg_0, arg_0, arg_0)), true), !vec2<bool>(true, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), vec2<i32>(countOneBits(u_input.c), -1i) & ~u_input.a.yy), reverseBits(countOneBits(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) ^ (vec3<u32>(0u, u_input.b.x, select(33914u, u_input.b.x, true)) ^ u_input.b));
    let var_2 = ~(~(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 24643i, u_input.c))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, var_1.c.c)), 1362f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-590f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-469f + var_1.a.c), _wgslsmith_div_f32(344f, -1207f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.c)) + _wgslsmith_f_op_f32(round(-282f)))));
    return Struct_1(var_1.a.b.x, true, _wgslsmith_mod_vec2_u32(vec2<u32>(56235u, 6902u), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.yz) ^ vec2<u32>(u_input.b.x, u_input.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_3.b)))), global0.x, arg_3.d));
    let var_1 = vec4<bool>(all(select(vec4<bool>(true, true, true, arg_0.b), select(select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(true, true, arg_0.b, arg_0.a), true), !vec4<bool>(true, arg_0.b, arg_0.b, arg_3.d), !vec4<bool>(true, arg_0.a, false, true)), (2147483647i ^ arg_3.e.x) <= ~arg_3.e.x)), arg_3.d, false, arg_0.a);
    var var_2 = var_1.x;
    let var_3 = arg_2;
    var_0 = _wgslsmith_f_op_f32(652f - arg_2);
    return all(select(select(vec4<bool>(false, !arg_0.b, !var_1.x, true), vec4<bool>(true, any(var_1.wz), all(vec3<bool>(false, arg_3.c.b, arg_0.b)), select(false, true, var_1.x)), !var_1.x), !(!(!var_1)), vec4<bool>(var_1.x, any(vec2<bool>(arg_0.a, arg_0.b)) == false, true, false)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0.x;
    var var_1 = Struct_2(true, select(!arg_0.b, select(vec2<bool>(arg_0.b.x, -21866i <= arg_0.d.x), select(arg_0.b, !vec2<bool>(arg_1.b, arg_1.a), true), false), vec2<bool>(!arg_1.b, any(!arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1292f))), ~vec2<i32>(-9929i, _wgslsmith_sub_i32(-u_input.c, -arg_0.d.x)));
    global0 = vec2<f32>(-1632f, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_vec2_f32(func_4(-(~arg_0.d.x), arg_0, vec2<u32>(countOneBits(4294967295u), _wgslsmith_add_u32(4294967295u, u_input.b.x)), arg_0)).x));
    var var_2 = 614f;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_div_f32(216f, arg_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, var_1.c)) + _wgslsmith_f_op_f32(max(1220f, 485f)))), global0.x)) > _wgslsmith_f_op_f32(floor(var_1.c));
    return func_2(arg_1.a);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_6(Struct_2(true, select(select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), true), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), arg_0)), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0))), func_5(func_2(arg_0), ~18647u, global0.x, Struct_3(true, 1415f, Struct_1(arg_0, true, u_input.b.yy), arg_0, vec3<i32>(-1i, -5812i, -2147483647i)))), -511f, (_wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(1i, 0i)) | vec2<i32>(u_input.a.x, 2147483647i)) >> (u_input.b.xy % vec2<u32>(32u))), func_2(false));
    let var_1 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(u_input.c, Struct_2(arg_0, vec2<bool>(var_0.a, arg_0), -574f, u_input.a.xy), var_0.c, Struct_2(arg_0, vec2<bool>(var_0.a, true), global0.x, vec2<i32>(-2147483647i, -38518i)))).x * global0.x))), func_2(any(vec2<bool>(true == arg_0, true))), true, u_input.a.yww);
    var var_2 = var_1;
    let var_3 = vec2<i32>(-1i) * -(vec2<i32>(u_input.a.x, -var_2.e.x) & -var_1.e.zy);
    return _wgslsmith_f_op_f32(var_2.b + 611f);
}

fn func_7(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1157f), 66590u < u_input.b.x)) <= global0.x, vec2<bool>(arg_1.x, !(u_input.b.x < u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(-global0.x), false)) + _wgslsmith_f_op_f32(f32(-1f) * -310f)), vec2<i32>(u_input.c, ~_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.zx))), Struct_2(all(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), select(select(!arg_1.zz, select(arg_1.zz, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, false)), vec2<bool>(arg_1.x, false)), arg_1.xx, !vec2<bool>(arg_1.x, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -456f))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(arg_0))), func_6(Struct_2(arg_1.x, arg_1.zz, arg_0, u_input.a.yw), Struct_1(arg_1.x, false, u_input.b.yx)).b)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(1i, 0i) | u_input.a.yx, ~vec2<i32>(u_input.a.x, 0i), vec2<bool>(true, true)), select(u_input.a.yw, vec2<i32>(-8744i, 68939i), vec2<bool>(true, arg_1.x)))), Struct_2(!all(vec3<bool>(false, true, arg_1.x)), vec2<bool>(arg_1.x, arg_1.x), global0.x, -_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.wy, u_input.a.xy), u_input.a.xx | u_input.a.yz)), ~vec3<u32>(u_input.b.x, 4294967295u ^ _wgslsmith_sub_u32(0u, u_input.b.x), u_input.b.x));
    var var_1 = vec3<bool>(var_0.c.b.x, 0u >= _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 70742u, var_0.d.x, 22351u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(19862u, u_input.b.x, var_0.d.x, 4294967295u), vec4<u32>(18609u, u_input.b.x, 16476u, var_0.d.x)) % vec4<u32>(32u)), ~(~vec4<u32>(19759u, u_input.b.x, u_input.b.x, var_0.d.x))), arg_1.x);
    var var_2 = Struct_4(var_0.a, Struct_2(arg_0 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), select(select(vec2<bool>(false, false), !arg_1.zy, any(vec2<bool>(var_0.b.b.x, var_0.b.a))), !select(vec2<bool>(false, var_0.c.b.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_0.c.b.x, false)), arg_1.yz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-133f * 245f), _wgslsmith_f_op_f32(-290f * global0.x))), _wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(486f + -121f))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-48164i, -2147483647i, -18256i), vec3<i32>(1i, 20015i, -17336i)), u_input.a.zxz), 1i)), Struct_2(select(var_0.c.a, true, (1u < var_0.d.x) & select(var_0.a.a, false, var_0.b.b.x)), select(select(var_1.zy, select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(var_1.x, var_0.a.b.x), var_0.a.b), vec2<bool>(true, true)), arg_1.yx, vec2<bool>(true, true)), global0.x, firstLeadingBit(vec2<i32>(1i, ~u_input.a.x))), abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(13735u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d.x, 22416u, 6094u), u_input.b, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x) | vec3<u32>(23332u, 5948u, u_input.b.x), var_0.d))));
    let var_3 = firstTrailingBit(u_input.c);
    var_2 = Struct_4(var_2.c, Struct_2(true, !select(var_0.a.b, vec2<bool>(true, false), arg_1.zz), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(var_3, var_3)), vec2<i32>(21288i, u_input.c) & vec2<i32>(20944i, var_2.a.d.x), ~(-vec2<i32>(7602i, -86447i)))), Struct_2(var_1.x, !var_2.c.b, -263f, vec2<i32>(select(~(-13722i), ~u_input.c, var_2.c.b.x && true), abs(func_3()))), min(u_input.b, u_input.b));
    return func_6(Struct_2(true, vec2<bool>(var_1.x, true), _wgslsmith_f_op_f32(942f * _wgslsmith_f_op_f32(f32(-1f) * -1253f)), vec2<i32>(2147483647i, _wgslsmith_div_i32(min(var_2.c.d.x, var_0.a.d.x), abs(var_0.a.d.x)))), func_2(!any(!vec4<bool>(var_2.c.a, var_0.b.a, var_1.x, var_0.c.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_f32(func_1(false)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true)) || true), true));
    var var_1 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), !(!vec3<bool>(var_0.b, true, func_6(Struct_2(true, vec2<bool>(var_0.a, false), global0.x, vec2<i32>(31847i, u_input.a.x)), Struct_1(true, false, u_input.b.xy)).b)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), global0.x);
    var var_2 = countOneBits(u_input.a.ywx);
    var_2 = u_input.a.zww;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 220f) - -1021f) - _wgslsmith_f_op_f32(sign(-517f)));
    var_0 = Struct_1(true, true, ~_wgslsmith_mod_vec2_u32(var_0.c ^ _wgslsmith_add_vec2_u32(var_1.c, vec2<u32>(u_input.b.x, 0u)), var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(895f, global0.x), vec2<f32>(global0.x, 225f))))))), vec2<u32>(~(1u ^ var_0.c.x), _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u))) ^ abs(u_input.b.xz));
}

