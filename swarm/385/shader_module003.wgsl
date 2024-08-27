struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(~(-(_wgslsmith_add_vec4_i32(vec4<i32>(20144i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, -50965i, u_input.b)) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x) % vec4<u32>(32u)))), firstLeadingBit(vec4<i32>(u_input.b, max(0i, 2147483647i), abs(u_input.b), 2147483647i)) | countOneBits(vec4<i32>(-u_input.b, 1i, 29294i, ~(-1i))));
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c.x), vec3<u32>(u_input.a, 41836u, 1u)), 1u)), select(u_input.c, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(13301u, 15104u)), u_input.c & vec2<u32>(u_input.a, 1649u), ~vec2<u32>(u_input.c.x, u_input.a)), true), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(25689u, u_input.a, u_input.a), vec3<u32>(u_input.c.x, 0u, 99808u)) >> (_wgslsmith_mod_u32(~u_input.c.x, ~38357u) % 32u), u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(603f, -634f), vec2<f32>(1124f, 527f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1272f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f), -2180f)) + vec2<f32>(_wgslsmith_f_op_f32(217f * -417f), _wgslsmith_f_op_f32(trunc(1570f)))), true));
    let var_3 = _wgslsmith_mod_u32(0u, 7167u);
    let var_4 = vec3<u32>(_wgslsmith_dot_vec2_u32(~abs(select(u_input.c, u_input.c, vec2<bool>(true, false))), u_input.c), var_1.x & 56851u, u_input.c.x);
    return _wgslsmith_add_i32(~countOneBits(~2147483647i), u_input.b);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(firstTrailingBit(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 0u, 21952u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u), false), ~vec4<u32>(1u, 17650u, 0u, 1u))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(118i, u_input.b, u_input.b, -17772i) & vec4<i32>(u_input.b, 0i, u_input.b, 7955i), vec4<i32>(u_input.b, 45329i, u_input.b, u_input.b)), func_3() << (~u_input.a % 32u)), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-1i, -2147483647i))), ~(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 0i), vec3<i32>(u_input.b, 23169i, u_input.b), vec3<i32>(0i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, 0i), true) >> ((select(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(57629u, 1u, 69935u), vec3<bool>(false, false, true)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(19256u, u_input.c.x, u_input.a))) % vec3<u32>(32u))), !(false || all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, _wgslsmith_f_op_f32(ceil(313f)), _wgslsmith_f_op_f32(1360f + -349f), _wgslsmith_f_op_f32(f32(-1f) * -1598f))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(949f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -305f, _wgslsmith_f_op_f32(937f + -1389f), _wgslsmith_f_op_f32(step(856f, _wgslsmith_f_op_f32(-487f + -1000f))))));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(894f, var_0.e.x, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.e.x)))) + 494f), var_0.e.x), u_input.b, var_0.e.xy);
    var_0 = Struct_1(~countOneBits(~var_0.a), u_input.b | select(~(-var_0.b), u_input.b, true), var_0.c, var_0.d & false, _wgslsmith_f_op_vec4_f32(-var_0.e));
    var var_2 = -u_input.b;
    var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, 0i), var_1.b & _wgslsmith_mod_i32(-33608i, -16123i), -1i, -1955i), select(~countOneBits(vec4<i32>(2147483647i, 1i, 78044i, var_1.b)), firstTrailingBit(~vec4<i32>(-55320i, -2147483647i, u_input.b, 4847i)), select(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, false, var_0.d), true))), abs(_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(62522i, u_input.b)), -u_input.b)));
    return var_1;
}

fn func_4(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = Struct_3(arg_0.c.x, arg_0.a.yx);
    var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-697f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(var_0.b, vec2<f32>(-2307f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(arg_0.a.xz + arg_0.c)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f + var_0.a)))), arg_0.c);
    var var_2 = Struct_2(u_input.c.x, Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 29381u)), reverseBits(u_input.b), vec3<i32>(select(-u_input.b, arg_0.b, true), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.b, arg_0.b, u_input.b), 11877i), abs(-u_input.b)), any(vec3<bool>(true, true, true)), vec4<f32>(613f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(366f + -355f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -427f))));
    var var_3 = Struct_2(~4294967295u, Struct_1(min(vec4<u32>(u_input.a, 0u, 1u, ~u_input.c.x), var_2.b.a), -2147483647i, -vec3<i32>(_wgslsmith_add_i32(34643i, u_input.b), var_2.b.c.x, u_input.b), var_2.b.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, 749f), var_1.a)))));
    return var_3.b.a;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))))));
    let var_1 = Struct_3(-1139f, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0)), -1153f)))), 1000f));
    var var_2 = func_4(func_2()) ^ reverseBits(firstTrailingBit(~vec4<u32>(8587u, 4294967295u, 28700u, 4294967295u)));
    var var_3 = ~(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.zy, vec2<u32>(var_2.x, var_2.x), u_input.c), var_2.wx)) | min(max(~u_input.c, ~vec2<u32>(1u, u_input.a)), u_input.c));
    let var_4 = u_input.c;
    return 21422i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(33676u, u_input.a), 19976u, select(u_input.c.x, u_input.a, true), u_input.c.x | u_input.c.x), firstTrailingBit(abs(vec4<u32>(4294967295u, u_input.c.x, u_input.a, u_input.a)))), _wgslsmith_sub_i32((func_1() >> (4294967295u % 32u)) >> (~40324u % 32u), abs(-min(-2147483647i, 1i))), -firstLeadingBit(~(~vec3<i32>(u_input.b, 1i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-587f, _wgslsmith_div_f32(-165f, 488f))) - _wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(floor(307f)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(915f, 1551f, -194f, 1000f) * vec4<f32>(-302f, -1048f, 382f, -322f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1828f, 962f, 2085f, -1197f) + vec4<f32>(246f, 331f, -1443f, -1310f)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)))));
    let var_1 = var_0.e;
    var var_2 = u_input.b;
    var_2 = 47226i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x - -744f) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2386f))), -248f));
    var var_4 = vec2<u32>(0u, var_0.a.x >> ((u_input.c.x >> (_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(u_input.c.x, 16727u)) % 32u)) % 32u));
    let var_5 = vec4<f32>(-3047f, 626f, var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) + _wgslsmith_f_op_f32(-var_3.b.x)))), var_1.x)));
    var_4 = firstLeadingBit(vec2<u32>(28537u, var_0.a.x ^ var_4.x) << (~select(var_0.a.wz, vec2<u32>(4294967295u, 0u), var_0.d) % vec2<u32>(32u))) & max(firstLeadingBit(firstLeadingBit(vec2<u32>(40158u, var_0.a.x))) | (_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(var_4.x, var_4.x), u_input.c) & vec2<u32>(0u, var_0.a.x)), var_0.a.yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, var_0.b);
}

