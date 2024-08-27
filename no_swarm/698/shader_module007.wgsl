struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x << (25910u % 32u), 17921i, 20318i >> (1u % 32u)), select(vec3<i32>(1i, u_input.a.x, u_input.a.x), -vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<bool>(true, true, true))), ~(~(-u_input.a.x))), vec2<i32>(_wgslsmith_mod_i32(reverseBits(u_input.a.x), u_input.a.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(-1i), i32(-1i) * -12442i))));
    var var_1 = 1i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 557f, 1219f, 692f) - vec4<f32>(1111f, -1170f, -1551f, 1224f)), _wgslsmith_div_vec4_f32(vec4<f32>(950f, 1051f, -578f, -1230f), vec4<f32>(636f, 487f, -634f, 1494f)))))), vec2<i32>(~(~(-2147483647i ^ var_0.x)), var_0.x), 959f);
    var var_3 = var_2.c;
    var var_4 = Struct_2(Struct_1(var_2.a, vec2<i32>(u_input.a.x, ~select(var_2.b.x, var_0.x, false)), var_2.a.x), select(vec4<bool>(all(vec2<bool>(true, true)), select(false, false, true) | any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec4<bool>(true && any(vec3<bool>(false, true, false)), false, true, -var_0.x != 50772i), select(vec4<bool>(true, all(vec2<bool>(false, true)), select(true, true, false), true), vec4<bool>(true, true, true, true), select(true, true, true))), max(vec4<i32>(min(var_0.x, 1i) >> (4294967295u % 32u), -2147483647i, var_0.x, -28042i), vec4<i32>(var_2.b.x, var_0.x, var_0.x, var_0.x)), -(-_wgslsmith_dot_vec3_i32(vec3<i32>(-11617i, var_0.x, -64494i), vec3<i32>(u_input.a.x, var_0.x, var_2.b.x)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 8376u, arg_0.x), u_input.b.xyz) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1651f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_4.a.a.x, var_2.a.x))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(993f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2930f) * _wgslsmith_f_op_f32(f32(-1f) * -2294f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) + _wgslsmith_f_op_f32(909f * 1000f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-709f, 136f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -553f))) * _wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(ceil(-619f))))));
    var_0 = _wgslsmith_div_f32(1427f, _wgslsmith_f_op_f32(1073f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-1655f - _wgslsmith_f_op_f32(f32(-1f) * -2383f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-673f, -309f, _wgslsmith_f_op_f32(func_3(u_input.d)), _wgslsmith_f_op_f32(func_3(u_input.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2116f, 208f, -945f, 621f) + _wgslsmith_div_vec4_f32(vec4<f32>(-861f, 732f, 627f, -342f), vec4<f32>(504f, -1710f, 1757f, 747f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(290f, _wgslsmith_f_op_f32(449f + -1733f), _wgslsmith_f_op_f32(f32(-1f) * -433f), -558f), vec4<f32>(-408f, _wgslsmith_f_op_f32(func_3(u_input.d)), _wgslsmith_f_op_f32(1000f * -399f), 1f))), ~vec2<i32>(select(u_input.a.x << (u_input.c % 32u), -u_input.a.x, true), -u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(891f)), _wgslsmith_f_op_f32(-1454f * 384f)) * -404f)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -158f, -733f, var_1.a.x))))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.b, var_1.b, vec2<i32>(-2147483647i, -23981i)), abs(vec2<i32>(2131i, 25687i)), vec2<i32>(u_input.a.x, u_input.a.x) & var_1.b), vec2<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), -1i >> (0u % 32u))), 286f), vec4<bool>(false, !any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), true), ~vec4<i32>(-var_1.b.x, 1i, -u_input.a.x | select(2147483647i, -51784i, false), ~_wgslsmith_mod_i32(44465i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(27397i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.a.x, var_1.b.x, 2147483647i), vec4<i32>(var_1.b.x, var_1.b.x, 0i, 0i)), -1i), -vec4<i32>(var_1.b.x, var_1.b.x >> (u_input.c % 32u), 2147483647i, u_input.a.x)));
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.b.x;
    var var_1 = (countOneBits(~firstLeadingBit(u_input.b)) & countOneBits(vec4<u32>(u_input.d.x, firstTrailingBit(u_input.b.x), ~0u, u_input.d.x))) << (u_input.b % vec4<u32>(32u));
    let var_2 = func_2();
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, ~u_input.c), ~55495u);
    var_1 = vec4<u32>(~(~4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.xx, var_1.ww), var_1.x, ~(~(~_wgslsmith_dot_vec3_u32(var_1.xzy, var_1.xwz))));
    return arg_0.a.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.wyx;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -814f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(func_2(), arg_0.b, arg_0.c, _wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(arg_0.a.b.x, u_input.a.x, 6031i, 34103i))), Struct_2(func_2(), !vec4<bool>(arg_0.b.x, arg_0.b.x, true, false), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_1.b.x, arg_1.b.x, 1i), vec4<i32>(arg_1.b.x, 0i, 1i, -59917i), arg_0.c), ~arg_0.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c, -749f, arg_2.x, 792f))), ~arg_1.b, _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.d.x, u_input.c) | u_input.d)) - _wgslsmith_f_op_f32(-func_2().a.x))), func_2().c);
    let var_1 = arg_2.x;
    var_0 = vec3<f32>(arg_1.a.x, -916f, -488f);
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.wyz);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2163f + -1000f), _wgslsmith_f_op_f32(-935f - -1000f)), _wgslsmith_div_f32(-567f, arg_0.a.c), arg_0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f), 1620f)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.c.x, 2147483647i)), ~u_input.a << (~u_input.d % vec2<u32>(32u))), _wgslsmith_f_op_f32(-1113f - _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<f32>(-317f, -771f, arg_0.a.a.x, -833f), vec2<i32>(u_input.a.x, -1i), -1051f), arg_0.b, vec4<i32>(-16735i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), arg_0, Struct_1(vec4<f32>(639f, arg_0.a.c, arg_0.a.c, -1973f), arg_0.c.zz, arg_0.a.a.x))))), select(!(!(!vec4<bool>(true, arg_0.b.x, true, true))), arg_0.b, select(arg_0.b, arg_0.b, arg_0.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 48426i, abs(firstTrailingBit(u_input.a.x)), func_1(arg_0, func_2(), arg_0.a.a).b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.c ^ arg_0.c, ~arg_0.c), u_input.a.x, arg_0.d, _wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), arg_0.a.b.x, max(12413i, -2080i)))), 0i);
    var_0 = Struct_2(Struct_1(arg_0.a.a, arg_0.a.b, -1599f), arg_0.b, vec4<i32>(_wgslsmith_mult_i32(~0i, ~_wgslsmith_clamp_i32(u_input.a.x, 42137i, var_0.a.b.x)), arg_0.a.b.x, 0i, ~reverseBits(_wgslsmith_dot_vec2_i32(var_0.c.zw, var_0.a.b))), firstTrailingBit(_wgslsmith_mult_i32(~(-26989i), -61131i)));
    var_0 = Struct_2(func_2(), select(!var_0.b, vec4<bool>(any(var_0.b.wx), true, true, true), !var_0.b.x), vec4<i32>(min(reverseBits(firstTrailingBit(26149i)), _wgslsmith_clamp_i32(1i, u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 9108i))), ~arg_0.c.x, arg_0.d << (~27441u % 32u), _wgslsmith_mult_i32(2562i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -16131i), max(vec2<i32>(-2147483647i, u_input.a.x), arg_0.a.b)))), arg_0.c.x);
    var_0 = Struct_2(arg_0.a, !vec4<bool>(!any(vec4<bool>(true, false, arg_0.b.x, var_0.b.x)), arg_0.b.x, false, var_0.b.x), firstLeadingBit(select(arg_0.c, vec4<i32>(-13041i, var_0.a.b.x, 10028i, -11864i) >> (u_input.b % vec4<u32>(32u)), arg_0.b.x) ^ -vec4<i32>(2147483647i, -2147483647i, var_0.c.x, -15389i)), func_2().b.x);
    var_0 = arg_0;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(all(vec3<bool>(true, true, false)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), any(vec3<bool>(true, true, true))));
    var_0 = !vec2<bool>(~0u <= max(min(u_input.b.x, u_input.b.x), 4294967295u), any(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true))));
    var_0 = vec2<bool>(!var_0.x, var_0.x & false);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-692f, _wgslsmith_f_op_f32(min(229f, 316f)), _wgslsmith_f_op_f32(-316f - -1487f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, -1321f, -584f) * vec3<f32>(321f, 360f, -619f)))) + vec3<f32>(_wgslsmith_f_op_f32(-1126f - -854f), -177f, _wgslsmith_f_op_f32(f32(-1f) * -964f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1153f, 1000f, 1855f) + vec3<f32>(1000f, -2278f, -830f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, 1165f, 226f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1022f, -673f, 479f))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), var_2.x));
    let var_4 = vec4<i32>(u_input.a.x >> ((select(min(u_input.c, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.zzz), true) << (1u % 32u)) % 32u), 0i, -6893i, func_5(Struct_2(func_1(Struct_2(Struct_1(vec4<f32>(var_2.x, 1614f, var_2.x, var_2.x), vec2<i32>(1i, u_input.a.x), -3547f), vec4<bool>(var_0.x, true, var_0.x, true), vec4<i32>(-4202i, -11530i, u_input.a.x, u_input.a.x), -39107i), Struct_1(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec2<i32>(u_input.a.x, u_input.a.x), -1447f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -432f, -940f, var_2.x)))), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), -_wgslsmith_div_vec4_i32(vec4<i32>(1892i, u_input.a.x, 19284i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, 28468i, u_input.a.x)), u_input.a.x), 22420u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -835f), 477f, select(true, var_0.x, var_0.x)))))), u_input.d);
}

