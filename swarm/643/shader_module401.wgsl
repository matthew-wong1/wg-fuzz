struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-549f, -556f, 1000f, -393f, 646f, -1000f, -330f, 296f, -117f, -1875f, -978f, -1000f, -427f, -1482f, -964f, 1031f, -868f, -1381f, -2242f, 785f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_4(_wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.c.x, u_input.a.x), ~u_input.c.x, u_input.d.x), u_input.c, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_mod_vec4_i32(u_input.c, max(u_input.a, u_input.a))), u_input.c.x, i32(-1i) * -20319i);
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    var var_1 = arg_2;
    var_1 = arg_2;
    return var_0.a.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_5(any(!(!(!vec4<bool>(arg_1, arg_2.x, true, true)))), 2147483647i, -24440i);
    var var_1 = countOneBits(1i);
    global0 = array<f32, 20>();
    let var_2 = u_input.b;
    var_1 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(0u, 20u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1062f, global0[_wgslsmith_index_u32(82995u, 20u)]), vec2<f32>(global0[_wgslsmith_index_u32(8918u, 20u)], global0[_wgslsmith_index_u32(58706u, 20u)])))))), vec3<u32>(~21849u | u_input.b, 1u, reverseBits(u_input.b >> (1u % 32u)) & 10558u), Struct_1(_wgslsmith_sub_u32(1u, max(abs(var_2), var_2 >> (1u % 32u))), reverseBits(firstLeadingBit(vec3<u32>(0u, 4294967295u, var_2))) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(8750u, 34651u, var_2), vec3<u32>(arg_0, arg_0, 18838u))));
    return !(!(firstTrailingBit(u_input.b) <= _wgslsmith_div_u32(max(arg_0, u_input.b), 74160u)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec3<f32> {
    global0 = array<f32, 20>();
    let var_0 = ~vec4<u32>(u_input.b, arg_2.a, abs(arg_3.a), _wgslsmith_add_u32(4294967295u, ~arg_2.a));
    let var_1 = Struct_5(firstLeadingBit(9283u) <= arg_2.d, u_input.c.x, ~0i);
    let var_2 = arg_2;
    global0 = array<f32, 20>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(var_2.b.b.x, 20u)], -924f, 847f), vec3<f32>(global0[_wgslsmith_index_u32(arg_2.a, 20u)], -1679f, global0[_wgslsmith_index_u32(arg_3.a, 20u)]), false))) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.d, 20u)] * global0[_wgslsmith_index_u32(arg_2.b.a, 20u)]), _wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(1132f - 1027f)))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = ~u_input.c.x;
    var var_1 = !(!vec4<bool>(!arg_0, arg_0 & arg_0, false, false));
    let var_2 = _wgslsmith_add_u32(u_input.b, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), countOneBits(vec3<u32>(u_input.b, u_input.b, 1u)))));
    global0 = array<f32, 20>();
    var var_3 = Struct_3(25204u);
    return _wgslsmith_clamp_u32(var_3.a, 4294967295u, 1u);
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 20u)]), global0[_wgslsmith_index_u32(func_5(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], 999f, 1163f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 1383f))) * _wgslsmith_f_op_vec3_f32(func_4(any(vec2<bool>(false, false)), func_2(13771u, true, vec2<bool>(false, true)), Struct_2(u_input.b, Struct_1(4294967295u, vec3<u32>(4294967295u, 0u, 22426u)), false, 0u, false), Struct_3(2882u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(729f, global0[_wgslsmith_index_u32(u_input.b, 20u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(951f, global0[_wgslsmith_index_u32(u_input.b, 20u)]) - vec2<f32>(global0[_wgslsmith_index_u32(19155u, 20u)], 1000f))))), 20u)]);
    var_0 = -308f;
    var_0 = 846f;
    var var_1 = vec2<u32>(reverseBits(4294967295u), u_input.b);
    var var_2 = vec2<u32>(func_5(true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, global0[_wgslsmith_index_u32(87846u, 20u)], 280f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-228f, -543f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(48573u, 20u)], -841f) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))))) >> (~var_1.x % 32u), (~(~0u) | ~_wgslsmith_sub_u32(var_1.x, u_input.b)) >> (~19264u % 32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(true, true, Struct_2(func_5(select(false, true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1183f, 464f, 656f) + vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], -198f, 1399f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], -1000f), vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 20u)], 2874f))), Struct_1(~u_input.b, ~vec3<u32>(var_1.x, var_2.x, u_input.b)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), 42058u, all(vec4<bool>(true, false, true, false)) | true), Struct_3(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(10660u, 1184u), ~vec2<u32>(43088u, u_input.b)), _wgslsmith_add_u32(7685u, 3898u)) ^ (select(vec3<u32>(695u, u_input.b, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(u_input.b, 12169u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 34232u)), vec3<bool>(true, false, false)) ^ select(vec3<u32>(50250u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 4294967295u, 8309u), vec3<bool>(true, false, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], 817f, global0[_wgslsmith_index_u32(42699u, 20u)])))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], -248f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 20u)], global0[_wgslsmith_index_u32(var_0.b.x, 20u)], global0[_wgslsmith_index_u32(37563u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(var_0.a, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)]))))));
    var_0 = Struct_1(select(u_input.b, ~(~64535u) & abs(~u_input.b), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a >> (1u % 32u), ~var_0.b.x, countOneBits(u_input.b)), ~(vec3<u32>(u_input.b, var_0.a, 1u) >> (var_0.b % vec3<u32>(32u)))) >> (vec3<u32>(_wgslsmith_div_u32(~u_input.b, ~var_0.b.x), abs(~51763u), _wgslsmith_mult_u32(0u, ~0u)) % vec3<u32>(32u)));
    var_0 = Struct_1(min(84092u, ~min(4294967295u, u_input.b)) ^ 33762u, ~(var_0.b ^ var_0.b));
    let var_2 = Struct_1(u_input.b, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.c.x);
}

