struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 1u);

var<private> global2: Struct_2;

var<private> global3: bool = false;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), -518f)));
    var var_1 = Struct_1(arg_2.a.x, ~(~u_input.b.x), vec3<i32>(-32051i, 1i, 30185i), arg_2.a.zx);
    return 1u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec4_i32(~abs(global4.a), vec4<i32>(~6469i, global4.a.x, 2147483647i, -u_input.b.x)), global4.b, vec2<f32>(global2.b.x, -563f)), vec2<u32>(global1.x, ~4294967295u | _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.x, global1.x), ~global1.x)), vec4<bool>(true, true, true, true));
    let var_1 = ~vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 4294967295u), func_3(var_0.c.x, 1581u, Struct_5(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), min(vec2<i32>(var_0.a.a.x, global4.a.x) | global2.a.ww, vec2<i32>(var_0.a.a.x, 1i))), abs(abs(_wgslsmith_mult_u32(global1.x, 0u))), 1u);
    var var_2 = -1394f;
    let var_3 = var_0.c.wwz;
    let var_4 = Struct_4(1u <= _wgslsmith_dot_vec2_u32(var_0.b, _wgslsmith_mod_vec2_u32(max(vec2<u32>(27211u, 0u), global1.xz), vec2<u32>(28134u, var_0.b.x) >> (var_1.yx % vec2<u32>(32u)))), global2.b.yzw, _wgslsmith_mod_i32(2147483647i, 1i));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.b.x, ~89753u, arg_0.b.x & max(18814u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~(global1.x & arg_0.b.x), arg_0.b.x, (37888u ^ global1.x) & global1.x), vec3<u32>(func_2().b.x, _wgslsmith_div_u32(0u, _wgslsmith_div_u32(global1.x, 83356u)), global1.x)));
    var var_0 = _wgslsmith_mod_i32(-37161i | ~arg_0.a.a.x, _wgslsmith_mod_i32(-u_input.a, min(_wgslsmith_mod_i32(34678i, u_input.b.x) & global4.a.x, global2.a.x)));
    global0 = -7029i;
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(max(-arg_0.a.a.ywx, _wgslsmith_sub_vec3_i32(select(global2.a.zwy, vec3<i32>(global4.a.x, u_input.c.x, global2.a.x), arg_0.c.xzz), ~global2.a.zxy)), vec3<i32>(0i, -(global4.a.x ^ global4.a.x), 0i)), 52017i);
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    let var_0 = Struct_5(!(!vec3<bool>(any(arg_0.c.wz), true, arg_0.c.x)));
    global2 = func_2().a;
    var var_1 = -2199f;
    var_1 = -325f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), -304f));
    return Struct_4(any(!select(var_0.a.xz, arg_0.c.xx, func_4(Struct_3(arg_0.a, arg_0.b, arg_0.c), arg_0.c.x).c.zy)), _wgslsmith_div_vec3_f32(vec3<f32>(-486f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.x, 1715f)), arg_0.a.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.a.b.wzw)) - vec3<f32>(_wgslsmith_f_op_f32(global2.b.x - 1017f), func_4(Struct_3(arg_0.a, vec2<u32>(19356u, 1u), arg_0.c), var_0.a.x).a.c.x, _wgslsmith_f_op_f32(arg_0.a.c.x - global4.b.x)))), min(arg_0.a.a.x, 11309i));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_5) -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), arg_2.a.x));
    global3 = (!var_0.a | false) && var_0.a;
    global1 = vec3<u32>(firstLeadingBit(46099u), global1.x >> (_wgslsmith_clamp_u32(func_4(func_4(Struct_3(Struct_2(vec4<i32>(59824i, u_input.a, -42188i, arg_0.x), vec4<f32>(192f, 711f, -1000f, global4.c.x), global2.b.yx), global1.zz, vec4<bool>(arg_2.a.x, true, arg_1, arg_1)), false), func_5(Struct_3(Struct_2(vec4<i32>(u_input.a, 0i, -2147483647i, -1i), vec4<f32>(global2.c.x, global2.b.x, var_0.b.x, -689f), vec2<f32>(global4.b.x, var_0.b.x)), vec2<u32>(global1.x, global1.x), vec4<bool>(true, false, arg_1, arg_2.a.x))).a).b.x, ~global1.x, ~42807u) % 32u), 1u);
    var var_1 = vec2<bool>(true, !(1u < global1.x));
    return Struct_1(false, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, u_input.a), abs(_wgslsmith_add_vec2_i32(vec2<i32>(9744i, global4.a.x) | arg_0.yy, select(u_input.b.yx, vec2<i32>(1i, var_0.c), vec2<bool>(false, arg_2.a.x))))), -(~arg_0.yxx), !vec2<bool>(var_0.b.x < -1253f, !select(arg_2.a.x, true, true)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    global2 = func_2().a;
    let var_0 = func_4(func_4(Struct_3(arg_3, vec2<u32>(max(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, global1.x), vec4<u32>(33911u, global1.x, 1u, 0u))), select(vec4<bool>(true, arg_0.a, true, arg_1.a), vec4<bool>(false, true, true, arg_0.d.x), vec4<bool>(false, arg_1.a, false, true))), arg_0.a), false | (arg_0.a & !(!arg_0.a)));
    let var_1 = ~15990i;
    let var_2 = Struct_2(~var_0.a.a, var_0.a.b, global4.b.yw);
    var var_3 = 3373u;
    return _wgslsmith_mod_i32(-(func_5(func_4(Struct_3(Struct_2(var_2.a, arg_2, vec2<f32>(974f, 1000f)), vec2<u32>(4294967295u, global1.x), var_0.c), var_0.c.x)).c | arg_0.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_3.a.wwz, var_0.a.a.xyx), arg_0.c.x | arg_0.c.x, ~2147483647i, i32(-1i) * -2147483647i), vec4<i32>(~1i, arg_1.c, -arg_1.c, 0i | var_2.a.x)));
}

