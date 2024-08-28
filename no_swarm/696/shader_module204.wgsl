struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = 72620u ^ (global0.b.b.x ^ arg_0);
    let var_1 = min(-(global0.b.d.b << (_wgslsmith_mod_u32(min(u_input.a, 19283u), 4294967295u) % 32u)), global0.b.d.b << (1u % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_f_op_f32(f32(-1f) * -484f), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f), 2004f)))));
    global0 = Struct_4(any(vec3<bool>(any(vec3<bool>(global0.a, global0.b.a.a, true)), all(!vec4<bool>(false, global0.b.a.a, global0.b.d.a, global0.a)), true)), global0.b, ~arg_0);
    global0 = Struct_4(true, global0.b, arg_0);
    return _wgslsmith_mult_u32(18497u, select(1u, u_input.a, _wgslsmith_f_op_f32(722f + -983f) != _wgslsmith_f_op_f32(round(var_2.x))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = Struct_4((arg_0 & (arg_0 && false)) && (_wgslsmith_mod_u32(u_input.a, ~global0.b.c.x) != 0u), global0.b, abs(u_input.a));
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(func_3(~0u), ~countOneBits(10933u)), 4294967295u, 24791u, global0.b.c.x);
    let var_1 = global0.b.c;
    var var_2 = !global0.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1419f, -523f), vec2<f32>(844f, -442f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, -2185f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(487f, 317f))))))));
    return global0.b;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = ~(-(~min(vec4<i32>(arg_0.b.d.b, global0.b.d.b, -37229i, 2147483647i), vec4<i32>(arg_0.b.d.b, arg_0.b.a.b, arg_1.b.a.b, global0.b.d.b)) ^ (-vec4<i32>(17765i, 0i, arg_0.b.a.b, -2147483647i) | ~vec4<i32>(-2053i, global0.b.a.b, 0i, arg_0.b.d.b))));
    let var_1 = !select(vec3<bool>(all(select(vec3<bool>(true, true, global0.b.e), vec3<bool>(false, global0.a, false), arg_1.a)), true, all(vec2<bool>(true, true))), select(vec3<bool>(select(arg_1.a, false, arg_0.a), all(vec2<bool>(true, false)), !arg_1.a), select(select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(false, true, arg_0.b.a.a), vec3<bool>(global0.a, arg_0.a, true)), vec3<bool>(true, global0.a, arg_0.b.a.a), !global0.b.e), vec3<bool>(arg_1.a | true, arg_2.x <= 1510f, global0.b.d.a)), !(!select(vec3<bool>(true, true, false), vec3<bool>(arg_1.a, false, arg_0.b.d.a), vec3<bool>(false, arg_0.b.e, global0.b.d.a))));
    let var_2 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(min(-1000f, arg_2.x)))))));
    var_0 = -vec4<i32>(firstTrailingBit(2147483647i), -(~(-global0.b.d.b)), global0.b.d.b, min(~_wgslsmith_add_i32(arg_0.b.d.b, var_0.x), 12887i));
    let var_3 = firstTrailingBit(arg_1.b.b);
    return Struct_1(false, _wgslsmith_dot_vec3_i32(~vec3<i32>(~var_0.x, -1i, i32(-1i) * -36045i), ~(~_wgslsmith_div_vec3_i32(var_0.yxw, vec3<i32>(22921i, -1i, arg_1.b.a.b)))));
}

