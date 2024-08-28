struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1534f, -1127f, 234f), vec3<f32>(-280f, 1325f, 723f), vec3<f32>(991f, 2050f, 457f), vec3<f32>(1774f, -228f, -378f), vec3<f32>(1253f, -131f, -381f), vec3<f32>(-1390f, -404f, -459f), vec3<f32>(969f, 397f, -974f), vec3<f32>(407f, 1033f, -582f), vec3<f32>(382f, 2091f, 604f), vec3<f32>(475f, -1510f, 315f), vec3<f32>(-508f, -1291f, -758f), vec3<f32>(1238f, -729f, 2127f), vec3<f32>(-176f, 653f, 122f), vec3<f32>(594f, -1629f, 1000f), vec3<f32>(-150f, 1122f, -1000f), vec3<f32>(497f, -468f, -1554f), vec3<f32>(-1000f, 310f, -620f), vec3<f32>(1353f, 1747f, 915f), vec3<f32>(138f, 166f, -1798f), vec3<f32>(-1266f, 937f, 1547f), vec3<f32>(-298f, -855f, -141f), vec3<f32>(-781f, -687f, -899f), vec3<f32>(-1338f, -738f, -1286f), vec3<f32>(1000f, 1227f, -1317f), vec3<f32>(591f, 172f, -446f), vec3<f32>(-602f, 248f, 335f), vec3<f32>(989f, 312f, -241f), vec3<f32>(-1509f, 863f, -1348f), vec3<f32>(732f, 1198f, 933f), vec3<f32>(-1891f, 157f, -1116f), vec3<f32>(127f, -662f, 1422f));

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = u_input.b;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.c), u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c), -1i >> (u_input.b % 32u)), vec4<i32>(~2147483647i, max(0i, 45533i), u_input.d.x, 1i))), true);
    let var_2 = _wgslsmith_sub_u32(0u >> (_wgslsmith_sub_u32(~u_input.b, _wgslsmith_div_u32(0u, 59294u)) % 32u), (u_input.b ^ 1u) ^ min(4294967295u, ~u_input.b)) & abs(firstLeadingBit(max(~4294967295u, ~1u)));
    let var_3 = Struct_2(var_1.a, ~min(u_input.b, var_2 >> (var_2 % 32u)) >> (firstTrailingBit(var_2) % 32u), ~var_2, vec4<u32>((6160u >> (u_input.b % 32u)) | ~_wgslsmith_clamp_u32(var_2, 6512u, u_input.b), 2080u, reverseBits(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_2, 10594u), u_input.b)), 35769u), Struct_1(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_1.a.x) & _wgslsmith_div_i32(0i, var_1.a.x), _wgslsmith_add_i32(var_1.a.x, countOneBits(39656i)), 0i, var_1.a.x), arg_0));
    var_0 = ~var_3.d.x ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~9307u), 4294967295u), ~var_2);
    return global1.x;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = vec2<bool>(arg_0, func_3(true));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 31u)])))))), global2[_wgslsmith_index_u32(~u_input.b, 6u)]);
    var var_2 = Struct_2(var_1.b.a, firstLeadingBit(~abs(var_1.b.c)), 1u, var_1.b.d, var_1.b.e);
    let var_3 = -_wgslsmith_dot_vec4_i32(var_2.a, var_2.a);
    global2 = array<Struct_2, 6>();
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(850f * -914f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1065f, var_1.a.x), var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + arg_2.x))) - 571f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -303f, -182f, arg_2.x), vec4<f32>(241f, arg_2.x, var_1.a.x, arg_2.x), false))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x))), arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-614f - var_1.a.x), 288f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(138f + -631f), -586f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, arg_1.a.x, -1142f, -1981f) - _wgslsmith_f_op_vec4_f32(select(arg_0, arg_2.a, vec4<bool>(arg_1.b.e.b, arg_1.b.e.b, false, false))))))));
    let var_1 = 0u;
    let var_2 = func_3(select(_wgslsmith_dot_vec3_u32(vec3<u32>(6053u, 0u, 5102u), vec3<u32>(u_input.b, u_input.b, 60849u)) >= ~u_input.b, true, !(u_input.b < arg_1.b.d.x))) | true;
    var var_3 = true;
    var_3 = global1.x;
    return func_3(!arg_1.b.e.b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    let var_0 = false;
    let var_1 = func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(811f * arg_0.a.x)), arg_2), -716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-864f))), _wgslsmith_f_op_f32(abs(186f))), arg_0, Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(var_0, arg_0.b.a.yy | arg_0.b.e.a.ww, vec2<f32>(arg_2, -823f)))))), Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_0.a.x, arg_0.a.x) + vec4<f32>(991f, 1059f, arg_0.a.x, arg_2)), vec4<f32>(-262f, 428f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, arg_2, 1519f, -387f)))))));
    global2 = array<Struct_2, 6>();
    global0 = array<vec3<f32>, 31>();
    global2 = array<Struct_2, 6>();
    return select(select(!vec4<bool>(true, arg_0.b.e.b & arg_0.b.e.b, true, true), !(!select(vec4<bool>(arg_0.b.e.b, true, global1.x, arg_0.b.e.b), vec4<bool>(var_1, arg_0.b.e.b, false, var_0), true)), global1.x | !(true & arg_0.b.e.b)), !select(vec4<bool>(true, true || arg_1.e.b, any(vec4<bool>(true, false, true, var_1)), arg_2 < arg_0.a.x), vec4<bool>(var_1, true, true, !arg_1.e.b), !select(vec4<bool>(false, false, false, arg_0.b.e.b), vec4<bool>(global1.x, false, arg_1.e.b, arg_0.b.e.b), var_1)), true);
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = 972f;
    let var_1 = arg_3.b.e.b;
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, ~vec3<i32>(arg_3.b.e.a.x, -2147483647i, 19752i)), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(36744i, -1i, -2147483647i), -u_input.a.x), abs(arg_3.b.e.a.x))), -max(vec3<i32>(_wgslsmith_mult_i32(u_input.c, 31267i), arg_3.b.e.a.x, 11100i), vec3<i32>(1i, 1i, ~(-1i))));
    let var_3 = false;
    var var_4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(-723f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, global1.x)))))), _wgslsmith_f_op_f32(-arg_3.a.x), -1875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 328f) + _wgslsmith_f_op_f32(arg_3.a.x * arg_2.x)))));
    return Struct_2(-arg_3.b.e.a, arg_3.b.c, reverseBits(30215u), vec4<u32>(4294967295u, 0u, _wgslsmith_clamp_u32(abs(arg_0), 1u, ~arg_0), min(_wgslsmith_div_u32(1u, u_input.b), ~86090u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, ~73033u, 31515u, arg_3.b.d.x), ~arg_3.b.d), arg_3.b.e);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    let var_0 = vec3<i32>(u_input.d.x, arg_0.e.a.x, ~(-1i));
    var var_1 = 988f;
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(~(select(abs(u_input.b), 66502u, global1.x) | ~21605u), 31u)], arg_0);
    global1 = vec4<bool>(false, !(min(u_input.b, min(1u, var_2.b.c)) <= 14091u), true | !(!arg_0.e.b), !var_2.b.e.b);
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-36486i, ~var_0.x, -1819i, arg_0.a.x), vec4<i32>(-6026i, arg_0.a.x | -(~var_0.x), ~arg_0.a.x, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.a.x, -1i, var_2.b.e.a.x), vec3<i32>(-7063i, var_0.x, 1i)))));
    return ~37854u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(abs(u_input.b & 4294967295u), _wgslsmith_mod_u32(select(u_input.b, u_input.b, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 57544u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)))) | func_6(func_5(1u, func_1(Struct_4(vec3<f32>(350f, -307f, -711f), global2[_wgslsmith_index_u32(u_input.b, 6u)]), global2[_wgslsmith_index_u32(u_input.b, 6u)], -1216f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, 400f, 472f)), Struct_4(vec3<f32>(1433f, 1430f, -159f), global2[_wgslsmith_index_u32(u_input.b, 6u)])), vec4<i32>(-548i, u_input.c << (u_input.b % 32u), ~u_input.d.x, ~u_input.a.x)), u_input.b);
    let var_1 = -u_input.c;
    let var_2 = func_5(u_input.b, select(!vec4<bool>(global1.x, true, u_input.c != u_input.a.x, all(global1.zy)), !vec4<bool>(func_4(vec4<f32>(-845f, 1190f, 1000f, -747f), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 31u)], Struct_2(vec4<i32>(-31272i, var_1, u_input.a.x, 48273i), 1512u, 1u, vec4<u32>(65095u, 23958u, u_input.b, u_input.b), Struct_1(vec4<i32>(var_1, u_input.c, -14623i, u_input.a.x), global1.x))), Struct_3(vec4<f32>(508f, -1828f, -748f, -2421f)), Struct_3(vec4<f32>(656f, -850f, 1971f, -892f))), any(vec4<bool>(global1.x, global1.x, global1.x, true)), false, global1.x || global1.x), true), global0[_wgslsmith_index_u32(0u, 31u)], Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1026f, 2316f, -1045f))) * vec3<f32>(666f, _wgslsmith_f_op_f32(ceil(202f)), -120f)), func_5(u_input.b, func_1(Struct_4(global0[_wgslsmith_index_u32(38743u, 31u)], global2[_wgslsmith_index_u32(4875u, 6u)]), Struct_2(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, var_1), u_input.b, u_input.b, vec4<u32>(u_input.b, u_input.b, 1u, 0u), Struct_1(vec4<i32>(var_1, u_input.a.x, u_input.c, u_input.a.x), true)), 819f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(435f, -1699f, 239f), global0[_wgslsmith_index_u32(u_input.b & u_input.b, 31u)])), Struct_4(vec3<f32>(788f, 1340f, -376f), func_5(4294967295u, vec4<bool>(false, global1.x, global1.x, global1.x), global0[_wgslsmith_index_u32(u_input.b, 31u)], Struct_4(global0[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(u_input.b, 6u)]))))));
    global1 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -863f)) <= -1043f, global1.x, false);
    var var_3 = select(vec3<i32>(-var_2.a.x, ~_wgslsmith_mult_i32(u_input.a.x, 32146i), max(~(-2147483647i), reverseBits(i32(-1i) * -1i))), ~(-func_5(abs(u_input.b), !vec4<bool>(false, true, global1.x, false), _wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(1u, 31u)])), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(var_2.b, 6u)])).a.wyy), vec3<bool>(true, true, true));
    var_3 = vec3<i32>(var_2.e.a.x, var_2.a.x, var_3.x);
    var var_4 = firstTrailingBit(min(select(var_2.a.zx, _wgslsmith_mod_vec2_i32(var_2.a.zx | var_3.yy, vec2<i32>(2147483647i, var_1)), !var_2.e.b), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.xy, vec2<i32>(0i, var_1)), vec2<i32>(var_1, -401i)), _wgslsmith_div_vec2_i32(u_input.a.zz, reverseBits(vec2<i32>(-40424i, u_input.a.x))), -vec2<i32>(var_1, u_input.d.x))));
    var var_5 = var_2;
    let var_6 = _wgslsmith_clamp_vec4_i32(var_2.e.a, -reverseBits(_wgslsmith_add_vec4_i32(-var_2.a, -var_2.a)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~var_5.a, var_5.a ^ var_5.a), vec4<i32>(min(-13229i, ~2147483647i), 2147483647i, -1i, var_5.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-147f, 975f, 385f, 295f), vec4<f32>(437f, -473f, -971f, 2265f), global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, -1296f, -1666f, -2539f)))))));
}

