struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_2(-arg_2.x, -(~(~min(u_input.a, arg_2.x))), Struct_1(all(vec3<bool>(false, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)))), true, vec3<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), any(vec2<bool>(true, true)))));
    return var_0.c.b;
}

fn func_2() -> Struct_1 {
    var var_0 = -611f;
    var_0 = _wgslsmith_f_op_f32(round(1041f));
    let var_1 = -(~max(select(reverseBits(vec4<i32>(72655i, u_input.a, -2147483647i, u_input.a)), countOneBits(vec4<i32>(u_input.a, 3622i, u_input.a, u_input.a)), true), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), select(vec4<i32>(0i, u_input.a, 26075i, -30220i), vec4<i32>(0i, 10681i, u_input.a, 2147483647i), true), vec4<i32>(2147483647i, 0i, 9929i, u_input.a))));
    let var_2 = Struct_1(all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_3(vec2<u32>(u_input.c.x, u_input.b), u_input.c.x, var_1.wz)), any(vec2<bool>(true, true)) & true)), true, !(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_3 = Struct_2(u_input.a, -67019i, Struct_1(true, true, var_2.c));
    return var_3.c;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_add_i32(u_input.a, 27112i), ~54214i, firstTrailingBit(u_input.a)), vec3<i32>(reverseBits(u_input.a), ~(1i ^ ~u_input.a), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(10169i, 18779i), vec2<i32>(29017i, 25297i)), countOneBits(u_input.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(356f, _wgslsmith_f_op_f32(select(613f, -326f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(354f, -456f)) - -571f)), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1941f, 188f, 420f, 588f) - vec4<f32>(-1076f, -872f, -1633f, 905f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1504f, 1211f, 181f, 149f), vec4<f32>(109f, -491f, 315f, 819f), vec4<bool>(arg_0.c.x, true, true, arg_0.a)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(392f, 175f, -462f, 533f), vec4<f32>(-1506f, -1036f, 916f, 813f)))))), func_2().c.x));
    let var_2 = func_2();
    let var_3 = var_2;
    var var_4 = Struct_3(var_0, select(~firstTrailingBit(-1i), _wgslsmith_mult_i32(-41325i, _wgslsmith_div_i32(firstLeadingBit(u_input.a), reverseBits(20933i))), true), reverseBits(36503i ^ firstTrailingBit(~0i)), true);
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(448f * 234f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -429f, true)))) - arg_0.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1075f, 644f, arg_2))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, true)) - arg_0.x));
    let var_1 = arg_0.yyw;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1457f * -1000f));
    return min(~vec3<i32>(u_input.a, 48279i, 0i), _wgslsmith_div_vec3_i32(~(-vec3<i32>(arg_1.b, 2147483647i, -2147483647i)), firstLeadingBit(firstTrailingBit(~vec3<i32>(arg_1.b, u_input.a, u_input.a)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = firstTrailingBit(u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(486f, -1837f, 507f, -257f))))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) * _wgslsmith_f_op_f32(sign(269f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f), _wgslsmith_f_op_f32(f32(-1f) * -348f)), -289f))));
    return func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1414f, var_1.x, var_1.x, -704f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(805f, var_1.x, -1000f, 1243f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, 988f, 1571f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, var_1.x, var_1.x, var_1.x))))), Struct_2(u_input.a, _wgslsmith_add_i32(var_0, max(1i, var_0 | 25874i)), func_4(func_2())), !(_wgslsmith_mult_u32(arg_1.x, arg_0.x) >= 1u) & true, firstTrailingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = reverseBits(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, u_input.b), abs(u_input.c), select(u_input.c, u_input.c, vec2<bool>(true, true)))) & firstLeadingBit(vec2<u32>(abs(41869u), _wgslsmith_mult_u32(37806u, u_input.b))));
    var var_2 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(-19331i, -1i, i32(-1i) * -1i), min(select(select(vec3<i32>(0i, 14126i, -59803i), vec3<i32>(u_input.a, -306i, -4872i), true), vec3<i32>(-1i, u_input.a, 1i), all(vec2<bool>(true, var_0))), -func_1(vec4<u32>(40457u, u_input.c.x, 4294967295u, 65412u), vec3<u32>(u_input.c.x, 4294967295u, 23134u)))), -min(~firstLeadingBit(vec3<i32>(0i, u_input.a, u_input.a)), vec3<i32>(abs(9029i), u_input.a, 15350i >> (var_1.x % 32u))), vec3<bool>(func_3(u_input.c, u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 21602i), firstTrailingBit(vec2<i32>(-31020i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-1i, 1916i)))), true, any(vec4<bool>(var_0, true, var_0, var_0))));
    var var_3 = Struct_2(~(-2089i), _wgslsmith_div_i32(var_2.x, u_input.a), Struct_1(var_0, any(vec2<bool>(!var_0, var_0)), !(!func_2().c)));
    let var_4 = Struct_3(firstLeadingBit(vec3<i32>(29016i, -27583i, var_2.x)), max(i32(-1i) * -1i, u_input.a), u_input.a, any(!vec4<bool>(func_4(Struct_1(true, var_3.c.a, vec3<bool>(false, var_0, false))).a, func_4(Struct_1(var_3.c.c.x, var_3.c.a, var_3.c.c)).a, var_3.c.c.x, var_0)));
    var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.a, func_1(vec4<u32>(1166u, 25707u, 0u, 4294967295u), vec3<u32>(3676u, 70176u, 1u)).x, -46367i) ^ var_4.a, vec3<i32>(reverseBits(abs(var_3.b)), _wgslsmith_clamp_i32(min(var_3.a, -2147483647i), var_3.a, var_4.c), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.x, 25841i, 34908i, var_3.b), vec4<i32>(var_3.b, var_2.x, var_3.a, -18997i), vec4<bool>(var_3.c.c.x, false, var_0, true)), vec4<i32>(var_3.a, 13317i, -10712i, 28577i)))));
    let var_5 = true;
    var var_6 = vec3<bool>(!(true & var_5), !var_5, var_5);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec3_i32(~var_4.a, vec3<i32>(u_input.a, 1i, u_input.a)) ^ func_1(~vec4<u32>(24296u, u_input.c.x, u_input.c.x, var_1.x), vec3<u32>(41105u, 32773u, u_input.c.x))) << (vec3<u32>(reverseBits(_wgslsmith_sub_u32(u_input.c.x, var_1.x)), ~(~u_input.b), ~55365u) % vec3<u32>(32u)), _wgslsmith_add_vec4_u32(abs(abs(_wgslsmith_div_vec4_u32(vec4<u32>(139890u, var_1.x, 0u, u_input.c.x), vec4<u32>(123403u, 23396u, u_input.c.x, 21040u)))), select(~vec4<u32>(var_1.x, 48730u, u_input.b, 4294967295u), firstTrailingBit(vec4<u32>(1u, var_1.x, u_input.b, u_input.c.x)), any(vec2<bool>(false, false))) ^ vec4<u32>(u_input.c.x, var_1.x, ~4294967295u, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1052f)) - _wgslsmith_f_op_f32(f32(-1f) * -135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(684f * -507f), _wgslsmith_f_op_f32(max(863f, -1560f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2562f - 1267f))));
}

