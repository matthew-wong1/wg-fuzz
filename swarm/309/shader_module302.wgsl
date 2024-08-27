struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f * arg_0.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(194f)))))))));
    var var_1 = ~u_input.d.wyw;
    var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), ~min(u_input.d.xwz, vec3<u32>(var_1.x, arg_1, var_1.x))) >> (~(~(~firstTrailingBit(u_input.d.xxz))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(-u_input.a, abs(vec3<i32>(1i, u_input.a.x, u_input.c.x)))), i32(-1i) * -21842i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, u_input.c.x), firstLeadingBit(~u_input.a.x)), -22767i), _wgslsmith_mult_vec4_i32(-min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 18941i, -4982i, u_input.c.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -1i)), -vec4<i32>(u_input.a.x, u_input.a.x, 69429i, 22672i)), ~vec4<i32>(u_input.c.x, min(-2147483647i, -8556i), reverseBits(u_input.c.x), 51976i)));
    return all(select(vec3<bool>(all(!vec2<bool>(arg_2, false)), arg_2, true), !(!(!vec3<bool>(false, arg_2, false))), select(select(select(vec3<bool>(arg_2, false, false), vec3<bool>(false, arg_2, true), true), vec3<bool>(arg_2, arg_2, false), all(vec4<bool>(arg_2, false, true, arg_2))), vec3<bool>(all(vec2<bool>(false, false)), arg_2, true), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_2), true))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = !func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) * _wgslsmith_f_op_f32(ceil(1045f))), _wgslsmith_f_op_f32(-988f + -177f)), u_input.b, any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), 1000f);
    global0 = 269f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1680f - -1172f))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -701f);
    global0 = _wgslsmith_f_op_f32(round(1000f));
    return Struct_1(525f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a * arg_2.c.a);
    let var_1 = any(!(!select(select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(false, true), vec2<bool>(arg_2.b, arg_0), true))));
    let var_2 = -9045i;
    var var_3 = any(vec4<bool>(arg_2.b, arg_0, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, var_2), 9015i, var_2 | u_input.a.x) == _wgslsmith_mult_i32(select(0i, -17725i, true), u_input.a.x), false));
    var_3 = any(!vec4<bool>(max(u_input.b, u_input.d.x) > _wgslsmith_mult_u32(u_input.d.x, 50513u), !(arg_0 || false), false, true));
    return arg_1;
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_3(func_4(true, func_2(max(-2147483647i, u_input.c.x)), Struct_2(func_2(u_input.c.x), true, func_2(i32(-1i) * -2147483647i))), Struct_1(-1350f), Struct_2(func_4(all(vec3<bool>(true, true, true)), func_2(u_input.a.x), Struct_2(Struct_1(1000f), any(vec4<bool>(true, false, true, false)), func_2(u_input.c.x))), true, func_4(any(vec3<bool>(false, true, false)), Struct_1(_wgslsmith_f_op_f32(select(1000f, -1374f, true))), Struct_2(func_2(14947i), u_input.d.x <= 4294967295u, func_2(-2147483647i)))), vec4<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a), abs(vec3<i32>(u_input.c.x, -20242i, -11688i))) <= 0i, !select(true, false, false) | (~u_input.c.x < reverseBits(11489i)), false));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-864f)) * var_0.c.a.a);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))))));
    let var_1 = select(select(vec4<bool>(true, var_0.d.x, u_input.d.x <= 1u, false), !select(var_0.d, !vec4<bool>(var_0.c.b, false, true, false), var_0.d.x), var_0.d), select(!select(!vec4<bool>(var_0.c.b, var_0.d.x, true, var_0.c.b), var_0.d, true), vec4<bool>(var_0.d.x, _wgslsmith_f_op_f32(sign(var_0.a.a)) < _wgslsmith_f_op_f32(var_0.a.a + var_0.c.c.a), any(var_0.d.xzx), false), var_0.c.b), var_0.d.x);
    var var_2 = var_0;
    return u_input.a.xz;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = 576f;
    var var_0 = func_4(any(vec2<bool>(true, true)), func_4(u_input.a.x <= ~(-56648i), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2024f)), _wgslsmith_f_op_f32(111f - -853f)))), Struct_2(func_2(u_input.a.x), true, func_4(true, func_2(-2147483647i), Struct_2(Struct_1(-1567f), false, Struct_1(1789f))))), Struct_2(Struct_1(-937f), true, Struct_1(621f)));
    let var_1 = var_0.a;
    var var_2 = Struct_2(func_2(-2147483647i), all(vec4<bool>((12502i >> (0u % 32u)) <= firstTrailingBit(arg_1.x), true, !all(vec4<bool>(true, true, true, true)), true)), Struct_1(_wgslsmith_f_op_f32(round(-1191f))));
    let var_3 = u_input.d.x;
    return Struct_1(var_2.c.a);
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0.wx;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_3.a.a)), func_4(any(select(!arg_0.wzw, arg_0.zww, arg_3.b)), arg_3.a, Struct_2(arg_2, arg_3.b, arg_2)), Struct_2(func_4(79179i >= u_input.c.x, func_2(u_input.a.x << (u_input.d.x % 32u)), Struct_2(arg_3.a, arg_0.x, func_5(u_input.a.zx, vec2<i32>(-2147483647i, 1i)))), any(vec2<bool>(var_0.x, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.a - arg_2.a) + -233f))), vec4<bool>(arg_3.b, arg_1, false, arg_3.b));
    global0 = 132f;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1969f)), _wgslsmith_div_f32(-480f, _wgslsmith_f_op_f32(floor(func_5(~u_input.c, min(vec2<i32>(u_input.c.x, 0i), vec2<i32>(-2147483647i, u_input.c.x))).a))), func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(376f, 763f), vec2<f32>(310f, 490f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(767f, -1156f))))), abs(~11945u << (abs(u_input.d.x) % 32u)), !(u_input.d.x >= _wgslsmith_mult_u32(4294967295u, u_input.d.x)), arg_2.a)));
    global0 = func_4(var_1.d.x, var_1.c.a, Struct_2(func_2(firstTrailingBit(~u_input.a.x)), true, func_5(~vec2<i32>(-1i, u_input.a.x), vec2<i32>(i32(-1i) * -30581i, 2147483647i)))).a;
    return ~17867u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.yy;
    let var_1 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f * -715f) - _wgslsmith_f_op_f32(2389f - -1000f)) + -113f)));
    var var_2 = vec4<bool>(var_1, all(!vec4<bool>(true, true, any(vec2<bool>(var_1, var_1)), any(vec3<bool>(var_1, var_1, var_1)))), func_6(!vec4<bool>(var_1, var_1, true, true), false, func_5(func_1(), u_input.a.yy), Struct_2(func_4(var_1, Struct_1(1753f), Struct_2(Struct_1(-740f), var_1, Struct_1(1185f))), var_1, Struct_1(-670f))) >= abs(21949u), any(!(!vec4<bool>(true, true, var_1, var_1))));
    var var_3 = vec4<bool>(false, true, all(!var_2.wxz), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2581f, 266f), vec2<f32>(482f, 1348f), var_2.xz))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-647f, 1418f)))), 6570u, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1209f - 2287f), _wgslsmith_f_op_f32(f32(-1f) * -1990f))))));
    var var_4 = Struct_3(func_5(_wgslsmith_add_vec2_i32(vec2<i32>(abs(43747i), ~u_input.a.x), abs(vec2<i32>(u_input.c.x, -1i))), ~u_input.a.yz), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(134f)) + -1542f), 1f)), Struct_2(Struct_1(804f), !any(var_2.wyy), Struct_1(1f)), !vec4<bool>(false, true || var_2.x, (var_1 | true) & (var_1 | var_1), false));
    var var_5 = ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.d.x, var_0.x), u_input.d.ywy), var_0.x)) ^ 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-u_input.a.x, reverseBits(u_input.c.x)) ^ select(select(_wgslsmith_mult_i32(u_input.c.x, u_input.a.x), -u_input.a.x, func_3(vec2<f32>(-1989f, var_4.c.c.a), u_input.b, false, var_4.a.a)), _wgslsmith_sub_i32(~(-31727i), 1i), any(!var_4.d.zw)));
}

