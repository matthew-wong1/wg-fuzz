struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = vec3<i32>(global0.x, global0.x, global0.x);
    let var_1 = true;
    var var_2 = !select(var_1, !any(vec3<bool>(var_1, var_1, var_1)), any(select(vec4<bool>(var_1, true, false, true), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, true, true, var_1)), !vec4<bool>(var_1, true, true, false))));
    let var_3 = vec2<i32>(-1i) * -min(select(~arg_0, vec2<i32>(u_input.c, var_0.x), vec2<bool>(true, var_1)), global0.yx);
    var_0 = vec3<i32>(~(~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, i32(-1i) * -1i)), arg_0.x, _wgslsmith_div_i32(6390i, ~(~11530i)));
    return vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-678f * _wgslsmith_f_op_f32(max(258f, -1129f)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1128f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -516f)))))));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-212f)), _wgslsmith_f_op_f32(-425f - _wgslsmith_f_op_f32(1466f + 1016f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(727f, -2000f, -288f), vec3<f32>(-466f, -1215f, 294f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, 120f, -308f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1128f, 567f, -780f))), !arg_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0.yy)))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(-1437f, var_0.x))), var_0.x, -228f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(u_input.c, u_input.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(939f, 1058f, var_0.x) - vec3<f32>(107f, -483f, 1429f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1336f, 1889f, -371f), vec3<f32>(var_0.x, 1667f, 456f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1455f)), !vec3<bool>(true, arg_0.x, arg_0.x))), !(!arg_0.wwy))), any(vec4<bool>(select(false, arg_0.x, arg_0.x), select(arg_0.x, false, arg_0.x), true, 4294967295u >= u_input.b)))));
    global0 = ~_wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 4312i, 0i), vec3<i32>(-28313i, global0.x, 23858i) & vec3<i32>(-1i, -2147483647i, 17179i)), -vec3<i32>(reverseBits(-2147483647i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, 17343i, 28043i), vec4<i32>(global0.x, -2147483647i, global0.x, -14440i))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, countOneBits(1u), firstLeadingBit(u_input.b), u_input.b)), min(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(83998u, u_input.b, 0u, 0u) << (vec4<u32>(u_input.b, 3698u, u_input.b, u_input.b) % vec4<u32>(32u))), ~(vec4<u32>(113564u, u_input.b, u_input.b, 74549u) << (vec4<u32>(75889u, u_input.b, 23881u, 0u) % vec4<u32>(32u)))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(140f - _wgslsmith_f_op_vec3_f32(func_3(-global0.yx | ~vec2<i32>(u_input.c, -36721i))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) - _wgslsmith_f_op_f32(-var_0.x)));
    return reverseBits(firstLeadingBit(0i));
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(max(vec2<i32>(~(-1i), func_2(vec4<bool>(false, false, false, false)) >> (1u % 32u)), ~(firstTrailingBit(global0.yz) & reverseBits(vec2<i32>(-1i, 0i)))));
    var var_1 = Struct_3(Struct_2(true, Struct_1(-1393f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-294f)))), ~(vec2<u32>(20140u, 4294967295u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), global0.x), Struct_1(1f, _wgslsmith_f_op_f32(f32(-1f) * -1960f), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(29841u, 0u), vec2<u32>(u_input.b, 0u)), ~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(4294967295u, u_input.b)), firstLeadingBit(~(-6975i))), Struct_1(493f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1942f, 1000f) * -143f), vec2<u32>(u_input.b, abs(u_input.b)), global0.x)), 394f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-850f, -1000f) + -342f)), _wgslsmith_f_op_f32(step(1f, 554f)), ~(vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(u_input.b, 0u), u_input.c), -2147483647i, true);
    var_1 = Struct_3(var_1.a, var_1.a.b.a, var_1.c, -func_2(select(vec4<bool>(true, var_1.a.a, true, false), !vec4<bool>(var_1.a.a, false, true, var_1.e), select(vec4<bool>(var_1.a.a, true, var_1.a.a, true), vec4<bool>(var_1.e, false, var_1.a.a, var_1.a.a), vec4<bool>(var_1.a.a, true, var_1.e, var_1.a.a)))), var_1.e);
    global0 = ~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-21238i, 1i, -2147483647i) << (vec3<u32>(u_input.b, u_input.b, 120424u) % vec3<u32>(32u)), abs(vec3<i32>(2147483647i, 51458i, 24674i)), select(vec3<bool>(var_1.e, false, var_1.e), vec3<bool>(false, true, var_1.a.a), vec3<bool>(false, var_1.a.a, true))) | max(vec3<i32>(1i, 1i, 1i), vec3<i32>(var_1.c.d, global0.x, var_1.a.d.d) ^ vec3<i32>(0i, -41179i, 1i)), firstLeadingBit(vec3<i32>(~(-42829i), abs(-22306i), ~var_1.c.d)), select(select(vec3<i32>(9159i, var_0.x, 6189i), vec3<i32>(22198i, -11842i, -56269i), vec3<bool>(false, false, var_1.a.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(39424u, 0u, 16906u), vec3<u32>(u_input.b, 0u, 0u)) % vec3<u32>(32u)), vec3<i32>(global0.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 33932i, -1i, 597i), vec4<i32>(19175i, -1i, -1i, global0.x))), false & any(vec3<bool>(true, var_1.e, false))));
    var_0 = countOneBits(global0.xy);
    return Struct_3(var_1.a, var_1.c.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(650f)), _wgslsmith_f_op_f32(f32(-1f) * -1577f)) * _wgslsmith_f_op_f32(-var_1.a.b.b)), 920f, firstTrailingBit(~(~var_1.a.c.c)), -2147483647i), -2147483647i >> (_wgslsmith_add_u32(max(~u_input.b, 72325u), u_input.b) % 32u), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(164f))))), -645f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(200f + 314f)), 1f)), max(abs(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 69695i, 1i), vec3<i32>(12637i, u_input.d, 5077i)))), select(max(~vec3<i32>(u_input.d, 1i, global0.x), vec3<i32>(u_input.a, 31310i, 2147483647i)), abs(select(vec3<i32>(u_input.c, 1i, u_input.a), vec3<i32>(global0.x, 0i, 0i), vec3<bool>(false, false, true))), vec3<bool>(select(false, false, false), true, true))), func_1().b);
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.b.x));
    var var_2 = func_1();
    global0 = -var_0.c >> (_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(select(vec3<u32>(38349u, 23377u, 1642u), vec3<u32>(1u, var_0.a.a.c.c.x, 1u), var_2.e), vec3<u32>(u_input.b, var_2.a.d.c.x, 50593u) & vec3<u32>(71124u, u_input.b, 8996u))), firstLeadingBit(vec3<u32>(13319u, ~4294967295u, _wgslsmith_div_u32(1u, var_0.a.c.c.x)))) % vec3<u32>(32u));
    global0 = -((vec3<i32>(u_input.d, var_2.a.c.d, 1i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 45267u, var_0.a.c.c.x), ~vec3<u32>(54161u, 4294967295u, var_0.a.a.d.c.x)) % vec3<u32>(32u))) << (~vec3<u32>(var_2.a.b.c.x, 1u, _wgslsmith_clamp_u32(4294967295u, var_0.a.a.b.c.x, u_input.b)) % vec3<u32>(32u)));
    var var_3 = Struct_2(false, var_0.a.c, var_2.a.b, Struct_1(_wgslsmith_f_op_f32(-var_2.a.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 - var_2.c.a), var_0.d, !var_0.a.a.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(var_2.a.c.c << (vec2<u32>(32080u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(43395u, 23271u))), 15118i));
    var var_4 = true;
    var var_5 = var_0.a.a;
    let var_6 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(max(~vec2<i32>(var_5.b.d, -2147483647i), global0.zz))).x, _wgslsmith_f_op_vec3_f32(func_3(~(~var_0.c.xx))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), var_3.c.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(86916u, 57872u, 78521u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(115357u, var_0.a.a.d.c.x, var_2.a.b.c.x, var_3.d.c.x), vec4<u32>(1u, var_3.c.c.x, u_input.b, var_5.c.c.x)))), countOneBits(abs(~(~vec3<u32>(0u, 20356u, 4294967295u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, 9312u, var_5.d.c.x, _wgslsmith_add_u32(var_2.a.b.c.x, u_input.b)), (vec4<u32>(var_0.a.a.d.c.x, 285u, 1u, var_5.d.c.x) >> (vec4<u32>(var_3.c.c.x, var_5.b.c.x, var_5.c.c.x, var_0.a.c.c.x) % vec4<u32>(32u))) & vec4<u32>(0u, 0u, var_5.d.c.x, var_3.c.c.x)) & (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_2.c.c.x, var_3.b.c.x, var_3.d.c.x)), ~vec4<u32>(36001u, var_3.c.c.x, 15990u, 0u)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.c.x, 70688u, var_2.a.d.c.x, var_2.c.c.x), vec4<u32>(27884u, var_3.b.c.x, 0u, var_3.b.c.x)), 92274u, firstTrailingBit(35061u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.c.c.x, var_3.d.c.x, var_5.d.c.x), vec4<u32>(62205u, 14849u, var_0.a.c.c.x, var_3.d.c.x))) % vec4<u32>(32u))), var_2.a.d.c.x);
}

