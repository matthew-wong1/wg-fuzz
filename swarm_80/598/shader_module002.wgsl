struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7027i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    var var_0 = arg_2.x;
    let var_1 = arg_2.xwx;
    var var_2 = u_input.b.zx;
    var var_3 = Struct_1(!(!(1079f != arg_2.x)) && !(u_input.a >= 4220i), arg_0.b);
    var_0 = _wgslsmith_f_op_f32(-arg_3);
    return firstLeadingBit(max(i32(-1i) * -u_input.a, -1i)) << (22074u % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> bool {
    global0 = _wgslsmith_mult_i32(u_input.a, 0i);
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1621f, arg_2, arg_2))))));
    global0 = 29048i;
    global0 = arg_3.x;
    return (arg_1.a && ((u_input.d & u_input.d) <= _wgslsmith_add_u32(u_input.d | 101513u, 4294967295u))) && !any(select(arg_0.b.zyy, select(vec3<bool>(true, arg_1.a, true), var_0.b.yyw, var_0.b.x), vec3<bool>(false, false, true)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.x, !select(!arg_0, arg_0, arg_0.x));
    var var_1 = _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(u_input.a | -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a), vec2<i32>(-29759i, u_input.a)), -(~(~(-16128i)))));
    var var_2 = arg_1.x;
    global0 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f - -1423f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-488f))))));
    return Struct_1(func_4(Struct_1(true, arg_0), Struct_1(arg_0.x, vec4<bool>(true, arg_0.x, all(arg_0.zw), !arg_0.x)), _wgslsmith_f_op_f32(step(-2411f, _wgslsmith_div_f32(-180f, 1f))), _wgslsmith_mult_vec3_i32(vec3<i32>(~0i, func_3(Struct_1(var_0.a, vec4<bool>(false, arg_0.x, true, true)), 15502u, vec4<f32>(-119f, -999f, -1009f, -1000f), -132f), -12106i), vec3<i32>(func_3(Struct_1(true, arg_0), 4294967295u, vec4<f32>(-741f, 1000f, -318f, -532f), 176f), ~(-2147483647i), 7428i))), select(vec4<bool>(all(!vec4<bool>(false, var_0.b.x, false, true)), false, true, 0u < u_input.c.x), var_0.b, !arg_0));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = any(arg_3.b.xxx);
    global0 = abs(~1i);
    var var_1 = max(func_3(arg_3, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, arg_0, arg_0), _wgslsmith_div_u32(arg_0, arg_0), ~arg_0), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1724f, 1000f, -352f, -443f))), 543f) | 4199i, 1i);
    let var_2 = func_2(arg_3.b, min(vec3<i32>(0i, u_input.a, u_input.a), abs(~(~vec3<i32>(-1i, 0i, arg_1)))));
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(760f, -300f)) * -1312f))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(u_input.d | (1u << (_wgslsmith_mod_u32(11378u, u_input.c.x) % 32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-23265i, u_input.a), u_input.a) >> (~(~u_input.b.x) % 32u), true, func_2(arg_0.b, abs(vec3<i32>(0i, u_input.a, u_input.a)) ^ vec3<i32>(-2147483647i, u_input.a, u_input.a)))));
    var var_1 = true;
    var_1 = arg_0.a;
    global0 = u_input.a;
    var_1 = arg_0.b.x;
    return vec4<bool>(!(!(any(arg_0.b.zzw) & !arg_0.b.x)), any(arg_0.b.xy), arg_0.a, !(0u < _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.b.x), _wgslsmith_mult_u32(u_input.c.x, 88299u))));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~12i;
    var var_1 = Struct_1(arg_1.b.x, vec4<bool>(arg_1.a, arg_1.a, any(func_2(arg_1.b, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, arg_3.x), arg_3)).b), !(reverseBits(u_input.b.x) == firstLeadingBit(arg_2.x))));
    var var_2 = var_1.a && !(false || all(var_1.b.xy));
    var var_3 = arg_3.x;
    var var_4 = func_2(!vec4<bool>(any(!var_1.b), false, func_4(Struct_1(true, vec4<bool>(true, arg_1.b.x, arg_1.a, arg_1.a)), Struct_1(var_1.b.x, vec4<bool>(arg_1.a, true, true, false)), arg_0, arg_3), arg_0 < arg_0), vec3<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-28846i, u_input.a)), arg_3.xx), (-arg_3.x >> (~u_input.b.x % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.c, ~arg_2) % 32u), reverseBits(u_input.a)));
    return -1002f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(184f - -854f) + -519f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-907f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)), false))), _wgslsmith_f_op_f32(func_6(1103f, Struct_1(true, func_1(Struct_1(true, vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -416f))), ~u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, 2147483647i, 25802i)) & _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, -1i, -1i), abs(vec3<i32>(u_input.a, -7889i, u_input.a))))));
    let var_1 = u_input.c.x;
    let var_2 = ~firstLeadingBit(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(-1301f)), 766f, _wgslsmith_f_op_f32(808f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f + 1495f) * -1504f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) + 1000f))), ~var_1, select(_wgslsmith_div_vec4_u32(vec4<u32>(abs(1u), u_input.b.x | 0u, var_1, 1u ^ var_2), vec4<u32>(1501u, u_input.d, u_input.d, var_2)), ~(min(vec4<u32>(u_input.c.x, u_input.d, u_input.b.x, 17747u), vec4<u32>(var_2, 53078u, var_1, u_input.b.x)) ^ select(vec4<u32>(u_input.c.x, var_1, 20721u, 74706u), vec4<u32>(17614u, var_2, 68638u, 96918u), vec4<bool>(false, true, true, false))), !all(vec2<bool>(true, true))));
}

