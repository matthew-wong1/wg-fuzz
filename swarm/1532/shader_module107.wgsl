struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec4<f32>(-990f, -806f, 1540f, 1324f), vec2<f32>(-1160f, 1527f), -1000f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.wz + global0.b.xx), _wgslsmith_f_op_vec2_f32(ceil(global0.b.yz)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(ceil(arg_1)), vec2<f32>(354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_1 = 48183u;
    global0 = Struct_1(-1i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)) + _wgslsmith_f_op_vec4_f32(abs(var_0.b)))))), var_0.c, 280f);
    var_0 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.x - -1356f), _wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), -686f)) - vec4<f32>(-1000f, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -509f), _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(max(-676f, global0.c.x)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-global0.c.x)), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f))), select(true, false, !(arg_2.x <= 22912i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-216f))), -720f)));
    let var_2 = ~(~_wgslsmith_add_vec4_u32(select(vec4<u32>(var_1, 0u, 20834u, 4294967295u), ~vec4<u32>(var_1, 60393u, var_1, 50806u), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), firstLeadingBit(vec4<u32>(16468u, 1u, var_1, 1u))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.b)) - _wgslsmith_div_vec4_f32(global0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, arg_0.x, -395f, -592f)), var_0.b))));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(global0.a, 55662i), u_input.a), -1i), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1836f, 167f, global0.b.x, global0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -853f, 1524f, global0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1075f, -600f, global0.d, -290f) + vec4<f32>(global0.b.x, global0.c.x, 742f, -1777f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1128f - global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -3041f))))), -917f);
    let var_0 = all(select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), false));
    let var_1 = -1000f;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.b)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(1403f, 4294967295u)), _wgslsmith_f_op_vec4_f32(global0.b - global0.b), abs(vec4<i32>(global0.a, -671i, -1i, -1i))))))), _wgslsmith_f_op_vec2_f32(exp2(global0.b.zz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -252f))) + var_1), _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(step(361f, _wgslsmith_f_op_f32(sign(global0.c.x))))))));
    var_2 = Struct_1(_wgslsmith_sub_i32(var_2.a, _wgslsmith_add_i32(25310i, i32(-1i) * -35544i)) & var_2.a, global0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-774f * -620f), _wgslsmith_f_op_f32(-248f + var_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.d, -811f), global0.c))), all(vec4<bool>(true, true, var_0, var_0)))), -1467f);
    return vec2<bool>(!var_0, !var_0 == var_0);
}

fn func_1() -> vec4<f32> {
    let var_0 = select(func_2(), func_2(), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    let var_1 = firstTrailingBit(firstLeadingBit(~vec3<u32>(countOneBits(43223u), ~37796u, ~15057u)));
    let var_2 = -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a, 4454i, global0.a, 0i)), vec4<i32>(18421i, global0.a, global0.a, global0.a) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-32937i, 27067i, u_input.a, u_input.a), vec4<i32>(global0.a, global0.a, global0.a, global0.a))), vec4<i32>(i32(-1i) * -2147483647i, -1i, 42779i, i32(-1i) * -global0.a));
    global0 = Struct_1(-22904i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.b)))), _wgslsmith_f_op_vec2_f32(-global0.b.zw), _wgslsmith_f_op_f32(exp2(global0.c.x)));
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(var_2, var_2 & (firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, var_2.x)) << (firstTrailingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u)))), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(global0.c.x - global0.b.x), _wgslsmith_f_op_f32(global0.c.x * global0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(-298f + 647f)) + _wgslsmith_f_op_vec2_f32(step(global0.c, vec2<f32>(2225f, -132f)))), _wgslsmith_f_op_f32(1108f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(-global0.c), global0.b, _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a, -1i, u_input.a, var_2.x), abs(vec4<i32>(u_input.a, u_input.a, -1i, var_2.x))))), global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_1 = _wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1961f, var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1000f, global0.c.x, 449f), vec4<f32>(global0.d, -875f, 1934f, var_0.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.b))), vec4<bool>(true, true, true, true))), vec4<i32>(u_input.a, -global0.a, 1i, _wgslsmith_sub_i32(0i >> (1u % 32u), _wgslsmith_div_i32(-49809i, u_input.a))))).x);
    global0 = Struct_1(-firstLeadingBit(~_wgslsmith_mod_i32(global0.a, -18513i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, -751f, var_0.x, -537f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, var_0.x, global0.b.x, 1974f) + vec4<f32>(var_0.x, global0.c.x, var_0.x, 510f)), _wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, vec4<bool>(true, false, true, false)))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - var_0.x))), -809f, -259f, var_0.x)), global0.b.wy, 1859f);
    let var_2 = select(!vec4<bool>(true, !all(vec2<bool>(false, false)), true, true), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, false)))), select(vec4<bool>(true, select(true, false, all(vec2<bool>(false, false))), select(all(vec3<bool>(false, false, false)), true, false), select(true, global0.b.x < 1402f, false)), select(vec4<bool>(true, all(vec3<bool>(false, true, true)), select(true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, true)), false), vec4<bool>(true, true, true, true))));
    let var_3 = vec2<u32>(899u, _wgslsmith_mult_u32(1u, 1u));
    var var_4 = !(any(var_2) || var_2.x);
    var var_5 = Struct_2(Struct_1(~_wgslsmith_add_i32(global0.a, -2147483647i << (var_3.x % 32u)), global0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1500f, global0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.d), _wgslsmith_f_op_vec2_f32(func_3(636f, abs(0u))).x), Struct_1(select(global0.a, ~u_input.a, !any(vec4<bool>(var_2.x, true, false, true))), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2803f, global0.b.x)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.b.xx, vec2<f32>(global0.b.x, -134f))))), global0.b.x), Struct_1(~28841i, global0.b, vec2<f32>(1004f, -1000f), 416f), ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36214u, 0u), var_3), var_3.x), reverseBits(var_3.x), ~var_3.x, _wgslsmith_add_u32(reverseBits(1u), ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-214f)))), max(abs(vec2<i32>(var_5.b.a, global0.a)), _wgslsmith_mod_vec2_i32(~vec2<i32>(global0.a, -8445i), abs(vec2<i32>(-26678i, global0.a)))) << (var_5.d.xw % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(var_0.zy, var_5.c.b, vec4<i32>(-1i, 63946i, global0.a, global0.a))).yx)), var_0.wy)), global0.b.xy)), -_wgslsmith_div_i32(global0.a, -(~u_input.a)));
}

