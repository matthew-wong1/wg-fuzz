struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(i32(-2147483648), i32(-2147483648), 1685i), vec3<i32>(-1635i, 38826i, 9952i), vec3<i32>(2147483647i, -2000i, -8976i), vec3<i32>(0i, i32(-2147483648), 5632i), vec3<i32>(-30447i, -11019i, -1i), vec3<i32>(1347i, 0i, i32(-2147483648)));

var<private> global2: vec3<f32>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> vec4<bool> {
    global3 = select(select(!(!(!vec4<bool>(arg_1, global3.x, false, true))), vec4<bool>(true, true, true, true), !vec4<bool>(any(vec3<bool>(global3.x, true, global3.x)), !global3.x, !arg_1, false || global3.x)), select(select(vec4<bool>(!arg_1, false, global3.x, global0.x == global0.x), vec4<bool>(select(true, arg_1, false), global3.x, global3.x, true), !(!arg_1)), vec4<bool>(arg_1 && any(vec4<bool>(true, true, false, true)), all(global3.yx), ~u_input.a.x > (arg_0 << (u_input.a.x % 32u)), false), false), !global3.x);
    global0 = abs(vec3<i32>((global0.x >> (_wgslsmith_sub_u32(31129u, arg_0) % 32u)) ^ global0.x, 1i, 2147483647i));
    var var_0 = global3.x;
    var var_1 = 492f;
    var var_2 = i32(-1i) * -37799i;
    return !vec4<bool>(-1065f <= _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, arg_2), -296f), all(select(global3.zxw, select(global3.xzx, global3.wyz, true), global3.zwy)), !(!global3.x), arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = arg_0.c.d.x;
    let var_1 = global0.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.d.x) - arg_0.c.d.x) * _wgslsmith_f_op_f32(-arg_0.c.d.x)), -335f)), arg_0.c.d.x);
    let var_3 = arg_0.c.c.x;
    var var_4 = vec3<bool>(all(vec4<bool>(all(!arg_1), all(global3.xxz), false, true)), ~(~4294967295u) == var_3, false);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~max(arg_0.c.b.xw, arg_0.c.b.zz), _wgslsmith_div_vec2_u32(arg_0.c.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 6207u), arg_0.c.c, vec2<u32>(0u, u_input.a.x)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(var_3, 47858u), u_input.a))), firstTrailingBit(~(39218u | u_input.a.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a.x << (10078u % 32u), u_input.a.x), func_4(Struct_2(_wgslsmith_clamp_u32(u_input.a.x, 46545u, 53509u), select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, true, true, true), vec4<bool>(false, false, global3.x, false)), Struct_1(2147483647i, vec4<u32>(1877u, 4294967295u, u_input.a.x, 14235u), vec2<u32>(u_input.a.x, 0u), vec3<f32>(-1373f, global2.x, 854f))), !func_3(u_input.a.x, false, 2272f, vec3<u32>(u_input.a.x, 47657u, 1u)))) & u_input.a;
    let var_1 = Struct_2(u_input.a.x, select(vec4<bool>(u_input.a.x <= ~var_0.x, all(vec4<bool>(true, true, true, true)), global3.x, all(select(vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), select(func_3(~u_input.a.x, !global3.x, 247f, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) | vec3<u32>(u_input.a.x, var_0.x, 15538u)), !(!vec4<bool>(false, global3.x, global3.x, true)), global3.x), !global3.x), Struct_1(max(-global0.x, global0.x) & _wgslsmith_mod_i32(global0.x | global0.x, global0.x), reverseBits(~abs(vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x))), vec2<u32>(var_0.x, abs(u_input.a.x ^ 36338u)), vec3<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x - -585f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-759f)), _wgslsmith_f_op_f32(-1000f * global2.x), 459f) - vec3<f32>(_wgslsmith_f_op_f32(step(var_1.c.d.x, 1369f)), _wgslsmith_f_op_f32(global2.x * var_1.c.d.x), _wgslsmith_f_op_f32(round(-144f))))));
    var_0 = u_input.a;
    var var_2 = vec3<bool>(true, any(!var_1.b.zxy), any(vec4<bool>(false, true, !(u_input.a.x >= 1u), any(!vec2<bool>(global3.x, true)))));
    return Struct_2(38346u, var_1.b, var_1.c);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(-arg_0.c.d);
    var var_0 = arg_0.b.x;
    global3 = !(!vec4<bool>(false, !global3.x, u_input.a.x == ~40293u, all(vec3<bool>(arg_0.b.x, true, true)) || (arg_0.b.x | true)));
    global1 = array<vec3<i32>, 6>();
    var var_1 = false;
    return func_2().c;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = func_5(func_2(), 33767u);
    let var_1 = vec2<bool>(false, any(!select(func_3(0u, arg_0, -758f, var_0.b.xwy).xzx, vec3<bool>(true, false, arg_0), !vec3<bool>(false, false, global3.x))));
    global1 = array<vec3<i32>, 6>();
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -178f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2074f + global2.x)))), _wgslsmith_f_op_f32(max(880f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(step(-594f, arg_1))))), _wgslsmith_f_op_f32(1337f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) - _wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(var_0.d.x, global2.x, -1073f), global3.yzy))))));
    global3 = !func_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 36967u | arg_3), ~1u), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)), _wgslsmith_mult_vec3_u32(abs(var_0.b.yyw), ~_wgslsmith_mod_vec3_u32(var_0.b.xwx, vec3<u32>(2843u, u_input.a.x, 4324u))));
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 6>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f * global2.x) + _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(func_1(global3.x, global2.x, u_input.a.x & ~4294967295u, u_input.a.x)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1753f, 397f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1213f, -338f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.x, 500f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -324f, 744f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, global2.x, 2136f) + vec3<f32>(var_0.x, global2.x, -122f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - var_0.x)), _wgslsmith_f_op_f32(func_5(func_2(), firstTrailingBit(u_input.a.x)).d.x - _wgslsmith_f_op_f32(-1237f * -782f))));
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, global2.x)))), var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(1034f * var_1.x)) * 936f)), var_1, func_3(_wgslsmith_add_u32(u_input.a.x, reverseBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), !any(global3.xzx), var_0.x, firstLeadingBit(vec3<u32>(55319u, u_input.a.x, 4294967295u)) ^ ~(~vec3<u32>(59662u, 82823u, 8747u))).zwx));
    let var_2 = -62535i < ~global0.x;
    var var_3 = firstTrailingBit(~vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 0u)), ~_wgslsmith_mod_u32(45799u, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1623f) * _wgslsmith_f_op_f32(floor(var_0.x))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_f32(abs(-443f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), global2.x, var_1.x, var_1.x)), vec4<i32>(-(~16044i), i32(-1i) * -_wgslsmith_mod_i32(global0.x, -41837i), ~(i32(-1i) * -39065i), 2147483647i));
}

