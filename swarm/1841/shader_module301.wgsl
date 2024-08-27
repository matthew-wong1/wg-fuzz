struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(39228u, 25988u, 8681u);

var<private> global1: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = -firstTrailingBit(abs(vec4<i32>(arg_0, min(-1i, 8027i), arg_0, reverseBits(arg_0))));
    var var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-769f)) - _wgslsmith_f_op_f32(1176f - -554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f))))), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(~global0.xz, _wgslsmith_div_vec2_u32(u_input.a.ww, u_input.a.yy))), vec2<u32>(~_wgslsmith_mult_u32(1u, 1u), u_input.a.x)), select(!vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x, true & global1.x, true), !select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, false, false, false)), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, global1.x, global1.x, false))), true & any(!vec4<bool>(global1.x, true, global1.x, true))));
    let var_2 = Struct_3(Struct_2(!var_1.c.wyx), select(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~global0.x, countOneBits(global0.x), max(0u, u_input.a.x), _wgslsmith_div_u32(var_1.b.x, 0u))), true), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - 321f), _wgslsmith_f_op_f32(min(var_1.a.x, 654f))))), _wgslsmith_f_op_f32(f32(-1f) * -110f), -_wgslsmith_div_i32(countOneBits(-6369i), u_input.c), global1.x, 5019i), Struct_1(var_1.a.x, _wgslsmith_f_op_f32(min(1710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) - 874f))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.c, var_0.x, 2147483647i), abs(vec4<i32>(-1i, var_0.x, -11421i, u_input.c))), var_0), all(!vec2<bool>(false, global1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, ~u_input.d, -2147483647i), max(-var_0, var_0))));
    let var_3 = vec2<bool>(global1.x, false);
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.c.a)), var_2.d.a) - var_1.a)), vec2<u32>(1682u, 0u & var_2.b), var_1.c);
    return _wgslsmith_add_u32(~_wgslsmith_add_u32(38943u, abs(var_1.b.x << (24539u % 32u))), ~(15250u | _wgslsmith_sub_u32(select(1u, u_input.a.x, false), 1u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = false;
    let var_1 = select(u_input.a, vec4<u32>(max(_wgslsmith_mod_u32(50489u, global0.x), _wgslsmith_mod_u32(21715u, global0.x)), _wgslsmith_mult_u32(func_3(-1i), arg_1.b), 23153u, arg_1.b << (arg_1.b % 32u)) & vec4<u32>(51030u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(44588u, u_input.a.x), arg_1.b << (0u % 32u)), abs(29699u), 0u), global1.x);
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zy) * arg_2.yz))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(714f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x)))), !(arg_3.x != !var_0))), vec2<u32>(firstTrailingBit(global0.x), ~abs(4294967295u)), !(!select(vec4<bool>(true, arg_3.x, var_0, global1.x), !vec4<bool>(global1.x, true, var_0, var_0), select(vec4<bool>(arg_3.x, false, global1.x, var_0), vec4<bool>(true, arg_3.x, true, true), vec4<bool>(false, true, true, arg_1.d.d)))));
    global0 = vec3<u32>(countOneBits(489u), var_1.x, ~(global0.x >> (4294967295u % 32u))) | (~(firstTrailingBit(var_1.wxy) ^ firstLeadingBit(vec3<u32>(arg_1.b, var_1.x, 6277u))) ^ vec3<u32>(28251u, abs(~4294967295u), var_2.b.x));
    let var_3 = -vec2<i32>(i32(-1i) * -14506i, -(abs(1i) & arg_0.x));
    return -1202f;
}

