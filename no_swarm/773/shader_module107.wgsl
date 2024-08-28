struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(39728u, vec4<bool>(true, false, false, true), vec4<f32>(1592f, -687f, 817f, 700f), vec3<bool>(true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    var var_0 = vec2<bool>(true, !(true | !any(global2.b.zwy)));
    let var_1 = Struct_3(Struct_2(Struct_1(global2.a ^ ~41210u, !select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, global2.b.x, var_0.x), global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, -655f, 554f, -608f) - global2.c)), global2.d), vec2<bool>(true, true), ~firstTrailingBit(~vec3<u32>(global2.a, 74100u, 134264u)), Struct_1(14937u, vec4<bool>(select(false, var_0.x, var_0.x), -1i < u_input.a, var_0.x, !global2.d.x), vec4<f32>(1000f, global2.c.x, -594f, global2.c.x), select(vec3<bool>(false, global2.b.x, global0.x), global0.yww, select(global2.d, vec3<bool>(false, var_0.x, global0.x), var_0.x)))), firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, -31810i, -9137i, arg_0.x), vec4<i32>(-15247i, -1i, -34732i, -24819i) ^ vec4<i32>(u_input.a, -15576i, -24182i, u_input.a), vec4<i32>(arg_0.x, -22667i, arg_0.x, arg_0.x)))));
    let var_2 = false;
    var var_3 = _wgslsmith_sub_i32(~(~(-_wgslsmith_mult_i32(u_input.a, arg_0.x))), 9945i);
    global0 = !vec4<bool>(!(_wgslsmith_f_op_f32(ceil(var_1.a.a.c.x)) == 1082f), select(true, !var_0.x, any(vec3<bool>(global0.x, var_0.x, false))) | false, all(var_1.a.b), var_2);
    return var_1.a.c.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -vec3<i32>(_wgslsmith_sub_i32(u_input.a, 1i & _wgslsmith_add_i32(u_input.a, u_input.a)), u_input.a, u_input.a);
    global1 = true;
    var var_1 = arg_2;
    global2 = Struct_1(func_3(abs(vec2<i32>(min(u_input.a, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-24737i, -1i, -33895i), vec3<i32>(u_input.a, var_0.x, u_input.a)))), ~4294967295u), !select(!vec4<bool>(true, global2.b.x, arg_0.x, true), arg_0, !arg_2.d.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(arg_2.c)), vec4<f32>(431f, -814f, 1076f, 1807f), var_1.a <= 8277u)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.c, global2.c) - global2.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c * vec4<f32>(var_1.c.x, 1000f, 622f, arg_2.c.x)))))), arg_0.www);
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~global2.a, reverseBits(4294967295u), 1u ^ global2.a, ~17563u), select(~vec4<u32>(global2.a, var_1.a, 21839u, arg_2.a), abs(vec4<u32>(76094u, global2.a, 1347u, global2.a)), vec4<bool>(true, arg_0.x, var_1.d.x, global2.d.x))), !vec4<bool>(false, var_1.c.x < 617f, false || global2.d.x, false), vec4<f32>(global2.c.x, 719f, _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(ceil(624f))), -734f), vec3<bool>(arg_2.c.x != -1135f, false, !any(vec2<bool>(true, true)))), !select(select(vec2<bool>(false, false), vec2<bool>(global0.x, true), true), vec2<bool>(true, all(arg_2.d)), !vec2<bool>(false, arg_2.d.x)), ~(~vec3<u32>(global2.a, arg_2.a, var_1.a)), arg_2);
    return Struct_2(arg_2, arg_0.ww, reverseBits(vec3<u32>(func_3(var_0.xy << (var_2.c.yy % vec2<u32>(32u)), ~var_1.a), 99713u, 1u)), Struct_1(var_1.a, select(vec4<bool>(var_1.d.x, select(true, arg_0.x, true), false, var_2.a.d.x | arg_1), var_2.d.b, _wgslsmith_f_op_f32(var_1.c.x + -406f) == var_2.a.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(var_2.d.c)))), select(select(!arg_2.d, vec3<bool>(false, arg_2.d.x, true), !arg_0.x), vec3<bool>(!var_2.a.b.x, any(arg_2.d), all(var_1.b.wxw)), select(vec3<bool>(arg_2.b.x, var_1.d.x, true), !var_1.b.zxy, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_1.d;
    global2 = Struct_1(func_3(~countOneBits(abs(vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(20198u, 1u, 0u, 70799u), ~vec4<u32>(0u, 1u, 35228u, 7608u)))), !vec4<bool>(any(vec3<bool>(true, false, false)), true, false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d.c.x, 145f, arg_1.d.c.x, arg_0.c.x))), arg_0.c)))), var_0.b.yyw);
    var var_1 = any(select(global0.yx, select(select(vec2<bool>(true, true), global0.ww, func_2(vec4<bool>(true, arg_0.d.x, var_0.b.x, arg_1.b.x), false, Struct_1(65520u, var_0.b, global2.c, global2.d)).d.b.zx), vec2<bool>(!var_0.b.x, true), func_2(!vec4<bool>(arg_0.d.x, arg_1.b.x, arg_1.d.b.x, false), all(vec4<bool>(true, true, false, global0.x)), Struct_1(1u, vec4<bool>(arg_2.b.x, false, false, global0.x), vec4<f32>(var_0.c.x, arg_0.c.x, arg_2.c.x, 1000f), vec3<bool>(true, false, true))).d.b.wx), vec2<bool>(false, var_0.d.x)));
    let var_2 = Struct_1(var_0.a, vec4<bool>(!arg_2.b.x & !select(false, arg_2.b.x, arg_1.b.x), false, !any(!vec4<bool>(arg_1.b.x, true, true, var_0.d.x)), all(global0.xy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, arg_1.a.c.x, arg_2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-215f, arg_0.c.x), 1156f))) + arg_0.c), !vec3<bool>(~u_input.a >= u_input.a, arg_0.d.x, global0.x));
    global0 = vec4<bool>(all(func_2(!vec4<bool>(global0.x, var_2.d.x, false, false), !(!arg_0.d.x), Struct_1(arg_1.d.a << (arg_2.a % 32u), func_2(global2.b, var_2.d.x, Struct_1(1u, vec4<bool>(false, true, global0.x, global2.d.x), var_0.c, global0.xyx)).a.b, func_2(arg_0.b, var_2.b.x, Struct_1(global2.a, vec4<bool>(true, arg_0.b.x, false, arg_0.d.x), var_0.c, arg_1.a.d)).a.c, vec3<bool>(arg_2.b.x, true, arg_1.b.x))).d.b.zyz), var_0.d.x, true, !(!any(select(arg_2.b, arg_2.b, var_0.b.x))));
    return var_2.d;
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(!(!(!vec3<bool>(false, global2.b.x, global0.x))), vec3<bool>(!any(global2.b), (global0.x | global2.d.x) || true, false), global0.x), select(vec3<bool>(true, !all(vec3<bool>(global2.d.x, true, true)), all(!vec3<bool>(global0.x, global0.x, false))), select(func_4(Struct_1(12336u, vec4<bool>(global0.x, global2.d.x, false, global0.x), vec4<f32>(global2.c.x, global2.c.x, -144f, global2.c.x), global2.b.www), func_2(vec4<bool>(true, global2.d.x, global2.d.x, true), true, Struct_1(global2.a, global2.b, vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), global2.d)), func_2(vec4<bool>(true, global0.x, global0.x, true), false, Struct_1(global2.a, vec4<bool>(global2.b.x, global0.x, global2.b.x, false), global2.c, global0.zxw)).d, ~vec3<u32>(global2.a, global2.a, global2.a)), global2.d, global2.b.x), true), !any(global2.d.zy));
    var var_1 = _wgslsmith_f_op_f32(-global2.c.x);
    global2 = func_2(select(!vec4<bool>(false & global0.x, true, true, global2.b.x), !global2.b, select(func_2(global2.b, true, Struct_1(global2.a, vec4<bool>(true, false, false, global2.d.x), vec4<f32>(global2.c.x, -1586f, 539f, 1000f), global0.yzw)).a.b, global2.b, select(func_2(vec4<bool>(false, true, global0.x, true), false, Struct_1(global2.a, vec4<bool>(false, false, false, false), global2.c, global0.wxz)).d.b, !global2.b, vec4<bool>(global2.d.x, var_0.x, false, global2.b.x)))), all(global2.b), func_2(vec4<bool>(true, true, false, global0.x), any(vec3<bool>(var_0.x, any(vec4<bool>(true, false, true, global0.x)), true)), func_2(!(!vec4<bool>(false, global0.x, false, true)), false, func_2(!vec4<bool>(global0.x, false, false, var_0.x), false, Struct_1(global2.a, vec4<bool>(false, false, global0.x, false), global2.c, global0.xzz)).a).d).d).d;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(global2.c.x * 292f))))), _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(-global2.c.x)), 176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_div_f32(-865f, _wgslsmith_f_op_f32(floor(-244f)))));
    var var_3 = func_2(select(global2.b, global2.b, select(select(vec4<bool>(global2.d.x, false, var_0.x, true), vec4<bool>(true, false, false, true), func_2(global2.b, true, Struct_1(4294967295u, vec4<bool>(false, false, true, global2.d.x), global2.c, global0.wyx)).d.d.x), global2.b, global2.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_2.x)))) < -1438f, Struct_1(global2.a, !global2.b, vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 973f) - _wgslsmith_f_op_f32(select(820f, 2600f, var_0.x))), global2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.c.x)), _wgslsmith_f_op_f32(-275f + var_2.x))), !vec3<bool>(false, !global0.x, global0.x)));
    return func_2(vec4<bool>(false, !(!all(vec4<bool>(false, false, true, global2.d.x))), global2.b.x, ((u_input.a <= -38244i) && true) && true), all(vec2<bool>(global2.d.x, all(select(global2.d, vec3<bool>(var_3.a.d.x, var_3.b.x, global2.d.x), false)))), Struct_1(56652u, !select(func_2(global2.b, global2.b.x, Struct_1(global2.a, vec4<bool>(true, false, var_0.x, true), var_3.d.c, global2.b.wyy)).a.b, var_3.a.b, select(var_3.d.b, global2.b, var_0.x)), _wgslsmith_div_vec4_f32(var_3.a.c, vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.c.x), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(var_3.d.c.x - global2.c.x), var_2.x)), vec3<bool>(!select(true, var_3.d.d.x, var_3.d.b.x), func_4(Struct_1(70475u, global2.b, global2.c, global0.wyy), Struct_2(Struct_1(var_3.c.x, vec4<bool>(false, false, global0.x, global0.x), global2.c, global0.yxz), var_3.a.d.xx, var_3.c, var_3.d), func_2(vec4<bool>(global2.b.x, true, global0.x, global2.b.x), global2.b.x, Struct_1(global2.a, var_3.d.b, vec4<f32>(-2124f, var_2.x, 1312f, var_2.x), vec3<bool>(var_0.x, global2.d.x, false))).a, vec3<u32>(var_3.a.a, var_3.d.a, 21850u)).x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = func_2(vec4<bool>((0u << (0u % 32u)) != ~_wgslsmith_sub_u32(var_0.a.a, var_0.c.x), all(!vec4<bool>(false, var_0.d.d.x, true, global0.x)), global2.b.x || (true && all(var_0.d.b.wy)), any(var_0.a.b)), var_0.a.b.x, Struct_1(countOneBits(~40858u), !func_1().d.b, global2.c, select(vec3<bool>(true, false, false), !select(vec3<bool>(global2.b.x, var_0.a.d.x, false), global2.d, false), var_0.d.b.xxw))).a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * 160f) * _wgslsmith_div_f32(var_0.a.c.x, global2.c.x)), 357f))));
    global2 = func_1().d;
    var var_2 = Struct_3(func_2(func_1().a.b, false, var_0.d), firstLeadingBit(-vec4<i32>(u_input.a & u_input.a, ~u_input.a, i32(-1i) * -1i, reverseBits(u_input.a))));
    global1 = true;
    let var_3 = select(!func_1().d.b, vec4<bool>(!var_2.a.a.b.x && all(!var_0.a.b), true, !(!var_0.a.d.x) && var_2.a.d.d.x, false), vec4<bool>(func_4(func_2(vec4<bool>(var_2.a.d.d.x, global2.b.x, global0.x, var_0.b.x), true, var_2.a.a).d, func_1(), var_2.a.a, ~var_2.a.c).x || !var_0.b.x, global0.x, true, func_1().a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(var_2.b.xyy), vec3<i32>(u_input.a, var_2.b.x, abs(_wgslsmith_add_i32(30866i, 11128i))), var_2.a.d.b.zzw), -729f, var_0.c, max(~(~vec4<u32>(var_2.a.d.a, global2.a, var_2.a.a.a, 4294967295u) << ((vec4<u32>(global2.a, global2.a, var_0.a.a, 4264u) | vec4<u32>(1u, 1u, 1u, var_0.a.a)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global2.a, var_2.a.a.a, var_0.c.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.c.x, global2.a, 68217u, var_0.a.a), vec4<u32>(4294967295u, 4294967295u, var_0.c.x, global2.a), vec4<u32>(var_0.a.a, var_2.a.a.a, var_0.d.a, 5387u)))));
}

