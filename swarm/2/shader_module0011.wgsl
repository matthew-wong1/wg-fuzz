struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(firstLeadingBit(global1.c.b & ~arg_2.b.d) & global1.c.a.d, ~min(~vec4<u32>(13299u, 0u, global1.c.a.d.x, global1.c.b.x), vec4<u32>(72812u, arg_2.b.d.x, arg_2.b.d.x, abs(arg_1.d))));
    let var_1 = firstLeadingBit(~(~vec4<u32>(1u, select(7001u, arg_1.d, false), 0u, 0u)));
    global0 = 1i;
    var var_2 = vec2<bool>(false || global1.b.e, countOneBits(_wgslsmith_add_i32(~0i, arg_1.a.c ^ 23453i)) < _wgslsmith_mult_i32(u_input.c, (global1.a ^ u_input.a.x) << (1854u % 32u)));
    let var_3 = vec3<u32>(31165u, ~max(~0u, 78153u) << (countOneBits(_wgslsmith_mult_u32(4294967295u, 67457u ^ var_1.x)) % 32u), _wgslsmith_clamp_u32(arg_1.d | _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.d.x, var_1.x), var_0.zz), firstTrailingBit(max(12475u, 79907u)), 1u) ^ 0u);
    return !(!(!global1.c.a.e));
}

fn func_2() -> Struct_2 {
    global0 = global1.b.b.x;
    global1 = Struct_5(-24063i, global1.b, global1.c);
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(global1.b.d.x, ~_wgslsmith_sub_u32(~global1.b.d.x, 76953u)), 0u >> (~(_wgslsmith_div_u32(36007u, 53291u) << (select(0u, global1.c.a.d.x, global1.b.e) % 32u)) % 32u), min(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(55322u, 1u, global1.c.a.d.x, global1.c.a.d.x), abs(global1.b.d))), global1.c.b.x));
    var var_1 = ~min(~59608u, 24599u);
    var var_2 = _wgslsmith_mult_vec2_i32(abs(-(u_input.a.zw << ((vec2<u32>(64129u, global1.c.b.x) | global1.b.d.yy) % vec2<u32>(32u)))), -vec2<i32>(2147483647i, _wgslsmith_add_i32(global1.a | global1.a, -1i)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-274f)) + global1.c.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.c.d.x))), _wgslsmith_f_op_f32(trunc(global1.c.c.d.x))))), select(global1.c.a.b.x, 2147483647i, _wgslsmith_div_f32(-1000f, -1000f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c.c.a)) + _wgslsmith_f_op_f32(trunc(global1.c.c.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2985f, _wgslsmith_f_op_f32(-global1.c.c.b)) - _wgslsmith_f_op_vec2_f32(round(global1.c.c.d))), _wgslsmith_f_op_vec2_f32(-global1.c.c.d), vec2<bool>(func_3(global1.c.c.d, Struct_3(Struct_2(1151f, global1.c.c.a, var_2.x, vec2<f32>(428f, 1000f)), Struct_2(167f, global1.c.c.b, 1i, vec2<f32>(global1.c.c.b, 914f)), global1.c.c.d, global1.c.a.d.x), Struct_5(0i, global1.c.a, Struct_4(Struct_1(var_2.x, vec2<i32>(-1i, -24073i), 2147483647i, global1.b.d, global1.b.e), global1.b.d, Struct_2(global1.c.c.d.x, -598f, u_input.a.x, global1.c.c.d)))), !(!global1.b.e)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(-1357f, _wgslsmith_f_op_f32(select(global1.c.c.b, _wgslsmith_f_op_f32(abs(121f)), false | all(!vec4<bool>(global1.c.a.e, true, global1.b.e, false)))));
    var_0 = _wgslsmith_f_op_f32(max(arg_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1134f)));
    global0 = -arg_1 << (~1u % 32u);
    let var_1 = reverseBits(u_input.a.xwz);
    global0 = 8963i;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1, -42542i), vec3<i32>(var_1.x, var_1.x, 38937i)), -30360i, ~u_input.c) >> (_wgslsmith_add_vec4_u32(~global1.b.d, ~global1.c.b) % vec4<u32>(32u)), vec4<i32>(30641i, -63322i << (global1.c.a.d.x % 32u), 2147483647i, 44985i)), _wgslsmith_mod_i32(i32(-1i) * -1i, arg_2.x), ~(i32(-1i) * -10228i));
}

fn func_1() -> vec2<bool> {
    var var_0 = abs(~func_4(Struct_3(func_2(), global1.c.c, vec2<f32>(global1.c.c.b, 1226f), _wgslsmith_div_u32(global1.c.b.x, 31260u)), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(14724i, u_input.a.x)), vec2<i32>(43634i, 1i)));
    global1 = Struct_5(global1.c.c.c, global1.c.a, global1.c);
    let var_1 = ~global1.c.a.d.ywz;
    var var_2 = 345f;
    var var_3 = _wgslsmith_sub_u32(2115u, _wgslsmith_dot_vec3_u32(abs(var_1), vec3<u32>(~min(var_1.x, global1.b.d.x), _wgslsmith_clamp_u32(~var_1.x, select(var_1.x, var_1.x, global1.b.e), 29153u), global1.b.d.x)));
    return select(vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.c.a, global1.c.c.b)))), Struct_3(global1.c.c, Struct_2(-1412f, global1.c.c.a, u_input.a.x, global1.c.c.d), vec2<f32>(global1.c.c.d.x, 787f), var_1.x), Struct_5(u_input.a.x, Struct_1(global1.c.a.c, vec2<i32>(30323i, 14925i), u_input.b, global1.c.a.d, false), global1.c)), !select(!global1.c.a.e, !global1.b.e, false)), vec2<bool>(true, all(select(!vec4<bool>(global1.b.e, true, false, false), vec4<bool>(false, true, global1.b.e, true), vec4<bool>(false, true, global1.c.a.e, global1.c.a.e)))), any(vec3<bool>(false, all(!vec3<bool>(true, global1.c.a.e, global1.c.a.e)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    var var_1 = global1.c.c;
    var var_2 = all(func_1());
    var var_3 = false;
    var var_4 = global1.b.d;
    var_1 = func_2();
    let var_5 = vec2<u32>(_wgslsmith_add_u32(4294967295u, var_4.x) ^ ~(~min(1u, 1u)), 4294967295u);
    var_3 = var_0.e | all(!select(!vec2<bool>(var_0.e, global1.b.e), select(vec2<bool>(var_0.e, global1.c.a.e), vec2<bool>(true, var_0.e), vec2<bool>(false, false)), all(vec3<bool>(var_0.e, var_0.e, var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(986f, _wgslsmith_f_op_f32(-global1.c.c.d.x));
}

