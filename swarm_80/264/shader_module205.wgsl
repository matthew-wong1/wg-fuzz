struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(global1.x, global1.x))), 1000f));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * global1.x)), global1.x));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-938f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(164f)) - global1.x))), global1.x));
    global0 = !all(vec2<bool>(true, select(true, false, false))) | any(vec2<bool>(false, !any(vec2<bool>(true, true))));
    global0 = true;
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = ~u_input.d.xy;
    var_0 = vec2<u32>(max(reverseBits(~arg_3.d), _wgslsmith_sub_u32(func_3(), func_3())), 0u);
    let var_1 = Struct_2(1905f, arg_3.c.b);
    global0 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_3.b.b, 13355i, 25642i), vec4<i32>(25302i, u_input.e.x, arg_3.a.b, 1i)), vec4<i32>(u_input.e.x, 54686i, 65i, u_input.c) >> (vec4<u32>(arg_3.d, 11270u, u_input.d.x, var_0.x) % vec4<u32>(32u))) < u_input.c) || true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -145f)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-586f))))))));
    return select(!vec3<bool>(false, any(arg_2), global1.x <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec3<bool>((381f <= global1.x) | arg_3.b.d, select(false, arg_2.x, arg_1.x != false), select(arg_1.x & arg_1.x, arg_1.x, true != arg_1.x)), !arg_1, !arg_1), false);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    let var_0 = !any(!func_2(Struct_2(-382f, arg_1), vec3<bool>(true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), Struct_4(Struct_1(vec4<f32>(global1.x, 1000f, global1.x, arg_1.x), u_input.b, vec2<bool>(false, false), true), Struct_1(arg_1, 1i, vec2<bool>(true, false), false), Struct_2(1277f, vec4<f32>(arg_1.x, -163f, global1.x, 1000f)), u_input.d.x)));
    let var_1 = func_2(Struct_2(-1023f, arg_1), select(select(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0), !vec3<bool>(false, var_0, var_0), !vec3<bool>(true, var_0, var_0)), vec3<bool>(any(vec4<bool>(true, var_0, var_0, var_0)), any(vec3<bool>(var_0, var_0, false)), u_input.c >= 1i), _wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(arg_1.x - arg_0.b.x)), !func_2(arg_0, !vec3<bool>(var_0, var_0, var_0), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, var_0, var_0, false), var_0), Struct_4(Struct_1(arg_0.b, 2147483647i, vec2<bool>(var_0, false), true), Struct_1(arg_1, 43294i, vec2<bool>(true, var_0), var_0), Struct_2(-1336f, vec4<f32>(1000f, arg_0.a, arg_0.a, 228f)), 1u)), vec3<bool>(var_0, select(true, func_2(Struct_2(arg_0.a, arg_1), vec3<bool>(true, var_0, var_0), vec4<bool>(true, false, var_0, false), Struct_4(Struct_1(vec4<f32>(574f, 387f, arg_1.x, arg_0.a), 12765i, vec2<bool>(false, var_0), var_0), Struct_1(vec4<f32>(global1.x, arg_0.a, global1.x, -1477f), u_input.e.x, vec2<bool>(true, true), var_0), Struct_2(global1.x, arg_1), 1537u)).x, var_0), true)), vec4<bool>(true, true, true, true), Struct_4(Struct_1(arg_0.b, -1i, vec2<bool>(any(vec4<bool>(false, true, true, var_0)), true), true & var_0), Struct_1(arg_0.b, u_input.c, vec2<bool>(true, func_2(Struct_2(1174f, vec4<f32>(global1.x, -1000f, arg_1.x, global1.x)), vec3<bool>(var_0, true, var_0), vec4<bool>(false, var_0, false, var_0), Struct_4(Struct_1(arg_1, 0i, vec2<bool>(true, var_0), false), Struct_1(vec4<f32>(1071f, -1017f, arg_1.x, -349f), u_input.b, vec2<bool>(true, true), var_0), arg_0, u_input.d.x)).x), var_0), arg_0, _wgslsmith_dot_vec2_u32(max(u_input.d.zx, u_input.d.yy), vec2<u32>(u_input.d.x, 24649u)) & _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4555u, u_input.d.x)), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)))).yx;
    let var_2 = !select(select(!(!vec4<bool>(var_0, var_1.x, false, true)), select(select(vec4<bool>(var_1.x, var_1.x, var_0, var_0), vec4<bool>(false, var_1.x, false, false), var_0), select(vec4<bool>(var_1.x, var_1.x, var_0, true), vec4<bool>(true, var_1.x, false, var_0), vec4<bool>(true, var_0, true, false)), true || var_1.x), u_input.d.x <= 1u), vec4<bool>(true, (var_1.x && false) != true, u_input.d.x > ~u_input.a, true), !vec4<bool>(var_0, all(vec4<bool>(var_1.x, var_0, var_0, var_1.x)), var_0, true));
    var var_3 = Struct_5(Struct_3(40388u, ~(u_input.c >> ((18207u & u_input.a) % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.b), abs(-14252i & u_input.b), func_2(arg_0, var_2.zyw, select(var_2, vec4<bool>(true, true, var_0, var_1.x), false), Struct_4(Struct_1(arg_1, 1i, var_1, var_0), Struct_1(arg_1, 37054i, vec2<bool>(var_2.x, true), false), Struct_2(-901f, arg_0.b), 16937u)).xz, false)), _wgslsmith_dot_vec2_i32(u_input.e, u_input.e | -u_input.e), arg_0.b.zx, _wgslsmith_f_op_vec4_f32(round(arg_1)));
    var var_4 = Struct_3(8272u, ~38543i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_3.c.x, global1.x, 482f)), var_3.a.c.a), u_input.e.x, var_2.zz, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f - 410f) + -1741f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    let var_1 = Struct_2(335f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)))) * vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(global1.x, vec4<f32>(global1.x, 1000f, global1.x, -675f)), vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.wx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.b.yw * vec2<f32>(var_1.a, -1853f)))))));
    let var_2 = Struct_4(Struct_1(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -559f), 482f, _wgslsmith_f_op_f32(-1240f * _wgslsmith_f_op_f32(step(global1.x, -298f)))), _wgslsmith_mult_i32(1i, 2147483647i), vec2<bool>(true, true), (~u_input.d.x != u_input.a) && false), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1564f, global1.x, -366f, global1.x), var_1.b)) - _wgslsmith_f_op_vec4_f32(var_1.b + var_1.b))), _wgslsmith_mod_i32(-u_input.c, -1i), vec2<bool>(true, _wgslsmith_f_op_f32(-global1.x) < 1623f), _wgslsmith_f_op_f32(floor(-344f)) == 999f), var_1, abs(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(u_input.d.x, 25822u))));
    let var_3 = global1.x;
    var_0 = vec2<i32>(0i, ~(var_2.b.b >> (min(~4294967295u, _wgslsmith_sub_u32(var_2.d, u_input.d.x)) % 32u)));
    var var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -1476f, 707f, _wgslsmith_f_op_f32(var_2.b.a.x + 195f)))), -1i, var_2.a.c, !var_2.a.d), var_2.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2245f + 2062f), _wgslsmith_f_op_f32(select(792f, 536f, var_2.a.c.x))))), var_1.b), ~(~var_2.d) >> (max(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(3030u, var_2.d, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, 25780u, u_input.a, 4294967295u)), vec4<u32>(u_input.a, 49122u, u_input.a, 1u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_4.a.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.b.a, vec4<f32>(global1.x, var_4.c.a, var_4.b.a.x, global1.x)))))), firstLeadingBit(select(_wgslsmith_div_vec2_i32(u_input.e, vec2<i32>(-21965i, 27643i)) >> (select(vec2<u32>(u_input.a, 1u), vec2<u32>(47031u, var_4.d), var_4.b.d) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-u_input.e, ~vec2<i32>(var_4.a.b, -12873i)), var_4.a.d || true)), -min(vec4<i32>(_wgslsmith_sub_i32(0i, u_input.c), var_0.x, var_4.a.b, u_input.c | u_input.c), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, u_input.c, -2147483647i, u_input.b), vec4<i32>(var_0.x, -61207i, -2147483647i, var_0.x))));
}