fn func_7(arg_0: i32, arg_1: u32) -> Struct_2 {
    global4 = Struct_2(select(vec4<i32>(arg_0, global2.a.x, ~_wgslsmith_clamp_i32(43080i, global2.a.x, global4.a.x), ~1i), global2.a, select(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(143f * -852f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1097f - -396f))), _wgslsmith_f_op_f32(-global4.c.x), global4.b.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-346f, global2.b.x))), _wgslsmith_f_op_f32(-1f), -498f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.c.x, global4.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global4.b.yw, _wgslsmith_f_op_vec2_f32(global4.b.xz * vec2<f32>(global4.b.x, global4.c.x)), true))))));
    global4 = func_2().a;
    var var_0 = func_4(Struct_3(func_4(func_2(), true).a, _wgslsmith_div_vec2_u32(select(func_2().b, global1.yz ^ vec2<u32>(15997u, global1.x), vec2<bool>(true, true)), global1.yx), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), true).a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_4(func_4(Struct_3(Struct_2(global2.a, vec4<f32>(var_0.c.x, global2.b.x, global4.c.x, global2.b.x), vec2<f32>(global4.b.x, global2.b.x)), global1.xx, vec4<bool>(true, false, true, false)), false), any(vec2<bool>(true, true))).a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * 322f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, global4.c.x, 781f)), var_0.b.yww))));
    return func_4(func_4(func_4(Struct_3(Struct_2(global2.a, vec4<f32>(var_2.x, 1646f, var_0.c.x, var_2.x), global4.c), countOneBits(vec2<u32>(global1.x, global1.x)), func_2().c), !func_2().c.x), true), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b.x - -427f))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -47329i;
    global0 = firstTrailingBit(~(-u_input.c.x));
    global4 = func_7(func_6(func_1(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, global4.a.yww), _wgslsmith_clamp_i32(u_input.c.x, global4.a.x, global4.a.x), 1i, 0i), true, Struct_5(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), Struct_4(1i != global2.a.x, _wgslsmith_div_vec3_f32(global2.b.zzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, -1060f, global4.b.x) * vec3<f32>(global2.b.x, -916f, global4.c.x))), 1176i), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)), global4.c.x, global2.c.x), func_4(func_2(), true).a), 7259u);
    global1 = ~(vec3<u32>(18002u, reverseBits(5868u), global1.x) & ~vec3<u32>(global1.x, ~global1.x, ~global1.x));
    var var_0 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x) >> (vec3<u32>(global1.x, global1.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(global1.x, global1.x, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(53953u, global1.x, global1.x), vec3<u32>(0u, global1.x, 54423u)) >> (select(vec3<u32>(global1.x, 21967u, global1.x), vec3<u32>(36581u, 43943u, global1.x), vec3<bool>(true, false, false)) % vec3<u32>(32u))));
    var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.x, global1.x, var_0.x, global1.x) | vec4<u32>(var_0.x, 3729u, global1.x, 0u)), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(1u, 33550u, var_0.x)), 1u, ~global1.x, _wgslsmith_div_u32(4294967295u, var_0.x)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(-2147483647i, 0i, i32(-1i) * -7226i), global1.x, -countOneBits(u_input.b), vec3<u32>(~20636u, ~1u, 1u));
}

