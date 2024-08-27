struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = ~reverseBits(firstLeadingBit(max(vec2<i32>(24565i, -38454i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.b)))));
    var var_1 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(var_0.x, u_input.a), -74407i);
    var var_2 = Struct_3(vec2<i32>(u_input.a, -2147483647i), select(!vec4<bool>(false, true, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), !select(false, all(vec4<bool>(false, true, false, true)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(406f, 395f, -1291f, 196f)))))), Struct_2(vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.c.wz, var_2.c.zw)), _wgslsmith_f_op_vec2_f32(abs(var_2.c.zw))), var_2.c.xy))));
    var_0 = var_2.a;
    return var_2.d.a.x & !select(any(select(vec2<bool>(var_2.b.x, var_2.b.x), var_2.d.a.xz, false)), _wgslsmith_f_op_f32(-var_3.x) == _wgslsmith_f_op_f32(f32(-1f) * -2222f), true);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), true), u_input.b);
    let var_1 = Struct_3(vec2<i32>(u_input.a, min(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b, u_input.b), vec2<i32>(10480i, 1i)), abs(vec2<i32>(2147483647i, 0i))))), vec4<bool>(func_3(), !var_0.a.x, true, all(vec2<bool>(all(var_0.a), all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1677f, -1994f, 1030f, 657f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-508f, -963f, -942f, -656f))))))), Struct_2(!(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x))));
    var var_2 = -979f;
    var_2 = -763f;
    var var_3 = 0i;
    return Struct_4(var_1.a);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_4(vec2<i32>(-2147483647i, -18200i));
    var_0 = func_2();
    var var_1 = Struct_3(min(_wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(_wgslsmith_clamp_i32(arg_0, arg_0, -39993i), 1i)), var_0.a), vec4<bool>(true, true, select(!any(vec3<bool>(false, true, false)), false, true), _wgslsmith_div_f32(arg_1, arg_1) < 173f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-610f, arg_1, arg_1, arg_1), vec4<f32>(526f, -1130f, arg_1, -218f))), vec4<f32>(arg_1, -154f, arg_1, 622f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, arg_1, arg_1, -1405f) * vec4<f32>(arg_1, arg_1, -1870f, arg_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-899f, arg_1, 769f, arg_1), vec4<f32>(arg_1, arg_1, 2536f, arg_1))))), Struct_2(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), true), vec3<bool>(func_3(), true, true), countOneBits(u_input.c) < ~2541u)));
    var_0 = Struct_4(~vec2<i32>(14483i, ~(var_1.a.x ^ var_0.a.x)));
    let var_2 = func_2();
    return Struct_3(firstLeadingBit(countOneBits(vec2<i32>(-39495i, -1i))), !var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.c), Struct_2(vec3<bool>(_wgslsmith_f_op_f32(min(712f, 1000f)) < arg_1, var_1.d.a.x, all(var_1.b.ywy))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = -42026i;
    var var_1 = vec3<i32>(-9450i, -44419i, u_input.a);
    var var_2 = vec2<u32>(4294967295u, arg_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_2.c.yz);
    var var_4 = Struct_5(func_1(-arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f), 1610f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -727f))))).c.x, Struct_4(_wgslsmith_sub_vec2_i32(countOneBits(var_1.xx), ~vec2<i32>(19794i, 6509i))), Struct_4(vec2<i32>(abs(-15841i), (u_input.b >> (arg_0 % 32u)) | ~(-1i))), Struct_4(_wgslsmith_sub_vec2_i32(abs(arg_1.a & vec2<i32>(1i, var_0)), reverseBits(~var_1.zy))));
    return Struct_1(vec2<bool>(any(select(!vec4<bool>(arg_1.d.a.x, arg_1.d.a.x, false, false), vec4<bool>(false, arg_1.b.x, false, false), vec4<bool>(false, true, arg_2.b.x, true))), all(vec2<bool>(all(arg_1.b.ywx), !arg_1.b.x))), countOneBits(-5719i << (_wgslsmith_add_u32(141u, ~arg_0) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(~(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 25299u, u_input.c), vec4<u32>(1u, u_input.c, 103501u, u_input.c)), ~vec4<u32>(0u, 1u, u_input.c, 49815u))), ~abs(~vec4<u32>(66578u, u_input.c, 0u, u_input.c)));
    let var_1 = func_2();
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(arg_2.d.a.x, min(-arg_2.c.a.x, -21112i)) & (65529i >> (var_0.x % 32u)), -33623i, func_2().a.x & 2147483647i, -1i);
    var var_3 = Struct_5(-1747f, arg_2.b, arg_2.c, func_2());
    var var_4 = arg_2.c;
    return Struct_2(func_1(var_2.x, var_3.a).b.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(u_input.c, func_1(_wgslsmith_div_i32(u_input.a, select(u_input.b, 53234i, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) * _wgslsmith_f_op_f32(round(-1501f)))), func_1(_wgslsmith_sub_i32(-u_input.b, -u_input.a), func_1(2147483647i, -422f).c.x)), -u_input.a, Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-647f + 115f))) - -300f), func_2(), func_2(), Struct_4(vec2<i32>(~u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a)))));
    var_0 = Struct_2(!(!select(select(vec3<bool>(false, var_0.a.x, true), var_0.a, var_0.a.x), !var_0.a, true)));
    let var_1 = _wgslsmith_f_op_f32(1101f * _wgslsmith_f_op_f32(step(-582f, _wgslsmith_f_op_f32(-1f))));
    var var_2 = Struct_1(var_0.a.zx, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, countOneBits(countOneBits(u_input.a)), u_input.a), -min(vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-14560i, u_input.a, 30656i, u_input.b), vec4<i32>(-46005i, 2147483647i, -30343i, -1i), vec4<i32>(-1i, -362i, u_input.b, -2147483647i)))));
    let var_3 = func_4(4294967295u, func_1(firstLeadingBit((-2147483647i & u_input.b) >> (1u % 32u)), var_1), func_1(~var_2.b, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1, -1311f)))))));
    var_0 = Struct_2(vec3<bool>(all(!func_1(1i, 262f).b.wy), (_wgslsmith_f_op_f32(round(488f)) < var_1) & var_3.a.x, -2097f < _wgslsmith_div_f32(-1874f, _wgslsmith_f_op_f32(-var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(49996u, u_input.c), u_input.c, ~u_input.c << (~0u % 32u), 7257u), vec4<u32>(~1u, u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 20290u, 55503u), vec3<u32>(4294967295u, 96497u, u_input.c)), ~countOneBits(u_input.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))) + _wgslsmith_div_f32(956f, _wgslsmith_f_op_f32(-var_1))))), -906f, vec2<i32>(0i, var_3.b));
}

