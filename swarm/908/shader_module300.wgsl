struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: f32 = -1123f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> i32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(step(global1.c.x, global1.c.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1365f - -1428f))))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1044f - _wgslsmith_f_op_f32(f32(-1f) * -822f)), 1f);
    var var_1 = Struct_3(global2.a, Struct_1(false && any(vec4<bool>(false, false, true, global1.b.a)), (_wgslsmith_f_op_f32(-global2.a.b.x) > 280f) && false, global2.b.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global1.c.x, -528f, -1567f) + global2.c) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, -1001f, -423f, -852f), vec4<f32>(-362f, var_0.x, 657f, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.b.x, var_0.x, global2.a.b.x, var_0.x), global1.c)))))));
    let var_2 = global2.a;
    let var_3 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.a, 0i, i32(-1i) * -1i, _wgslsmith_sub_i32(max(global0.x, global0.x), u_input.a)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(22947i, global0.x, 2147483647i, global2.a.a), vec4<i32>(global2.a.a, global2.a.c.x, global1.a.a, 1i), vec4<i32>(0i, -36909i, 1i, 40092i)), vec4<i32>(var_2.a, -46045i, global0.x, -51587i) ^ vec4<i32>(u_input.d, u_input.a, var_2.c.x, var_2.a)) << (~reverseBits(vec4<u32>(0u, global2.b.c.x, 0u, u_input.e)) % vec4<u32>(32u))));
    return -1i;
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(global1.a, global2.a.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)) + global1.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, global1.c.x, global1.a.b.x, 1099f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global2.a.b.x, -1044f, 839f)))))));
    var var_0 = -global1.a.c;
    var var_1 = _wgslsmith_clamp_u32(1u, ~(~u_input.c), u_input.c);
    global3 = global2.c.x;
    let var_2 = !global1.a.d.b;
    return Struct_3(Struct_2(func_3(u_input.e, global1.b.c.x >> ((u_input.c | 7867u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(global1.a.b)), _wgslsmith_f_op_vec4_f32(sign(global2.c))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -3098i), countOneBits(global0.yx), _wgslsmith_div_vec2_i32(max(vec2<i32>(-10792i, global1.a.c.x), global2.a.c), global2.a.c)), global1.b, _wgslsmith_clamp_vec3_u32(global2.a.e, ~global1.a.e, countOneBits(vec3<u32>(4294967295u, 1790u, global2.a.e.x)))), global1.b, vec4<f32>(_wgslsmith_f_op_f32(global2.a.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-876f, global2.a.b.x, false))))), global2.c.x, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c.x)) - 722f), global2.a.b.x)));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = select(vec3<bool>(global1.a.d.b, arg_0.d.a, true), vec3<bool>(all(!vec2<bool>(false, arg_0.d.a)), false, any(select(!vec2<bool>(global2.a.d.a, false), vec2<bool>(false, global1.a.d.b), true))), select(!select(vec3<bool>(true, true, true), !vec3<bool>(true, true, global1.a.d.b), vec3<bool>(false, false, global1.a.d.b)), select(select(!vec3<bool>(false, global1.a.d.a, true), select(vec3<bool>(arg_0.d.b, true, global2.b.b), vec3<bool>(global1.a.d.a, false, global1.a.d.b), vec3<bool>(global1.b.a, true, true)), arg_0.d.a), vec3<bool>(true, !global1.b.a, select(false, false, false)), !vec3<bool>(global2.a.d.b, global1.a.d.b, false)), all(!select(vec2<bool>(false, arg_0.d.a), vec2<bool>(false, true), global1.a.d.b))));
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), -1000f, 596f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(global2.c.x + -1252f), 162f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, global1.a.b.x, -195f)))))));
    global1 = func_2();
    var var_3 = 1u;
    return var_0.xz;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(global1.a.a, -7330i), abs(u_input.b.x | global0.x)), _wgslsmith_f_op_vec4_f32(-global2.a.b), global0.xy, arg_0, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2.b.c, vec4<u32>(4294967295u, 12481u, 0u, 0u)), _wgslsmith_mult_u32(global1.a.d.c.x | 8314u, 95390u)), global2.a.e.x, 0u));
    global2 = func_2();
    let var_1 = !(!(~56622u <= _wgslsmith_clamp_u32(global1.a.e.x, _wgslsmith_clamp_u32(global1.a.d.c.x, 0u, 0u), global2.b.c.x)));
    let var_2 = func_2().a.d;
    var var_3 = max(4294967295u, 0u);
    return Struct_3(Struct_2(_wgslsmith_sub_i32(-(~(-1i)), -10200i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a.b, vec4<f32>(-687f, global2.c.x, -197f, global2.c.x), vec4<bool>(var_2.b, arg_2.x, true, var_2.a))) + _wgslsmith_f_op_vec4_f32(-var_0.b)))), u_input.b, func_2().b, select(select(vec3<u32>(26849u, 0u, arg_0.c.x), min(vec3<u32>(42591u, global1.b.c.x, var_2.c.x), global2.b.c.wyy), true), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.d.c.xzw, vec3<u32>(arg_1.x, 84136u, 57753u)), abs(vec3<u32>(0u, 1u, 37663u))), !(!arg_2))), global1.a.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(floor(global2.a.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-644f, -1065f, global2.a.b.x, -892f), global1.a.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -1000f, 155f, global2.c.x))), vec4<f32>(_wgslsmith_div_f32(-1622f, -1358f), 1f, -2019f, _wgslsmith_f_op_f32(-var_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_1(!(_wgslsmith_f_op_f32(step(-870f, global1.a.b.x)) != _wgslsmith_f_op_f32(f32(-1f) * -1472f)), any(func_1(global2.a)), abs(func_2().a.d.c)), func_2().a.e.xy, !(!(!select(vec3<bool>(global2.a.d.a, true, false), vec3<bool>(false, global1.b.b, global1.a.d.a), global1.a.d.b))), !global2.a.d.a);
    var var_0 = Struct_3(func_4(Struct_1(func_2().b.a, true, global1.b.c), global1.a.d.c.ww, select(!vec3<bool>(false, true, global1.b.a), !(!vec3<bool>(true, global1.a.d.b, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, global1.b.a, false), vec3<bool>(global1.b.a, true, global1.b.b)), vec3<bool>(false, global2.a.d.a, global2.b.b), select(vec3<bool>(true, true, global2.a.d.b), vec3<bool>(false, false, false), vec3<bool>(false, global1.b.b, true)))), true && global2.b.a).a, Struct_1(true, all(select(select(vec4<bool>(global1.b.b, global1.a.d.b, true, global2.a.d.b), vec4<bool>(global1.a.d.a, global1.b.a, false, false), true), !vec4<bool>(true, global2.a.d.a, global2.a.d.b, global1.b.a), global1.a.d.a)), countOneBits(~vec4<u32>(2104u, global1.a.e.x, 66777u, 4294967295u))), vec4<f32>(-1000f, -396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1443f, 286f, global1.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -361f)))), 453f));
    global2 = func_4(Struct_1(global2.b.b, true, abs(~max(vec4<u32>(10521u, global2.a.d.c.x, 85716u, var_0.b.c.x), vec4<u32>(var_0.b.c.x, 4294967295u, global2.a.e.x, global1.a.d.c.x)))), _wgslsmith_mult_vec2_u32(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b.c.x, 1344u), vec2<u32>(global1.a.d.c.x, 4294967295u)), vec2<u32>(~global2.a.d.c.x, ~global2.a.e.x), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(global1.b.a, global1.b.a), false), vec2<bool>(false, false))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.e.x, global1.b.c.x, global1.b.c.x, 0u), vec4<u32>(global1.a.e.x, 0u, var_0.b.c.x, 4294967295u) << (global1.b.c % vec4<u32>(32u))), 25556u)), vec3<bool>(global2.a.d.a, any(!vec3<bool>(false, global1.b.b, true)), true), !global1.b.b);
    var var_1 = ~vec3<u32>(~var_0.b.c.x, 13859u, max(21669u, ~u_input.e));
    var var_2 = all(vec2<bool>(true, true));
    let var_3 = Struct_3(Struct_2(-9576i | ~(global0.x >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, -1001f, -534f, -107f) + vec4<f32>(-1673f, global1.c.x, global1.c.x, -745f))), _wgslsmith_mod_vec2_i32(global1.a.c, var_0.a.c), global1.b, vec3<u32>(var_1.x, _wgslsmith_add_u32(4294967295u, ~var_1.x), ~(~0u))), global1.a.d, global1.a.b);
    let var_4 = func_4(func_2().b, min(~(~var_1.xz), ~global2.b.c.yz), select(select(vec3<bool>(true, true, global1.b.b), select(!vec3<bool>(true, global2.a.d.b, true), !vec3<bool>(global1.a.d.b, true, global2.a.d.a), false), true), !vec3<bool>(true, global2.a.d.b & global2.a.d.a, all(vec2<bool>(var_0.a.d.b, false))), vec3<bool>(var_0.b.b, all(select(vec4<bool>(global2.a.d.a, global1.a.d.a, global1.b.a, false), vec4<bool>(false, global2.b.a, false, false), false)), _wgslsmith_mod_i32(global0.x, u_input.b.x) != -88i)), (var_3.a.d.a == all(vec4<bool>(true, true, true, true))) | func_4(func_2().b, ~vec2<u32>(u_input.c, var_1.x), !(!vec3<bool>(true, false, var_3.b.a)), any(select(vec2<bool>(global2.b.a, false), vec2<bool>(false, false), vec2<bool>(false, false)))).a.d.a).a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-vec2<i32>(var_4.a, -14579i)), u_input.e);
}

