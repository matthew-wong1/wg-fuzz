struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<Struct_2, 28>;

var<private> global2: f32;

var<private> global3: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-222f, 485f))), vec2<f32>(-820f, -620f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -846f) - vec2<f32>(1108f, 1141f)) + vec2<f32>(223f, -1987f))))));
    let var_1 = vec3<u32>(36626u, ~15043u, arg_0.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0, vec2<f32>(-900f, 768f)) + var_0), _wgslsmith_f_op_vec2_f32(trunc(var_0)), ~9791i > (-5579i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 8u)], 8u)] % 32u)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-622f))), vec2<f32>(var_0.x, 1000f))) - var_0);
    global1 = array<Struct_2, 28>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(abs(-766f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_2.x) - var_2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, var_0.x, var_2.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-3432f * var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), all(vec2<bool>(false, global3.e)))), 1182f, -661f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(604f)), _wgslsmith_div_f32(var_2.x, var_0.x), -1620f, _wgslsmith_f_op_f32(var_0.x + -1830f))))));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_i32(-2876i, global3.c) <= (_wgslsmith_sub_i32(1i, 2988i) ^ arg_1.b.x), true, arg_1.a.c);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(297f + -512f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-231f)))))), var_0, Struct_1(true, var_0.a, vec4<bool>(any(!vec2<bool>(arg_1.a.c.x, false)), select(false, arg_0.x, true), arg_1.a.a, arg_1.b.x == 1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, -1944f, _wgslsmith_f_op_f32(1418f - -3780f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(171f, 576f, 964f), vec3<f32>(444f, -121f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1837f, 1704f, -163f))))), select(vec3<bool>(global3.d, false, true), !(!arg_2.c.wyx), vec3<bool>(true, false, any(vec4<bool>(arg_1.a.a, false, true, arg_2.b)))))), vec2<f32>(-1571f, _wgslsmith_f_op_f32(min(178f, -374f))));
    global0 = array<u32, 8>();
    let var_2 = vec3<i32>(-2147483647i, 30143i, ~reverseBits(u_input.d.x));
    var var_3 = -1252f;
    return var_1.e;
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.c;
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - -720f);
    var var_3 = _wgslsmith_f_op_vec2_f32(func_4(global3.b.c.wxy, global1[_wgslsmith_index_u32(~var_1, 28u)], Struct_1(u_input.a.x <= u_input.b, global3.b.b, vec4<bool>(false, !(u_input.e.x > 0u), !func_3(Struct_4(global3.a, Struct_1(true, global3.d, global3.b.c), global3.c, false, global3.d)), !all(global3.b.c))), ~vec4<u32>(global3.a.x, ~global0[_wgslsmith_index_u32(var_1, 8u)], _wgslsmith_add_u32(u_input.e.x, var_1), abs(var_1)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(1u, 1u)), reverseBits(max(u_input.e.x, 1u)), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c, 1u, global0[_wgslsmith_index_u32(u_input.e.x, 8u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 104753u, 26846u), vec4<u32>(1131u, 41934u, 0u, var_1)))) % vec4<u32>(32u))));
    let var_4 = Struct_2(global3.b, u_input.d);
    return Struct_4(~reverseBits(global3.a), Struct_1(-2147483647i < (u_input.d.x & _wgslsmith_clamp_i32(2580i, var_4.b.x, 4547i)), var_3.x >= var_3.x, global3.b.c), ~25391i, global3.d, true);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -396f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f) + _wgslsmith_f_op_f32(min(-743f, 1016f)))))), Struct_1(!(-arg_2.c > func_2().c), select(!any(global3.b.c.yx), true, arg_2.d), vec4<bool>(!global3.e, true, !all(global3.b.c.wz), global3.e)), Struct_1(any(vec3<bool>(func_3(arg_2), arg_2.e & arg_1.b, true)), arg_1.c.x || arg_1.a, select(vec4<bool>(true, true, true, false), vec4<bool>(func_2().b.a, !arg_1.a, true, false), !(!arg_1.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-962f, 323f, 375f))), vec3<f32>(_wgslsmith_div_f32(-1206f, -677f), _wgslsmith_div_f32(1883f, -691f), -1130f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1304f, -1139f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -212f) + vec2<f32>(-956f, 709f)))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_4(global3.b.c.zzz, global1[_wgslsmith_index_u32(0u, 28u)], Struct_1(arg_1.b, false, vec4<bool>(true, true, arg_1.a, var_0.b.b)), arg_0)).x, _wgslsmith_f_op_f32(947f - -1000f), 0i < arg_2.c)), _wgslsmith_f_op_f32(-var_0.e.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * var_0.e.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.x))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.e.x)));
    var var_3 = any(!select(vec3<bool>(any(vec3<bool>(true, true, global3.e)), func_3(Struct_4(arg_0.zwy, var_0.b, global3.c, var_0.b.b, arg_2.e)), -796f >= var_0.a), arg_2.b.c.ywy, vec3<bool>(true, true, arg_2.e)));
    return var_0.d;
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_5(countOneBits(vec4<u32>(0u, global0[_wgslsmith_index_u32(global3.a.x, 8u)], global3.a.x, global0[_wgslsmith_index_u32(u_input.c, 8u)])), Struct_1(true, true, global3.b.c), func_2(), func_2().a.x))))));
    global3 = func_2();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-969f)) - -764f) - -1312f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2178f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f))))));
    let var_1 = global3.b;
    let var_2 = global1[_wgslsmith_index_u32(~u_input.e.x, 28u)];
    var var_3 = vec3<bool>(all(global3.b.c), false, var_2.a.c.x);
    var var_4 = 54628u;
    let var_5 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1410f), -467f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1()))))), ~abs(u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x), select(!var_1.b, true, var_1.b != false))), var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1655f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1000f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 194f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -316f, var_0))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(248f, var_0, var_0), vec3<f32>(var_0, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-834f, var_0, var_0))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-2147483647i, 40625i)), _wgslsmith_sub_vec2_i32(u_input.d.yw, var_2.b.wy)), u_input.a & min(u_input.d.zx, u_input.a)));
}

