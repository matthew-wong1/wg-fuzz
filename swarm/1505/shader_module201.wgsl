struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    global0 = min(u_input.c.yy, select(u_input.a.xz, u_input.a.zx, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 62283u)) >= 21081u));
    var var_0 = _wgslsmith_f_op_f32(1302f * _wgslsmith_f_op_f32(1236f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(259f, 693f))))));
    return vec4<bool>(all(vec2<bool>(any(!arg_0), false)), ~u_input.b <= 4294967295u, ~(~u_input.b) != 28274u, any(arg_0));
}

fn func_2() -> Struct_2 {
    let var_0 = -(~u_input.a);
    var var_1 = !(!(!select(vec4<bool>(true, true, true, true), func_3(vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))));
    let var_2 = global0.x | _wgslsmith_sub_i32(-16456i, -30106i);
    var_1 = select(vec4<bool>(true, var_1.x, true, var_1.x), select(vec4<bool>(any(select(vec2<bool>(false, false), var_1.xw, var_1.x)), true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), !(!(!vec4<bool>(false, var_1.x, var_1.x, false)))), any(vec4<bool>(any(select(var_1.zy, var_1.yw, var_1.yz)), true, all(!vec3<bool>(var_1.x, false, false)), !var_1.x)));
    global0 = ~vec2<i32>(u_input.a.x, min(_wgslsmith_mod_i32(~2147483647i, abs(1i)), -7902i));
    return Struct_2(var_2, vec2<bool>(true, !var_1.x), Struct_1(230f, global0.x ^ min(-18280i, 1i), true), all(select(!var_1.xy, vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x))) & (true & select(true, true, true)), Struct_1(454f, 12766i, (0i & ~global0.x) <= _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c), vec3<i32>(1i, var_2, -55189i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global0 = u_input.a.xy;
    let var_0 = select(!vec4<bool>(all(vec4<bool>(arg_2.c, false, arg_1.b.x, arg_2.c)) || all(vec4<bool>(false, arg_2.c, arg_0.x, arg_2.c)), arg_1.a != _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -625i), vec2<i32>(arg_3.a, -25035i)), any(!vec3<bool>(false, true, arg_0.x)), true), vec4<bool>(true, arg_3.d, !arg_0.x, arg_0.x), !(!vec4<bool>(!arg_3.e.c, global0.x <= global0.x, any(vec2<bool>(false, arg_0.x)), arg_1.b.x)));
    var var_1 = arg_3.e.a;
    let var_2 = vec3<bool>(arg_1.e.c, arg_2.a > _wgslsmith_div_f32(1f, arg_2.a), !arg_1.d);
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-654f)), _wgslsmith_f_op_f32(min(arg_2.a, -2191f)), all(vec2<bool>(var_0.x, arg_2.c))));
    return func_2();
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(arg_2.e, abs(~u_input.b ^ _wgslsmith_mult_u32(4294967295u, u_input.b)) >= u_input.b);
    let var_1 = -212f;
    let var_2 = !arg_2.b;
    let var_3 = Struct_3(false, func_3(vec4<bool>(arg_2.d, var_1 <= _wgslsmith_f_op_f32(f32(-1f) * -769f), true, true)), _wgslsmith_mult_u32(min(106613u, u_input.b) ^ min(93100u, u_input.b), 1u) | u_input.b, arg_2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.a, -772f, -1056f)), vec3<f32>(var_1, -957f, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(245f, -1321f, arg_2.c.a), vec3<f32>(arg_2.c.a, var_1, 273f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(217f, 236f, var_1) * vec3<f32>(528f, 1359f, var_1))))));
    global0 = vec2<i32>(~arg_0, ~(~arg_1.x));
    return !var_3.b.wxz;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = vec4<bool>(-(-30898i << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u)) > ~arg_0.b, all(func_5(abs(_wgslsmith_div_i32(global0.x, 2147483647i)), vec3<i32>(~(-2147483647i), -2147483647i, ~arg_0.b), func_4(vec2<bool>(true, true), func_2(), func_2().c, Struct_2(global0.x, vec2<bool>(arg_0.c, arg_0.c), Struct_1(arg_0.a, 1i, arg_0.c), arg_0.c, Struct_1(arg_0.a, arg_0.b, false))))), true, all(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, u_input.b) | ~vec2<u32>(0u, u_input.b)), select(_wgslsmith_mult_vec2_u32(~abs(vec2<u32>(4294967295u, 58969u)), abs(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)))), _wgslsmith_div_vec2_u32(~vec2<u32>(40837u, u_input.b), vec2<u32>(abs(4294967295u), ~6175u)), true));
    var_0 = vec4<bool>(func_5(global0.x, u_input.a.wyz, func_4(func_5(0i, u_input.c, func_2()).xx, Struct_2(-1i, vec2<bool>(true, false), func_4(vec2<bool>(var_0.x, false), Struct_2(-2147483647i, vec2<bool>(true, arg_0.c), arg_0, arg_0.c, Struct_1(-977f, arg_0.b, true)), arg_0, Struct_2(0i, vec2<bool>(arg_0.c, false), arg_0, true, Struct_1(173f, global0.x, var_0.x))).c, var_0.x, Struct_1(1462f, arg_0.b, true)), Struct_1(arg_0.a, i32(-1i) * -1i, arg_0.a <= arg_0.a), Struct_2(select(u_input.c.x, -13039i, var_0.x), vec2<bool>(arg_0.c, false), Struct_1(287f, arg_0.b, false), arg_0.c, Struct_1(arg_0.a, 2147483647i, false)))).x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 18812i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.c.x), u_input.a.yx)) > -_wgslsmith_mult_i32(func_2().a, _wgslsmith_mod_i32(global0.x, -38706i)), var_0.x, arg_0.c);
    var var_2 = vec4<bool>(func_3(select(select(!vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(arg_0.c, var_0.x, arg_0.c, var_0.x), vec4<bool>(true, false, var_0.x, arg_0.c)), func_3(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false)), true)).x, false, true, func_2().e.c);
    var var_3 = Struct_2(0i | _wgslsmith_dot_vec3_i32(abs(~u_input.c), vec3<i32>(firstLeadingBit(6139i), -arg_0.b, 2147483647i >> (u_input.b % 32u))), !vec2<bool>(true, any(!vec2<bool>(true, arg_0.c))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -105f)), _wgslsmith_div_f32(352f, arg_0.a)))), arg_0.b, ~arg_0.b >= ~(-2147483647i)), func_3(select(!vec4<bool>(false, false, arg_0.c, var_2.x), vec4<bool>(var_2.x || true, var_0.x, arg_0.a < arg_0.a, select(false, var_2.x, arg_0.c)), all(!vec4<bool>(var_0.x, true, var_0.x, arg_0.c)))).x, func_4(func_2().b, func_2(), func_2().e, Struct_2(u_input.a.x, vec2<bool>(func_4(vec2<bool>(true, true), Struct_2(arg_0.b, var_2.zx, arg_0, var_0.x, Struct_1(-1000f, arg_0.b, var_2.x)), Struct_1(-1425f, 2147483647i, false), Struct_2(arg_0.b, var_2.xz, arg_0, var_0.x, Struct_1(-969f, global0.x, true))).d, !arg_0.c), Struct_1(arg_0.a, ~arg_0.b, global0.x == arg_0.b), !func_2().d, arg_0)).c);
    return StorageBuffer(_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 1i, -2147483647i, 36027i), u_input.a), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = select(!vec3<bool>(!select(false, true, true), -310f != _wgslsmith_f_op_f32(step(779f, -2910f)), !(global0.x == global0.x)), !(!vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_2 = firstLeadingBit(global0.x & u_input.c.x);
    let var_3 = ~reverseBits(~vec3<u32>(reverseBits(0u), 4649u, ~u_input.b));
    var_2 = ~2155i;
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-413f))), i32(-1i) * -(~(-30132i)), (u_input.b & 36849u) < var_3.x));
}

