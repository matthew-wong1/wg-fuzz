struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-771f, vec2<i32>(27258i, 1i)), Struct_1(1078f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-1000f, vec2<i32>(-13543i, 15441i)), Struct_1(-1643f, vec2<i32>(1i, -1i)), Struct_1(742f, vec2<i32>(2147483647i, -4891i)), Struct_1(1087f, vec2<i32>(1i, 46718i)), Struct_1(656f, vec2<i32>(-1i, 0i)), Struct_1(837f, vec2<i32>(2147483647i, 0i)), Struct_1(-1164f, vec2<i32>(6623i, -1i)), Struct_1(118f, vec2<i32>(18897i, -3765i)), Struct_1(-1553f, vec2<i32>(21659i, 33916i)), Struct_1(-499f, vec2<i32>(1i, 1i)), Struct_1(-1564f, vec2<i32>(-8519i, 2147483647i)), Struct_1(-1343f, vec2<i32>(76567i, i32(-2147483648))), Struct_1(-2077f, vec2<i32>(-32967i, i32(-2147483648))), Struct_1(-1369f, vec2<i32>(-16625i, 0i)), Struct_1(-575f, vec2<i32>(64788i, 2147483647i)), Struct_1(2175f, vec2<i32>(-40656i, -12852i)), Struct_1(100f, vec2<i32>(-34644i, 2147483647i)), Struct_1(1582f, vec2<i32>(-2458i, 2147483647i)), Struct_1(-607f, vec2<i32>(-2226i, 1i)), Struct_1(551f, vec2<i32>(11517i, 1i)), Struct_1(307f, vec2<i32>(2147483647i, -1i)), Struct_1(-532f, vec2<i32>(-50234i, 2147483647i)));

var<private> global1: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<f32> {
    global0 = array<Struct_1, 24>();
    let var_0 = select(true, arg_1, any(!(!vec3<bool>(true, false, arg_1))));
    var var_1 = Struct_1(-1667f, max(vec2<i32>(u_input.a, ~(i32(-1i) * -1i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), max(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a)) & ~vec2<i32>(29757i, u_input.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, -801f, 970f, -105f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, -461f, var_1.a, 705f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))))));
    var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(_wgslsmith_clamp_u32(8365u, arg_0, 57891u)) << (max(_wgslsmith_dot_vec2_u32(vec2<u32>(18447u, arg_0), vec2<u32>(14347u, arg_0)), _wgslsmith_add_u32(96146u, 20489u)) % 32u), u_input.e), 24u)];
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(141f, var_1.a, arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), var_2.x, _wgslsmith_f_op_f32(select(-962f, _wgslsmith_f_op_f32(round(var_2.x)), !any(vec2<bool>(false, false)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-608f, -1079f, 1116f, -373f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(1u, arg_0 != arg_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = firstTrailingBit(-1i);
    return _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-391f)) * -678f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.x)), true)))));
}

