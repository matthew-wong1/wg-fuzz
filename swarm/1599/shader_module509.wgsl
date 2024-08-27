struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: i32;

var<private> global2: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 12>();
    var var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_div_u32(firstLeadingBit(u_input.a.x), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(1u, 33474u, u_input.a.x, 4294967295u)))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(true, select(true, true, false))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(true, false, false)), true), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true)));
    global1 = -firstTrailingBit(1i);
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    return 413f;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ 17002u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1291f, -2420f, 1341f, -449f) + vec4<f32>(1560f, 288f, -259f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-280f, 1000f, 1326f, -1000f) + vec4<f32>(884f, 242f, 1365f, -830f))), vec4<f32>(-301f, _wgslsmith_f_op_f32(1456f * 566f), 1520f, _wgslsmith_f_op_f32(func_3()))))), Struct_1(!select(true, false, true), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 0u, 42971u), vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x))), vec2<bool>((43080u >= var_0) & true, true)), Struct_1(true | all(vec3<bool>(true, true, true)), ~(~(~4294967295u)), !select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), Struct_1(all(select(global0[_wgslsmith_index_u32(var_0, 12u)], vec3<bool>(true, false, true), any(vec4<bool>(false, false, false, false)))), select(4294967295u, _wgslsmith_add_u32(max(var_0, 22695u), 4294967295u), _wgslsmith_f_op_f32(sign(861f)) < -612f), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_div_f32(1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1168f, 2180f))))));
    global0 = array<vec3<bool>, 12>();
    let var_2 = max(reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, -20415i)), vec2<i32>(1i, 1i))), vec2<i32>(-(~0i), firstLeadingBit(i32(-1i) * -1i)));
    let var_3 = vec2<bool>(4294967295u <= firstTrailingBit(var_1.d.b), any(select(select(vec4<bool>(var_1.d.c.x, var_1.b.a, var_1.b.c.x, var_1.c.a), vec4<bool>(var_1.c.a, var_1.d.a, false, true), vec4<bool>(var_1.b.a, false, true, var_1.d.c.x)), vec4<bool>(var_1.d.c.x, var_1.b.c.x, true, var_1.b.c.x), true)) | ((_wgslsmith_f_op_f32(229f - var_1.a.x) < _wgslsmith_f_op_f32(round(285f))) & true));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(-1030f, 1766f, 256f, var_1.a.x), var_3.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.e, 1899f, var_1.a.x) - _wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(-261f, -336f, var_1.e, var_1.a.x), vec4<bool>(true, true, var_1.c.c.x, true)))), var_1.a)))), vec4<f32>(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2.a;
    var var_1 = 129137u;
    var_1 = _wgslsmith_add_u32(arg_0, ~select(~u_input.b.x, ~30999u, true));
    var var_2 = arg_2;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(910f, -397f, -1128f, 339f)) - _wgslsmith_f_op_vec4_f32(func_2())) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, -549f, 403f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1089f, -2121f, 1220f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(step(802f, 296f)), _wgslsmith_f_op_f32(-1696f - 320f), 1944f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2234f, 1415f, -377f, -285f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, -393f, -891f, 1552f))))), Struct_1(((arg_2.a || true) | var_2.c.x) && arg_2.c.x, abs(4294967295u), vec2<bool>(arg_0 != (22131u >> (var_2.b % 32u)), false)), arg_2, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-143f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(529f + 1213f)))) + _wgslsmith_f_op_f32(trunc(-248f))));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(abs(28098u)), reverseBits(~var_3.b.b), 1u, firstLeadingBit(var_3.c.b)), reverseBits(vec4<u32>(_wgslsmith_mult_u32(var_2.b, 0u), 11240u, ~1u, select(arg_0, 29506u, arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global0 = array<vec3<bool>, 12>();
    let var_0 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 25732u), vec4<u32>(4294967295u, 30708u, 4294967295u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 94226u), vec4<u32>(u_input.a.x, 39632u, 6738u, u_input.b.x))), func_1(0u, vec3<i32>(~(-43560i), _wgslsmith_add_i32(91741i, 0i), -9336i), Struct_1(any(vec2<bool>(true, true)), 1u, vec2<bool>(false, true))));
    var var_1 = var_0.ywz;
    var var_2 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(vec2<bool>(false, false))), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, false, true, false)), true), true));
    global1 = ~(0i >> (func_1(u_input.a.x, vec3<i32>(~2147483647i, _wgslsmith_mult_i32(1i, 10718i), ~(-9004i)), Struct_1(true, 0u, vec2<bool>(true, true))).x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.b.x), ~var_0.x, 48524u, _wgslsmith_sub_u32(47879u, u_input.b.x)) | vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(90408u, 39102u, 1u)), abs(var_1.x), ~_wgslsmith_mult_u32(8033u, var_1.x), func_1(336u, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, -30547i), vec3<i32>(0i, 1i, 1i)), Struct_1(false, 4294967295u, vec2<bool>(true, false))).x), _wgslsmith_mult_i32(24237i, max(select(-31346i, _wgslsmith_div_i32(33357i, 9928i), any(vec4<bool>(false, false, true, true))), _wgslsmith_mod_i32(-714i, _wgslsmith_sub_i32(-8051i, -1i)))));
}