fn func_1() -> Struct_5 {
    global0 = Struct_4(global0.b.d.a, Struct_2(func_4(Struct_4(global0.a, func_2(global0.b.e), global0.b.b.x), Struct_4(true, Struct_2(Struct_1(false, global0.b.a.b), global0.b.b, global0.b.c, Struct_1(global0.a, -1i), true), _wgslsmith_div_u32(22373u, global0.b.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(210f, 489f, -1299f))))), vec3<u32>(70740u, ~42934u, ~u_input.a) >> (global0.b.b % vec3<u32>(32u)), firstLeadingBit(vec2<u32>(global0.b.c.x << (u_input.a % 32u), global0.b.c.x ^ 50072u)), global0.b.d, global0.b.d.a), 0u);
    var var_0 = u_input.a;
    var var_1 = select(vec4<bool>(any(!vec3<bool>(true, global0.b.a.a, global0.b.a.a)), global0.a, func_4(Struct_4(false, func_2(true), ~global0.c), Struct_4(global0.b.d.a, func_2(false), global0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(898f, -982f, -2232f)))).a, false), select(select(select(select(vec4<bool>(global0.a, true, global0.a, true), vec4<bool>(global0.a, true, global0.b.e, global0.a), vec4<bool>(global0.a, global0.b.d.a, true, false)), !vec4<bool>(global0.b.e, true, global0.b.d.a, true), true), !vec4<bool>(true, global0.a, global0.b.e, global0.b.d.a), select(select(vec4<bool>(global0.b.a.a, global0.a, true, false), vec4<bool>(false, true, global0.a, global0.b.a.a), false), select(vec4<bool>(true, global0.a, global0.a, global0.b.a.a), vec4<bool>(true, global0.a, global0.b.d.a, global0.a), vec4<bool>(global0.a, false, false, global0.a)), true)), vec4<bool>(select(any(vec2<bool>(global0.b.e, global0.a)), true, true), true, false, all(!vec4<bool>(false, false, global0.b.e, global0.b.e))), true), vec4<bool>(true, (false | global0.a) | false, true, global0.a));
    var var_2 = ~firstTrailingBit(vec4<i32>(min(-35451i, ~(-1203i)), 0i, global0.b.a.b, 1i));
    let var_3 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(firstLeadingBit(abs(1u)), u_input.a), 2275u);
    return Struct_5(all(var_1.zyy), Struct_2(global0.b.d, vec3<u32>(70009u, ~59272u, 61149u), countOneBits(global0.b.c), Struct_1(all(vec2<bool>(var_1.x, var_1.x)), -var_2.x), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, 127f, _wgslsmith_f_op_f32(659f + -269f), _wgslsmith_f_op_f32(abs(-488f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2380f) + -811f), 1241f, _wgslsmith_f_op_f32(500f * -1168f), 1f)), min(0u, u_input.a << (115279u % 32u)), Struct_3(global0.b.b, Struct_2(Struct_1(true, global0.b.d.b), _wgslsmith_div_vec3_u32(vec3<u32>(35719u, 22059u, 11122u), reverseBits(vec3<u32>(31384u, 30716u, 2447u))), vec2<u32>(var_3 | 0u, ~var_3), global0.b.d, 4294967295u > firstTrailingBit(global0.c)), func_4(Struct_4(true, global0.b, u_input.a), Struct_4(true, global0.b, func_3(global0.b.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, -1447f, 2997f))), var_1.zxw, vec2<i32>(_wgslsmith_div_i32(-2147483647i, 32587i << (0u % 32u)), abs(reverseBits(var_2.x)))));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 11735i, global0.b.a.b, arg_0.e.c.b), vec4<i32>(-6799i, global0.b.d.b, arg_0.b.d.b, 0i)), min(global0.b.a.b, global0.b.d.b)), min(func_2(global0.a).d.b, func_2(global0.b.a.a).a.b), ~(-1i)) ^ -47176i;
    let var_1 = arg_0;
    var var_2 = select(select(select(select(var_1.e.d, !arg_0.e.d, !global0.b.d.a), func_1().e.d, !(!vec3<bool>(true, arg_0.e.d.x, global0.b.e))), vec3<bool>(true, true, true), var_1.e.d), !(!vec3<bool>(arg_0.a, !var_1.a, all(vec2<bool>(true, false)))), var_1.e.d);
    var var_3 = func_1();
    let var_4 = any(vec4<bool>(true, false, var_3.e.d.x, true));
    return var_1.e.b;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    let var_0 = select(!vec4<bool>(45025u == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 11879u), arg_0.b.b.xx), any(vec2<bool>(true, true)), false, true), arg_2, global0.a);
    var var_1 = func_1().e.d.zx;
    var_1 = vec2<bool>(func_5(func_1()).a.a, true);
    let var_2 = u_input.a;
    var var_3 = func_1().e;
    return func_1().d & _wgslsmith_sub_u32(func_3(u_input.a), _wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(82540u, 25815u)), max(var_3.b.b.x >> (arg_0.b.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 69953u, 16436u, var_2), vec4<u32>(global0.c, 1u, arg_0.b.c.x, 38855u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(false, global0.b, func_6(Struct_4(true, global0.b, _wgslsmith_mod_u32(~global0.b.c.x, ~global0.b.b.x)), Struct_3(vec3<u32>(1576u ^ global0.c, u_input.a | global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.c.x, 0u, 1u, global0.c), vec4<u32>(global0.b.c.x, u_input.a, u_input.a, 0u))), func_5(func_1()), Struct_1(global0.b.e, max(-123i, 1i)), !vec3<bool>(false, true, global0.b.d.a), abs(-vec2<i32>(global0.b.a.b, -1i))), vec4<bool>(all(select(vec3<bool>(false, global0.a, true), vec3<bool>(global0.a, global0.b.d.a, global0.b.e), global0.a)), any(!vec2<bool>(global0.b.d.a, true)), func_2(global0.b.a.a).e, global0.a)));
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(646f, 621f), -1720f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f - -263f)), -1000f, !global0.b.e))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, 623f, -302f) * vec3<f32>(-762f, 1000f, -346f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-923f, -557f, -1026f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -929f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -549f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(698f, -1184f))))), func_2(global0.b.d.b > (-15283i & global0.b.a.b)).e));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1303f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 505f))), 768f));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(-316f, var_0.x))), 750f, var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = vec2<i32>(global0.b.a.b, global0.b.d.b) & _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(global0.b.a.b, global0.b.a.b)) & ~(-vec2<i32>(0i, global0.b.a.b)), firstTrailingBit(~vec2<i32>(28496i, -11207i)) | func_1().e.e);
    global0 = Struct_4(!(global0.a || (1u <= _wgslsmith_div_u32(1u, global0.b.c.x))), func_2(true), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec3<f32>(var_0.x, func_1().c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -270f))) * var_0.x)), _wgslsmith_add_u32(u_input.a, 72576u));
}

