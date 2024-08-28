struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(all(vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)), true | all(vec2<bool>(false, true)))), false);
    var var_2 = 1u;
    let var_3 = Struct_1(arg_0.a, firstTrailingBit(vec2<i32>(u_input.a.x, arg_0.b.x)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), (arg_2.d & arg_0.b) >> (vec2<u32>(arg_2.c.x, arg_2.c.x) % vec2<u32>(32u))), vec3<u32>(68333u, 7160u, _wgslsmith_sub_u32(arg_0.c.x, 0u)), _wgslsmith_div_vec2_i32((vec2<i32>(var_0.d.x, arg_0.b.x) << (vec2<u32>(0u, var_0.c.x) % vec2<u32>(32u))) ^ var_0.d, arg_2.d));
    var_2 = countOneBits(_wgslsmith_mod_u32(arg_2.c.x, var_0.c.x));
    return 1345f;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(640f))) - _wgslsmith_div_f32(-573f, _wgslsmith_div_f32(422f, 963f)))) - -810f);
    var var_1 = -282f;
    let var_2 = arg_0;
    var_0 = 1127f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-545f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(788f, _wgslsmith_f_op_f32(func_3(Struct_1(-645f, u_input.a.xx, vec3<u32>(30577u, 7191u, 38681u), u_input.a.xx), vec4<u32>(75998u, 4294967295u, 4294967295u, 4294967295u), Struct_1(1000f, vec2<i32>(u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, 50801u), vec2<i32>(u_input.a.x, u_input.a.x)))))) - _wgslsmith_f_op_f32(abs(2162f)))), -u_input.a.zz, select(~firstTrailingBit(vec3<u32>(0u, 4294967295u, 1u)) & select(_wgslsmith_clamp_vec3_u32(vec3<u32>(18538u, 0u, 4294967295u), vec3<u32>(56920u, 39778u, 57683u), vec3<u32>(8019u, 27175u, 47585u)), reverseBits(vec3<u32>(4294967295u, 99399u, 20826u)), any(vec2<bool>(var_2, var_2))), vec3<u32>(~1u, ~0u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(34338u, 1u)), reverseBits(firstLeadingBit(0u))), _wgslsmith_f_op_f32(round(250f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -766f), 1000f, !var_2))), ~min(max(vec2<i32>(u_input.a.x, 2119i), vec2<i32>(30813i, u_input.a.x) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), -(vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(6107u, 36171u) % vec2<u32>(32u)))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -63010i, u_input.a.x), vec3<i32>(u_input.a.x, -16331i, 83170i)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -68046i), vec4<i32>(2147483647i, 42478i, 0i, 2147483647i))), vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -1i), _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), -u_input.a.yx), abs(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 46655u, 17238u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 2403u), vec3<u32>(13844u, 1597u, 1u)), reverseBits(vec3<u32>(0u, 3206u, 4294967295u))), abs(countOneBits(vec3<u32>(17594u, 59843u, 20706u))))), u_input.a.zx);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 341f))), ~abs(~vec2<i32>(-2147483647i, 10481i)), reverseBits(vec3<u32>(18643u, _wgslsmith_sub_u32(var_0.c.x, 0u), 4294967295u) ^ var_0.c), _wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(-3405i, select(u_input.a.x, u_input.a.x, true))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), firstTrailingBit(u_input.a.x)));
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, 1755f, 265f, 1604f))), vec4<f32>(1003f, -586f, arg_1.x, -972f), true)), vec4<f32>(2894f, _wgslsmith_f_op_f32(f32(-1f) * -2755f), _wgslsmith_f_op_f32(ceil(418f)), _wgslsmith_f_op_f32(floor(-809f)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 807f, var_1.a, 1376f) - vec4<f32>(-440f, arg_1.x, 1910f, var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-456f, var_0.a, -1855f, arg_1.x), vec4<f32>(var_1.a, 828f, arg_1.x, 590f), vec4<bool>(true, true, arg_0.x, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 357f, 657f, 1000f))))))));
    let var_3 = _wgslsmith_f_op_f32(round(-2020f));
    return var_1;
}