fn func_1() -> Struct_5 {
    let var_0 = u_input.d;
    global0 = u_input.a.wxw;
    let var_1 = -vec3<i32>(-10232i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), u_input.b.yy), var_0), -30915i) ^ vec3<i32>(_wgslsmith_div_i32(2147483647i, -38085i) >> (~(~global0.x) % 32u), var_0, ~1i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1017f + _wgslsmith_f_op_f32(1000f - -548f)) - _wgslsmith_f_op_f32(ceil(1f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(step(310f, 706f))), _wgslsmith_f_op_f32(691f + _wgslsmith_f_op_f32(func_2(vec4<i32>(31501i, var_0, var_1.x, 2147483647i), Struct_3(Struct_2(vec3<bool>(global1.x, false, false)), u_input.a.x, Struct_1(-1264f, -613f, var_1.x, global1.x, 2147483647i), Struct_1(-940f, -871f, -27272i, global1.x, var_0)), vec3<f32>(452f, 1021f, 1752f), vec2<bool>(global1.x, false))))))) * _wgslsmith_f_op_f32(round(1f)));
    let var_3 = Struct_4(any(!vec4<bool>(true, global1.x, true, true)), Struct_3(Struct_2(select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, global1.x))), 4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(var_1.x, var_1.x, var_0, 5960i), Struct_3(Struct_2(vec3<bool>(global1.x, global1.x, global1.x)), u_input.a.x, Struct_1(var_2, -385f, -32137i, false, u_input.d), Struct_1(var_2, var_2, var_0, global1.x, var_1.x)), vec3<f32>(-1236f, -130f, var_2), vec2<bool>(global1.x, true))) - -747f), _wgslsmith_f_op_f32(f32(-1f) * -437f), firstLeadingBit(0i), false, _wgslsmith_mult_i32(1i, var_0)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_2), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, u_input.d, 26599i), vec4<i32>(0i, var_1.x, var_1.x, 2147483647i))), false, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(44188i, 39884i, 1i, 1i), Struct_3(Struct_2(vec3<bool>(false, false, global1.x)), 8816u, Struct_1(var_2, 473f, u_input.c, global1.x, var_1.x), Struct_1(var_2, 660f, -5348i, true, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1057f, -218f)), select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(456f)), -2171f) * _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(round(var_2))))), Struct_1(911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f) * -792f), 0i, global1.x, _wgslsmith_add_i32(1i & ~var_0, var_1.x)));
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, var_3.c)), -1876f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1187f) - vec2<f32>(var_3.d.a, 180f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, var_2), vec2<f32>(var_2, var_2))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b.d.a, -1787f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-334f, 880f) * vec2<f32>(-453f, -1966f))))), select(u_input.a.ww, reverseBits(firstTrailingBit(countOneBits(u_input.a.xw))), select(var_3.b.a.a.yz, !(!var_3.b.a.a.xz), true)), !(!select(!vec4<bool>(var_3.a, var_3.d.d, true, false), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(true, true, false, false), true), all(vec4<bool>(false, global1.x, global1.x, global1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(func_1().c.wyz), ~abs(arg_1.b.x), Struct_1(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), 21483i, true && (arg_0.c >= -9036i), u_input.c & _wgslsmith_add_i32(_wgslsmith_add_i32(-33793i, u_input.d), 1i)), arg_0);
    global0 = ~vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(43476u, arg_1.b.x) << (u_input.a.zx % vec2<u32>(32u))), global0.yy), (global0.x | ~var_0.b) & ~(~0u));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1407f, -676f), arg_1.a, var_0.a.a.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1773f)), true | global1.x)) * arg_1.a)));
    var var_2 = ~(~_wgslsmith_mult_i32(~var_0.c.c, -25496i)) | u_input.c;
    var_1 = vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)));
    return Struct_3(var_0.a, func_3(~1i), Struct_1(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(min(-1507f, 133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) + _wgslsmith_f_op_f32(ceil(1183f)))), -5573i, all(func_1().c.yzz) && any(var_0.a.a), -firstLeadingBit(var_0.c.e)), var_0.d);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> Struct_5 {
    let var_0 = select(vec4<bool>(!global1.x, all(func_1().c), false, func_1().c.x), vec4<bool>(true, false, any(!arg_0.b.a.a.yx), arg_0.d.d), !(!select(select(vec4<bool>(false, arg_0.a, arg_0.a, global1.x), vec4<bool>(false, false, false, global1.x), true), vec4<bool>(false, arg_0.b.a.a.x, global1.x, true), arg_0.d.d & false)));
    let var_1 = arg_0.b.d.e;
    global0 = ~u_input.a.yzw;
    global0 = _wgslsmith_add_vec3_u32(countOneBits(max(vec3<u32>(countOneBits(arg_0.b.b), arg_1, arg_1), vec3<u32>(u_input.a.x, global0.x, 4294967295u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 10983u), u_input.a.xzw) % vec3<u32>(32u)))), ~(~u_input.a.wxx));
    var var_2 = var_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(false | any(!vec2<bool>(global1.x, false)), func_4(Struct_1(_wgslsmith_f_op_f32(-412f - -126f), _wgslsmith_f_op_f32(f32(-1f) * -2786f), u_input.b.x, global1.x & false, u_input.b.x | 48967i), func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2045f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1164f), -762f)), func_4(func_4(Struct_1(-1729f, 300f, u_input.c, global1.x, 1i), Struct_5(vec2<f32>(431f, 1338f), global0.yz, vec4<bool>(global1.x, false, true, global1.x))).d, Struct_5(vec2<f32>(1000f, -1233f), global0.zz, vec4<bool>(global1.x, global1.x, global1.x, true))).d), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -534f));
    var var_1 = firstLeadingBit(u_input.a.xyz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(0i), firstLeadingBit(_wgslsmith_div_i32(-41919i, -2147483647i)), 2147483647i, u_input.c) & vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.c), abs(i32(-1i) * -7586i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, -1i)), 1i), ~16681i), func_1().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(407f)) * _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), -741f);
}

