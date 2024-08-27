struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_3,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: f32 = 400f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_u32(firstTrailingBit(75780u), ~(~_wgslsmith_mult_u32(4294967295u, 1u)));
    var var_1 = ~(~min(~vec2<u32>(0u, var_0), ~vec2<u32>(var_0, var_0))) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 4294967295u), ~(~vec2<u32>(23913u, 20662u))) % vec2<u32>(32u));
    global0 = array<i32, 5>();
    let var_2 = Struct_3(Struct_1(~(~vec2<u32>(var_1.x, 935u)), -43136i, ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.x, 40803u), vec3<u32>(1u, var_0, 4294967295u)) | ~(vec3<u32>(var_0, 0u, var_0) & vec3<u32>(1u, 9147u, 13464u)), max(countOneBits(var_1.x), var_1.x)), Struct_2(Struct_1(vec2<u32>(var_0, var_1.x), abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(31098u, 5u)])), abs(~vec3<u32>(21681u, var_0, var_0)), _wgslsmith_div_u32(var_0, ~var_0)), vec2<i32>(19159i, firstTrailingBit(4630i))), abs(vec3<u32>(_wgslsmith_add_u32(41514u, _wgslsmith_mult_u32(var_0, 9774u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0, var_0)), vec2<u32>(4294967295u, 46449u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(10177u, var_1.x, var_0), vec3<u32>(0u, var_0, var_0), true), ~vec3<u32>(50946u, var_0, 4294967295u)))), Struct_1(abs(select(vec2<u32>(47157u, 14932u), ~vec2<u32>(var_0, var_0), true)), i32(-1i) * -1i, ~vec3<u32>(var_1.x, ~4294967295u, _wgslsmith_sub_u32(21599u, 0u)), var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f * 710f) + _wgslsmith_f_op_f32(1208f + 1661f))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-354f, -456f)), 1258f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, 1637f) - vec2<f32>(430f, 398f))))));
    global0 = array<i32, 5>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(3502u, abs(4294967295u)), _wgslsmith_clamp_u32(abs(~var_2.b.a.d), _wgslsmith_clamp_u32(abs(var_1.x), _wgslsmith_div_u32(var_2.d.d, var_0), _wgslsmith_div_u32(var_1.x, 10524u)), ~75035u)), vec2<u32>(var_0, 67365u) << (min(~reverseBits(var_2.d.a), vec2<u32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(23314u, 4294967295u, 4294967295u, var_0), vec4<u32>(var_0, var_2.c.x, var_0, var_2.a.d)))) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    global0 = array<i32, 5>();
    let var_0 = Struct_2(Struct_1(vec2<u32>(~(~1u), 0u), ~u_input.a, vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_u32(~(~4002u), _wgslsmith_add_u32(_wgslsmith_mult_u32(32025u, 21042u), 37278u))), firstTrailingBit(-vec2<i32>(-44341i, abs(global0[_wgslsmith_index_u32(28691u, 5u)]))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, -214f, 3061f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), 129f, _wgslsmith_f_op_f32(floor(1801f)), -437f)));
    let var_2 = Struct_4(Struct_1((var_0.a.a ^ var_0.a.a) | var_0.a.a, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(~var_0.a.a.x, 5u)]), vec3<u32>(var_0.a.c.x, var_0.a.a.x, ~func_3()), 0u), var_0.a, var_1, var_0);
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_f32(step(575f, -1276f));
}

fn func_1() -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true))))), 1f))));
    var var_0 = !(0i <= _wgslsmith_add_i32(-72747i, _wgslsmith_add_i32(abs(37862i), global0[_wgslsmith_index_u32(1u, 5u)] >> (4294967295u % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, 1108f)), vec2<f32>(-806f, 1374f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1508f, 1123f), _wgslsmith_div_vec2_f32(vec2<f32>(1102f, 2109f), vec2<f32>(-1652f, -1237f)))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 156f), _wgslsmith_f_op_f32(f32(-1f) * -1420f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-704f, -245f)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f) + _wgslsmith_f_op_f32(f32(-1f) * -826f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -440f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1134f)))));
    var var_2 = true;
    global1 = -2130f;
    return !select(vec3<bool>(true, !all(vec2<bool>(false, true)), true & any(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)] > -2147483647i, any(vec3<bool>(true, true, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1177f * _wgslsmith_f_op_f32(f32(-1f) * -703f)))) + 403f);
    var var_0 = !select(all(func_1()), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1267u, 19722u)) < _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(47929u, 4294967295u, 0u, 52503u))), (select(false, false, false) | true) && true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 27027u), vec2<u32>(1u, 1u)), u_input.a, ~(~vec3<u32>(4294967295u, 0u, 28658u)), _wgslsmith_mod_u32(58175u, 4294967295u)), vec2<i32>(global0[_wgslsmith_index_u32(firstTrailingBit(24275u), 5u)], abs(1i)));
    var var_2 = max(reverseBits(vec3<u32>(~(2161u | var_1.a.c.x), ~var_1.a.a.x & _wgslsmith_div_u32(1u, var_1.a.a.x), ~(~var_1.a.d))), _wgslsmith_mult_vec3_u32(countOneBits(var_1.a.c), vec3<u32>(~10433u, var_1.a.a.x, ~(~1u))));
    let var_3 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(var_1.a.d, var_1.a.d), ~func_3(), 0u ^ (var_1.a.a.x >> (0u % 32u)), ~43899u), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(4294967295u), 4294967295u, 4294967295u, 14796u), (vec4<u32>(69651u, var_1.a.d, 109362u, var_1.a.d) >> (vec4<u32>(var_2.x, 84092u, var_1.a.a.x, 19132u) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(var_2.x, 1u, 0u, var_2.x)))), firstTrailingBit(~_wgslsmith_add_vec4_u32(~vec4<u32>(9338u, var_1.a.c.x, var_1.a.c.x, 0u), ~vec4<u32>(var_1.a.d, 99315u, 0u, 9030u))));
    var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, ~var_1.a.c.x), ~(vec2<u32>(var_1.a.a.x, 1u) & var_1.a.c.xz)), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_1.a.d, var_1.a.c.x), vec3<u32>(var_1.a.d, 4294967295u, var_3.x)), var_3.xww), 5u)]), var_1.a.c, var_3.x), -vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(var_3.x, var_1.a.c.x, 20588u, var_1.a.d)), 5u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-18395i, var_1.b.x), var_1.b)) ^ vec2<i32>(u_input.a, abs(u_input.a)));
    let var_4 = min(select(vec4<u32>(firstLeadingBit(var_1.a.a.x >> (0u % 32u)), ~reverseBits(var_1.a.c.x), ~(~1u), ~(~1u)), ~var_3, !(_wgslsmith_sub_i32(u_input.a, global0[_wgslsmith_index_u32(12068u, 5u)]) == countOneBits(var_1.b.x))), ~vec4<u32>(~var_3.x << (~0u % 32u), 4209u, var_2.x, ~1u));
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 0u));
}

