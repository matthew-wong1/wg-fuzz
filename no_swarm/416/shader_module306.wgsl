struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(48863u, 54007u, 2389u), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false, vec2<bool>(true, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1913f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1705f, 1000f)))), -332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(f32(-1f) * -1106f), false)))));
    global0 = Struct_1(firstLeadingBit(~vec3<u32>(~u_input.c.x, global0.a.x << (u_input.d.x % 32u), 0u ^ global0.a.x)), vec4<bool>(any(vec2<bool>(arg_1.x, global0.b.x)), global0.d, all(!vec4<bool>(false, arg_1.x, global0.e.x, global0.b.x)), arg_1.x), global0.b, global0.b.x, !vec2<bool>(global0.b.x, true & global0.c.x));
    var var_1 = Struct_4(u_input.d.xwz, ~arg_0);
    var var_2 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-2021f - -1185f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(230f, 1832f))))), Struct_1(~firstTrailingBit(max(vec3<u32>(0u, 17560u, u_input.d.x), vec3<u32>(global0.a.x, var_1.a.x, 1u))), select(select(vec4<bool>(true, true, arg_1.x, true), select(vec4<bool>(arg_1.x, global0.e.x, arg_1.x, false), global0.b, global0.c), !vec4<bool>(true, true, false, global0.c.x)), vec4<bool>(any(global0.b.zwz), true, true, arg_1.x), vec4<bool>(!arg_1.x, true, all(global0.c.ww), arg_1.x)), vec4<bool>(arg_1.x, 0u < u_input.d.x, any(select(global0.b, global0.b, vec4<bool>(false, true, false, arg_1.x))), false), !(~var_1.a.x <= 44836u), select(vec2<bool>(global0.c.x, global0.e.x && arg_1.x), select(!arg_1, !global0.e, true && global0.b.x), select(select(vec2<bool>(false, global0.c.x), vec2<bool>(true, true), vec2<bool>(arg_1.x, false)), arg_1, arg_1.x))), true, u_input.c);
    var var_3 = _wgslsmith_dot_vec4_u32(var_2.e, _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 1u, 1u, u_input.c.x), vec4<u32>(1u, global0.a.x, global0.a.x, 52520u)), vec4<u32>(~var_2.e.x, 49899u, ~u_input.d.x, countOneBits(0u))) << ((vec4<u32>(u_input.c.x, ~global0.a.x, var_2.e.x, var_1.a.x) & vec4<u32>(1u, ~29170u, ~var_2.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6412u, var_2.c.a.x, 97411u, global0.a.x), vec4<u32>(20463u, u_input.d.x, var_2.c.a.x, 0u)))) % vec4<u32>(32u)));
    return ~(~(~4294967295u));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    var var_0 = 613f;
    return u_input.c.xyy;
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(global0.a, global0.b, global0.c, true, global0.c.yz);
    var var_0 = Struct_1(~func_4(Struct_4(u_input.c.zxy, 29477i), false, Struct_1(u_input.d.zxz, global0.c, global0.b, global0.c.x, vec2<bool>(false, global0.c.x)), func_3(1798i, vec2<bool>(false, global0.e.x))) ^ ((~vec3<u32>(global0.a.x, global0.a.x, global0.a.x) << (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(~vec3<u32>(68966u, u_input.c.x, 1u), vec3<u32>(29684u, u_input.c.x, 45064u))), select(!vec4<bool>(true, !global0.c.x, select(true, global0.c.x, global0.e.x), any(vec3<bool>(true, global0.d, global0.d))), !global0.c, global0.d), !global0.b, (true & global0.c.x) & false, vec2<bool>(true, true));
    var_0 = Struct_1(~(~vec3<u32>(~u_input.a, ~74072u, var_0.a.x)), global0.b, global0.c, false, vec2<bool>(all(vec4<bool>(true, true, true, false)), !all(vec3<bool>(global0.e.x, true, false))));
    let var_1 = select(select(var_0.c, vec4<bool>(var_0.c.x, any(global0.b.zx) && (global0.d && var_0.c.x), true, 3481i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -28634i), u_input.e.yy)), false), select(vec4<bool>(var_0.b.x, (var_0.b.x & false) != true, global0.c.x, true), !vec4<bool>(var_0.c.x, global0.d, true, 10706u != var_0.a.x), select(select(select(var_0.c, var_0.c, var_0.c), select(vec4<bool>(var_0.b.x, var_0.e.x, false, false), global0.b, global0.b), global0.e.x), var_0.c, vec4<bool>(any(vec3<bool>(var_0.e.x, false, var_0.b.x)), true, any(var_0.b.zy), global0.e.x))), select(!select(!var_0.c, global0.b, true), vec4<bool>(var_0.c.x, global0.b.x, false, all(select(global0.e, vec2<bool>(var_0.d, global0.b.x), false))), !any(select(global0.c.yyz, global0.c.xyy, var_0.c.x))));
    global0 = Struct_1(~abs(vec3<u32>(u_input.a, ~4294967295u, var_0.a.x)), var_0.c, select(vec4<bool>(false, false, true, false), var_0.b, select(!select(vec4<bool>(false, true, false, true), global0.c, vec4<bool>(true, var_1.x, true, global0.c.x)), vec4<bool>(var_1.x, !global0.c.x, false, var_0.c.x | var_0.c.x), any(select(global0.c.zxz, var_1.zzz, var_1.x)))), false, select(var_0.e, var_1.yy, true));
    return Struct_3(select(!select(var_0.b, !vec4<bool>(var_1.x, true, true, var_0.c.x), global0.b.x), vec4<bool>(true, any(vec3<bool>(var_1.x, true, false)), select(true, any(vec3<bool>(var_0.c.x, var_1.x, var_0.b.x)), all(vec3<bool>(var_0.c.x, var_0.e.x, true))), !all(var_0.b.wyz)), !vec4<bool>(all(global0.c), false, true, global0.a.x >= 4294967295u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = max(_wgslsmith_mod_u32(global0.a.x, ~(_wgslsmith_add_u32(86992u, 57382u) << (global0.a.x % 32u))), ~(~15235u));
    var var_1 = func_2();
    global0 = Struct_1(~vec3<u32>(0u, arg_1.a.x, ~1u), vec4<bool>(global0.c.x, ~abs(arg_1.a.x) < ~(~u_input.d.x), true | !all(vec3<bool>(true, var_1.a.x, true)), func_2().a.x), arg_0, false, arg_0.wz);
    let var_2 = Struct_2(!arg_0.wz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-375f, 1540f, -692f, -408f))))))), Struct_1(~(~vec3<u32>(arg_1.a.x, 1u, global0.a.x)), arg_0, select(var_1.a, !vec4<bool>(var_1.a.x, false, global0.b.x, true), global0.e.x && arg_0.x), func_2().a.x, !(!func_2().a.yx)), arg_0.x, u_input.c);
    var var_3 = Struct_3(select(!vec4<bool>(all(var_2.c.b), var_1.a.x, var_1.a.x, all(vec4<bool>(var_2.d, true, arg_0.x, true))), vec4<bool>(var_2.c.b.x && all(vec4<bool>(arg_0.x, var_1.a.x, true, false)), false, all(vec4<bool>(true, global0.e.x, global0.b.x, true)), !all(vec3<bool>(var_1.a.x, arg_0.x, true))), !var_2.d));
    return var_2.b.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = Struct_1(((_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(global0.a.x, 0u, 4294967295u)) >> (min(vec3<u32>(0u, u_input.c.x, 77867u), u_input.c.xzz) % vec3<u32>(32u))) << ((global0.a >> (~vec3<u32>(46418u, 4294967295u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<u32>(select(17894u, ~8414u, func_2().a.x), global0.a.x, ~(~8911u)), vec4<bool>(true, true, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_2 + 1525f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(500f - -1000f)), true), global0.c, all(select(select(func_2().a, select(vec4<bool>(global0.d, global0.d, global0.e.x, global0.e.x), vec4<bool>(false, global0.d, global0.b.x, global0.e.x), vec4<bool>(false, false, false, global0.d)), !global0.d), vec4<bool>(u_input.d.x >= 4294967295u, true, global0.b.x, true), global0.c)), select(!vec2<bool>(func_2().a.x, false), vec2<bool>(global0.b.x && true, global0.d), false));
    let var_0 = vec3<bool>(false, select(false, true, select(!(!global0.c.x), !any(vec2<bool>(true, global0.b.x)), !(!global0.d))), true);
    let var_1 = Struct_2(!vec2<bool>((false | var_0.x) | (global0.e.x == true), global0.d), vec4<f32>(1921f, _wgslsmith_div_f32(arg_3, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), -969f), Struct_1(~(vec3<u32>(u_input.a, 0u, arg_1) | abs(u_input.d.xwy)), global0.c, global0.c, false, vec2<bool>(var_0.x, true)), all(func_2().a), vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(57749u, arg_1, 6859u)), vec3<u32>(global0.a.x, global0.a.x, global0.a.x) ^ u_input.c.wwy) >> (3574u % 32u), ~_wgslsmith_add_u32(arg_1, 75205u) ^ _wgslsmith_sub_u32(abs(u_input.d.x), global0.a.x), ~(~(~0u)), 1u));
    var var_2 = var_1.c;
    let var_3 = var_1.c;
    return Struct_2(global0.b.yx, _wgslsmith_f_op_vec4_f32(trunc(var_1.b)), var_3, (-_wgslsmith_add_i32(2147483647i, u_input.b) ^ ~1i) > 1i, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 91415u, global0.a.x), vec4<u32>(global0.a.x, 0u, 4294967295u, 56205u), vec4<u32>(var_2.a.x, 0u, 0u, 27147u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(298f, 1855f, -215f), _wgslsmith_f_op_vec3_f32(vec3<f32>(549f, 2295f, -713f) - vec3<f32>(877f, 1718f, 911f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(335f, -258f, true)), _wgslsmith_f_op_f32(step(944f, -915f)), -578f))), _wgslsmith_dot_vec3_u32(u_input.c.xzz, ~(~vec3<u32>(global0.a.x, 37375u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-424f))) * _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, true), Struct_4(u_input.c.zyz, -1i))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(-1067f * -1188f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, u_input.c.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) - _wgslsmith_f_op_f32(-var_0.b.x)), max(1i, -u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.b, -46057i), -u_input.e), -1i, u_input.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x), u_input.e)), ~firstLeadingBit(vec4<i32>(u_input.e.x, u_input.b, u_input.e.x, u_input.e.x))));
}