fn func_1() -> vec3<u32> {
    var var_0 = abs(abs(vec3<i32>(66461i >> (u_input.b.x % 32u), min(u_input.a, u_input.a), -(i32(-1i) * -2147483647i))));
    var var_1 = select(vec4<bool>((_wgslsmith_f_op_f32(func_2(false)) >= _wgslsmith_f_op_f32(floor(-696f))) == false, true, firstTrailingBit(-var_0.x) > u_input.a, false), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true & (u_input.b.x < 220u), true, all(vec3<bool>(false, false, false)))), true);
    var var_2 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1081f, -1486f))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(u_input.d.x, var_1.x)).x)), _wgslsmith_mod_vec2_i32(firstLeadingBit(var_0.xz), var_0.yy)), ~vec4<u32>(max(1u, 7111u), u_input.b.x, 1u, firstLeadingBit(32634u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1378f, -168f, -251f, 1985f), vec4<f32>(-1291f, -234f, 891f, -1703f), vec4<bool>(false, false, var_1.x, true))))))));
    var_2 = Struct_3(var_2.a);
    return _wgslsmith_mult_vec3_u32(var_2.a.c.zxy, _wgslsmith_add_vec3_u32(reverseBits(firstTrailingBit(var_2.a.c.wzz)) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.c.x, 65551u, u_input.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(48451u, 38498u, u_input.e), var_2.a.c.zzz)), reverseBits(~(~vec3<u32>(var_2.a.c.x, 4294967295u, u_input.c.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> i32 {
    global0 = array<Struct_1, 24>();
    var var_0 = -countOneBits(vec4<i32>(countOneBits(arg_0.a.b.b.x), _wgslsmith_sub_i32(-1i, select(u_input.a, 21481i, false)), 29637i, _wgslsmith_dot_vec3_i32(vec3<i32>(-92964i, 1i, 2778i) >> (u_input.b.xwx % vec3<u32>(32u)), -vec3<i32>(u_input.a, -2147483647i, -6932i))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(select(1956f, 975f, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(643f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.d.x, 344f, false)) - -2147f), var_0.xw), vec4<u32>(countOneBits(arg_1) >> (u_input.b.x % 32u), abs(50865u), arg_1, ~arg_1), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.a, arg_0.a.b.a, -711f, arg_0.a.d.x)))), false))));
    var_0 = -vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-32529i, -3784i)), ~vec2<i32>(u_input.a, arg_0.a.b.b.x)), 0i);
    let var_2 = arg_1;
    return countOneBits(_wgslsmith_sub_i32(-2147483647i & _wgslsmith_add_i32(~(-1i), firstLeadingBit(var_1.a.b.b.x)), ~(-18164i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -652f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(956f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1386f + -481f) + 1326f)))));
    let var_1 = vec3<i32>(-func_4(Struct_5(Struct_2(419f, Struct_1(619f, vec2<i32>(u_input.a, -2147483647i)), vec4<u32>(u_input.e, 4423u, u_input.d.x, 1u), vec4<f32>(-950f, -214f, 265f, -753f)), func_1()), _wgslsmith_sub_u32(u_input.b.x, 84211u)), ((-1i ^ reverseBits(u_input.a)) | u_input.a) << (abs(firstLeadingBit(_wgslsmith_sub_u32(49127u, u_input.e))) % 32u), _wgslsmith_mod_i32(-25480i, _wgslsmith_clamp_i32(u_input.a, ~u_input.a >> (37797u % 32u), u_input.a)));
    let var_2 = 1i >> (select(u_input.e, 122623u, (true && any(vec3<bool>(true, false, true))) || all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))) % 32u);
    let var_3 = all(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), abs(u_input.a) < -2683i), vec2<bool>(true, u_input.e == u_input.d.x)));
    var var_4 = vec2<u32>(max(~4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), min(u_input.e, 33913u))) >> (firstTrailingBit(~(60289u | u_input.d.x)) % 32u), _wgslsmith_mult_u32(~u_input.d.x, ~reverseBits(abs(u_input.b.x))));
    var var_5 = Struct_5(Struct_2(-442f, global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)], ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, 38907u, 4294967295u, var_4.x), vec4<u32>(83994u, var_4.x, u_input.c.x, var_4.x)) << (~(~u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(365f * 279f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(1184f, 742f, var_3)), 1000f) * vec4<f32>(_wgslsmith_f_op_f32(round(876f)), _wgslsmith_f_op_f32(f32(-1f) * -362f), -2144f, 382f))), u_input.c);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~42744u, !(true && var_3)))) - vec4<f32>(var_5.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-258f, -324f))), -596f, var_5.a.a));
    var var_7 = Struct_4(var_5.a, Struct_3(Struct_2(var_6.x, global0[_wgslsmith_index_u32(select(~var_5.b.x, var_4.x | var_4.x, false), 24u)], ~_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, var_5.a.c), vec4<f32>(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(var_5.a.b.a - -129f), var_5.a.a, _wgslsmith_f_op_f32(sign(var_6.x))))), Struct_2(_wgslsmith_f_op_f32(floor(613f)), var_5.a.b, vec4<u32>(~u_input.b.x, 17019u, 66482u, _wgslsmith_clamp_u32(var_5.a.c.x, 4294967295u, var_4.x) & var_5.b.x), vec4<f32>(_wgslsmith_f_op_f32(-439f - var_6.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, var_3)).x), _wgslsmith_f_op_f32(var_6.x - var_5.a.d.x), _wgslsmith_f_op_f32(227f * var_5.a.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-707f, var_6.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(func_2(true))) - 1831f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-759f * var_7.a.b.a), _wgslsmith_f_op_f32(var_7.c.d.x + 231f)))), _wgslsmith_dot_vec2_i32((~vec2<i32>(-22685i, 2147483647i) & var_1.zx) ^ abs(vec2<i32>(var_5.a.b.b.x, u_input.a) | vec2<i32>(1i, u_input.a)), var_7.b.a.b.b));
}

