struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec2<f32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(274f, -1664f, 665f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, -514f, 1008f))))), 198f, Struct_1(vec3<i32>(u_input.a, firstLeadingBit(u_input.a & -32258i), ~u_input.a), 5869i, _wgslsmith_f_op_f32(step(126f, _wgslsmith_f_op_f32(1f * -1000f)))), Struct_1(firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, -2147483647i, u_input.a), vec3<i32>(0i, u_input.a, u_input.a), true), vec3<i32>(14097i, -25562i, 2147483647i) & vec3<i32>(u_input.a, u_input.a, 2147483647i))), u_input.a, -1000f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -563f, var_0.b, -174f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1816f, -1220f, 1022f, 1750f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-611f, var_0.a.x, true)), var_0.c.c, _wgslsmith_f_op_f32(-var_0.b), 279f), _wgslsmith_f_op_vec4_f32(vec4<f32>(844f, 1973f, -934f, -1283f) * vec4<f32>(-1135f, var_0.c.c, var_0.a.x, var_0.c.c)), vec4<bool>(true, true, any(vec2<bool>(false, false)), true))))));
    return -566f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1578f, -1006f, -1650f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1325f + 192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1672f) - 1f))), Struct_1(vec3<i32>(-30514i, u_input.a, u_input.a) >> (vec3<u32>(1u, arg_0.x, 4294967295u) % vec3<u32>(32u)), u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-833f * -1068f)))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-25505i, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, -1i)), u_input.a, _wgslsmith_f_op_f32(func_3()))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.a)), var_0.a.a.x, Struct_1(var_0.a.c.a >> (vec3<u32>(0u & arg_0.x, _wgslsmith_add_u32(arg_0.x, 0u), u_input.b) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(var_0.a.d.a.yy, var_0.a.c.a.zz | _wgslsmith_div_vec2_i32(var_0.a.d.a.zy, var_0.a.c.a.zx)), _wgslsmith_f_op_f32(-var_0.a.c.c)), var_0.a.c);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = 4458u;
    let var_1 = Struct_5(func_2(_wgslsmith_mult_vec4_u32(abs(arg_1), vec4<u32>(1065u, arg_1.x, ~21731u, 37486u)), vec2<bool>(true == (arg_2.a.a.x == 1036f), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))))));
    return func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(arg_1.x), 0u), firstTrailingBit(64768u), 90548u, 0u), vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, arg_1.wzy), u_input.b, u_input.c.x, ~arg_1.x)), select(vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(arg_2.a.a.x + -2031f) > _wgslsmith_f_op_f32(507f + var_1.a.c.c)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(870f * _wgslsmith_f_op_f32(arg_1.b.x - 759f)))), _wgslsmith_f_op_f32(-arg_1.b.x), -1001f), Struct_3(Struct_2(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(303f + arg_1.a.d.c), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) * arg_1.a.b), func_1(Struct_4(vec3<f32>(arg_1.b.x, arg_1.a.c.c, arg_1.a.d.c), Struct_3(arg_1.a, vec2<f32>(arg_1.b.x, arg_1.a.d.c)), vec2<f32>(-378f, -568f), -1i), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), Struct_5(Struct_2(arg_1.a.a, arg_1.a.c.c, arg_1.a.d, arg_1.a.c))).d, arg_1.a.c), arg_1.a.a.zy), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.b - vec2<f32>(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-686f, arg_1.b.x), vec2<f32>(441f, arg_1.b.x), false))))))), reverseBits(1i));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a.a, var_0.b.a.a) + arg_1.a.a) * _wgslsmith_f_op_vec3_f32(trunc(var_0.a)))), var_0.b, _wgslsmith_f_op_vec2_f32(min(var_0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zz * vec2<f32>(var_0.a.x, 845f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.c, arg_1.a.c.c))), _wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(abs(var_0.b.b))), vec2<bool>(true, true))))), 1i);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(22302i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(arg_0.x, var_1.b.a.d.b)), _wgslsmith_mult_vec2_i32(arg_1.a.d.a.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.c.a.x, -7664i), arg_0)))), _wgslsmith_clamp_vec2_i32(arg_1.a.d.a.xy, ~firstTrailingBit(vec2<i32>(52545i, var_1.b.a.c.b)), max(-firstTrailingBit(vec2<i32>(var_0.b.a.d.a.x, var_1.b.a.d.a.x)), _wgslsmith_sub_vec2_i32(var_0.b.a.c.a.zx, countOneBits(var_1.b.a.c.a.zz)))));
    var_0 = var_1;
    let var_3 = var_0.b.a.c;
    return var_1;
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = false;
    let var_1 = -select(arg_0.a.c.a | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 15364i, u_input.a), arg_2.b.a.d.a), countOneBits(countOneBits(-vec3<i32>(arg_2.b.a.c.a.x, -55860i, 1i))), !(_wgslsmith_sub_i32(1i, arg_0.a.d.a.x) >= u_input.a));
    var_0 = all(vec2<bool>(true && all(vec3<bool>(false, false, false)), true));
    let var_2 = arg_0.a.c;
    let var_3 = !all(vec3<bool>(true, true, true));
    return !(all(vec2<bool>(var_3, false)) | !var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1232f < _wgslsmith_f_op_f32(ceil(-203f));
    var_0 = func_5(Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1211f, -1065f, -1234f) - vec3<f32>(-962f, -274f, -1733f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1946f)), Struct_1(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 45031i)), u_input.a, _wgslsmith_f_op_f32(709f * -1000f)), Struct_1(vec3<i32>(0i, 0i, -2147483647i) & vec3<i32>(12363i, u_input.a, u_input.a), reverseBits(0i), -401f))), _wgslsmith_f_op_f32(max(191f, _wgslsmith_f_op_f32(round(1350f)))), func_4(vec2<i32>(~u_input.a << (6078u % 32u), _wgslsmith_clamp_i32(-u_input.a, firstLeadingBit(-178i), u_input.a)), Struct_3(func_1(Struct_4(vec3<f32>(361f, -1183f, 809f), Struct_3(Struct_2(vec3<f32>(608f, -1000f, -577f), -1278f, Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), -67002i, -314f), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), -92292i, 1025f)), vec2<f32>(674f, -1480f)), vec2<f32>(246f, -1042f), u_input.a), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), Struct_5(Struct_2(vec3<f32>(-1000f, 395f, -353f), 863f, Struct_1(vec3<i32>(u_input.a, 0i, -1i), -1i, -1673f), Struct_1(vec3<i32>(2147483647i, u_input.a, 2147483647i), -5270i, -197f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(select(336f, -470f, false))))), 59328u);
    var var_1 = -488f;
    let var_2 = i32(-1i) * -2082i;
    let var_3 = func_4(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, -1690i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -25409i), vec2<i32>(2147483647i, u_input.a), vec2<i32>(-46487i, -17390i))), vec2<i32>(-2147483647i, ~0i)) | select(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2, -1i), vec2<i32>(var_2, var_2)), -vec2<i32>(12678i, 0i)), select(vec2<i32>(29385i, var_2), vec2<i32>(u_input.a, var_2), true), (u_input.a >= -587i) && false), func_4(abs(vec2<i32>(1i, var_2)) & -vec2<i32>(0i, -2147483647i), func_4(vec2<i32>(-52903i, -11596i) ^ reverseBits(vec2<i32>(7064i, u_input.a)), func_4(~vec2<i32>(0i, var_2), Struct_3(Struct_2(vec3<f32>(1448f, 1000f, 490f), -1536f, Struct_1(vec3<i32>(var_2, 30766i, u_input.a), 1i, 1044f), Struct_1(vec3<i32>(u_input.a, u_input.a, -1i), u_input.a, 558f)), vec2<f32>(-149f, -1000f))).b).b).b).b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_mult_i32(-(var_2 ^ _wgslsmith_add_i32(2199i, 5264i)), select(0i, var_2, false) << (select(u_input.c.x, 16116u & u_input.b, all(vec2<bool>(false, true))) % 32u)));
}

