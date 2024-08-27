struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_5(Struct_1(u_input.a), Struct_1(arg_1.a), select(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, u_input.a), countOneBits(-vec2<i32>(arg_1.a, arg_1.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_clamp_i32(0i, arg_1.a, 18861i)), vec2<i32>(_wgslsmith_mult_i32(0i, u_input.a), 1i)), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false))), arg_1, Struct_3(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0, arg_0))))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.e.a)) > -861f;
    let var_2 = arg_1.a;
    var var_3 = var_0.e;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1169f)));
    return var_0.e.b.xx;
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true | any(vec4<bool>(true, true, true, true))), all(select(vec2<bool>(true, true), !func_3(1191f, Struct_1(u_input.a)), any(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_dot_vec4_i32(max(-vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) >> (countOneBits(vec4<u32>(1u, 62924u, 15370u, 21401u)) % vec4<u32>(32u)), reverseBits(countOneBits(vec4<i32>(u_input.a, -2147483647i, u_input.a, 41879i)))), reverseBits(-select(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a), true))) << (~firstLeadingBit(_wgslsmith_div_u32(~6785u, ~0u)) % 32u);
    var_1 = 40722i;
    var_0 = select(select(select(!(!vec2<bool>(var_0.x, true)), !vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)))), select(vec2<bool>(true, all(vec4<bool>(false, var_0.x, true, false))), vec2<bool>(true, var_0.x), !var_0.x), !var_0.x), vec2<bool>(true, !var_0.x), var_0.x);
    var_1 = -max(abs(u_input.a), u_input.a);
    return Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a, -1i)), select(vec2<bool>(true, true), vec2<bool>(var_0.x, !var_0.x), vec2<bool>(!var_0.x || (var_0.x & false), any(!vec4<bool>(true, false, true, var_0.x)))), Struct_1(-1i), !vec3<bool>(false, any(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))), select(!select(!vec4<bool>(arg_2.x, true, true, true), vec4<bool>(arg_0.d.x, false, false, false), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(arg_0.d.x, arg_0.b.x, arg_2.x, true), vec4<bool>(arg_2.x, true, true, arg_2.x))), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_1.b < u_input.a, arg_2.x), !vec4<bool>(all(arg_2), !arg_0.b.x, any(arg_0.d), arg_2.x)));
    let var_1 = -vec2<i32>(-2147483647i, u_input.a >> (~firstTrailingBit(4618u) % 32u));
    var var_2 = false;
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_i32(~arg_1.c.a, ~arg_0.a.a) & _wgslsmith_sub_i32(~arg_0.c.a, _wgslsmith_mult_i32(var_1.x, 1i))), select(func_3(-321f, func_2().c), !func_3(_wgslsmith_f_op_f32(var_0.a + arg_1.a.x), Struct_1(var_1.x)), arg_0.b), arg_1.c, func_2().d);
    var var_4 = arg_1.a.xxx;
    return Struct_1(~var_3.a.a);
}

fn func_1() -> Struct_5 {
    return Struct_5(Struct_1(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(u_input.a, -54267i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(49889i, 1i)), ~vec2<i32>(u_input.a, u_input.a)))), func_4(func_2(), Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 2144f, -104f, 389f), vec4<f32>(103f, -382f, 195f, -313f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(864f, 486f, 146f, -1281f) * vec4<f32>(174f, 1941f, -679f, -440f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), -firstLeadingBit(u_input.a), func_2().c), !func_2().d.yx), ~(firstTrailingBit(vec2<i32>(3365i, u_input.a) ^ vec2<i32>(-29744i, 62867i)) ^ ~vec2<i32>(2147483647i, 1i)), Struct_1(u_input.a), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(1432f + -1368f))), vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), false)));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_5) -> vec2<i32> {
    let var_0 = vec2<u32>(31380u, countOneBits(reverseBits(arg_1)) ^ arg_1);
    let var_1 = arg_0.x ^ arg_1;
    var var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2446f + _wgslsmith_f_op_f32(select(-1000f, -2933f, arg_3.e.b.x))) * 1369f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(945f)) * -1000f)))), arg_3.b).x;
    var_2 = func_3(_wgslsmith_f_op_f32(floor(654f)), arg_3.b).x;
    var var_3 = _wgslsmith_div_f32(arg_3.e.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_3.e.a)))));
    return vec2<i32>(i32(-1i) * -abs(_wgslsmith_mult_i32(arg_2.x, arg_2.x)), ~arg_2.x);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    let var_0 = vec2<bool>(true, func_1().e.b.x);
    let var_1 = ~vec2<i32>(arg_0.b, arg_0.b);
    var var_2 = func_2();
    let var_3 = var_2.d.x;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, -1689f, -1000f, -1177f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(504f, -581f, 557f, 229f) + vec4<f32>(1602f, -129f, -1030f, 488f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-376f, 672f, -928f, -906f), vec4<f32>(667f, -248f, -205f, 343f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(3655i, -1i), vec2<i32>(-1i, u_input.a)), func_5(max(vec3<u32>(1u, 87224u, 42461u), vec3<u32>(0u, 7767u, 50716u)), abs(4294967295u), countOneBits(vec3<i32>(u_input.a, u_input.a, 1i)), func_1())), Struct_1(~(u_input.a & 0i))));
    var var_1 = firstTrailingBit(vec2<u32>(~15120u, ~8932u));
    var_1 = vec2<u32>(~(~76025u), 2033u);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, -547f, 147f, -135f))))))));
    let var_3 = ~_wgslsmith_div_vec2_i32(select(~(-vec2<i32>(u_input.a, -29291i)), reverseBits(vec2<i32>(var_0.a, -1i)), false), reverseBits(vec2<i32>(var_0.a, 46120i)));
    var var_4 = func_2();
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - 2232f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1800f)));
    let var_6 = ~abs(firstTrailingBit(abs(20739u) >> (var_1.x % 32u)));
    var var_7 = 579f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(73488u, var_6), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(var_6, 0u), var_1.x), 28438u), ~1u), func_1().c, vec3<i32>(0i, _wgslsmith_mult_i32(min(countOneBits(-2147483647i), 4461i), -45917i), abs(-_wgslsmith_sub_i32(507i, var_3.x))), 16447i, _wgslsmith_f_op_vec3_f32(-var_2.zyy));
}