fn func_1() -> f32 {
    let var_0 = func_4(vec2<bool>(!(!all(vec4<bool>(true, false, true, false))), !func_2(false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1096f, 1030f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-515f, -396f), vec2<f32>(1993f, -763f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-808f, -2285f), vec2<f32>(859f, -757f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1412f, -112f))))));
    var var_1 = Struct_1(var_0.a, firstTrailingBit(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(11937i, -7191i), var_0.b))), vec3<u32>(~(~var_0.c.x), ~var_0.c.x, _wgslsmith_sub_u32(~var_0.c.x, var_0.c.x)) & func_4(vec2<bool>(true, select(false, false, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a)))))).c, firstLeadingBit(u_input.a.yx) | vec2<i32>(-_wgslsmith_add_i32(1i, -1i), u_input.a.x));
    let var_2 = var_0;
    var var_3 = false;
    let var_4 = var_0.c.x;
    return -517f;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 23499i;
    let var_1 = 2147483647i;
    var var_2 = arg_0.yxy;
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(632f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_div_f32(arg_1.a, -1000f)), -386f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.yzw, arg_0.yyw)) + arg_0.wwz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.wyy)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.wzw)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, -1000f, 1062f), arg_0.www))), _wgslsmith_f_op_vec3_f32(vec3<f32>(146f, -1502f, arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -1185f, 592f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.zwy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -514f, _wgslsmith_f_op_f32(188f * var_2.x))), !vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), any(vec2<bool>(false, false)), !func_2(false))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(-666f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1505f)), _wgslsmith_f_op_f32(f32(-1f) * -1231f))), _wgslsmith_f_op_f32(func_3(Struct_1(-568f, u_input.a.zz, vec3<u32>(60135u, 73317u, 0u), vec2<i32>(1i, 14202i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 29721u, 44062u), vec4<u32>(0u, 0u, 36263u, 0u), vec4<u32>(5007u, 0u, 32008u, 169749u)), Struct_1(-371f, u_input.a.yy, vec3<u32>(1u, 0u, 4294967295u), u_input.a.zy)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1225f, -407f, 1683f, -210f), vec4<f32>(325f, -843f, 1616f, -927f), vec4<bool>(true, false, true, false))))))), func_4(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), vec2<bool>(false, true), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1404f)), 296f))));
    var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1397f, -550f))), 163f, _wgslsmith_f_op_f32(f32(-1f) * -857f), 1000f), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1436f), var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(var_0.a)))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-640f, var_0.a, var_0.a, var_0.a), vec4<f32>(var_0.a, var_0.a, -878f, var_0.a), false))), Struct_1(var_0.a, vec2<i32>(var_0.b.x, 17044i), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 3565u, 1u), vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c), countOneBits(u_input.a.yy)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a, 2275f)), vec2<i32>(-var_0.d.x, var_0.b.x) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.x, 31332u), var_0.c.xz) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(var_0.c.x, 53276u), 1u ^ var_0.c.x, var_0.c.x)), vec3<u32>(~(~0u), abs(~var_0.c.x), 35709u ^ ~var_0.c.x)), ~vec2<i32>(-abs(39728i), func_5(vec4<f32>(var_0.a, 395f, var_0.a, -1205f), Struct_1(var_0.a, var_0.b, vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), vec2<i32>(u_input.a.x, -2147483647i))).d.x));
    let var_2 = true;
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), -854f), reverseBits(u_input.a.zz), func_4(vec2<bool>(var_2, true), vec2<f32>(832f, var_1.a)).c, vec2<i32>(-countOneBits(-68959i) | _wgslsmith_sub_i32(var_1.d.x, var_0.d.x), var_1.b.x));
    var var_3 = func_4(select(!select(vec2<bool>(var_2, var_2), !vec2<bool>(var_2, var_2), !vec2<bool>(var_2, var_2)), !(!vec2<bool>(var_2, false)), select(vec2<bool>(true, true), vec2<bool>(!var_2, !var_2), var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1015f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, 377f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, var_1.a), vec2<f32>(734f, -569f))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.a)), 1033f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.a.x, 1i, 2147483647i), vec4<i32>(4131i, var_3.b.x, 2816i, -2147483647i))), ~(-87963i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, vec4<u32>(var_1.c.x, 1u, 4294967295u, 1u), var_1)) + _wgslsmith_f_op_f32(round(var_0.a))) * _wgslsmith_f_op_f32(select(-862f, func_4(vec2<bool>(var_2, false), vec2<f32>(var_3.a, var_1.a)).a, !var_2)))), _wgslsmith_mod_i32(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, var_3.d.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, var_3.b.x)), _wgslsmith_mod_i32(-2147483647i, var_3.d.x)), _wgslsmith_sub_i32(0i, 29490i)));
}

