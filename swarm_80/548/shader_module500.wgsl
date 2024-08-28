struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-1301f, 1000f, 909f), vec3<f32>(-1322f, -1704f, -140f), vec3<f32>(1575f, -410f, 1000f), vec3<f32>(837f, 1874f, -2580f), vec3<f32>(845f, 1063f, -106f), vec3<f32>(-457f, -443f, 787f), vec3<f32>(-778f, 396f, 636f), vec3<f32>(1466f, 938f, 1000f), vec3<f32>(-740f, 1000f, -1276f), vec3<f32>(1808f, -503f, 958f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_4(true);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(355f - -1196f), _wgslsmith_f_op_f32(ceil(-1157f)), 687f, _wgslsmith_f_op_f32(-142f * -2416f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(164f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-225f, 1214f) * -951f), _wgslsmith_f_op_f32(round(-761f)), _wgslsmith_f_op_f32(1369f - _wgslsmith_f_op_f32(f32(-1f) * -1551f)))))));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(var_1))));
    global0 = array<Struct_3, 7>();
    return (vec3<i32>(select(u_input.c, i32(-1i) * -4311i, true), -abs(u_input.c), i32(-1i) * -u_input.c) >> (vec3<u32>(1u, 1u | (u_input.a << (var_2 % 32u)), 12391u) % vec3<u32>(32u))) ^ ~vec3<i32>(max(-64386i, u_input.c) & 6745i, u_input.c, u_input.c);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(max(0i, u_input.c), u_input.c << (u_input.b % 32u), _wgslsmith_clamp_i32(u_input.c, -12164i, 21846i)), func_3(Struct_4(false)) >> (~vec3<u32>(4294967295u, u_input.b, 1u) % vec3<u32>(32u))) & ~(~vec3<i32>(-1i, -2147483647i, 33288i)), -250f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-552f, -1000f, -1401f), vec3<f32>(-526f, -543f, -340f))))), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.a, 10u)], vec3<f32>(2901f, -1000f, 743f)))))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(u_input.a, 8137u, u_input.b)), vec3<u32>(u_input.a, ~42584u, u_input.b ^ u_input.b)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(62199u, u_input.a, u_input.a)), vec3<u32>(u_input.a, min(u_input.a, u_input.b), ~u_input.b))), abs(4587u));
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_1 = max(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(1u, 1u, 1u, var_0.e)), ~reverseBits(vec4<u32>(u_input.b, var_0.e, 82646u, 1u))), ~firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, var_0.e, var_0.d.x, 1u)))) >> (vec4<u32>(26036u, 1u >> (_wgslsmith_sub_u32(~u_input.b, var_0.d.x) % 32u), u_input.b ^ select(~u_input.b, _wgslsmith_mult_u32(24856u, 0u), arg_0), u_input.b) % vec4<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1276f, 829f) - vec3<f32>(var_0.c.x, 429f, var_0.c.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)))), Struct_1(select(var_0.a ^ var_0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -36003i, var_0.a.x), firstLeadingBit(var_0.a)), (u_input.c & u_input.c) >= 1i), _wgslsmith_f_op_f32(-var_0.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -101f)), -1168f), abs(min(abs(vec3<u32>(0u, 27426u, 52676u)), var_1.wyx >> (vec3<u32>(1u, 27371u, 0u) % vec3<u32>(32u)))), 25632u), Struct_2(Struct_1(abs(vec3<i32>(-1i, 52114i, -16488i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) + _wgslsmith_f_op_f32(sign(-1102f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a, 10u)]) * _wgslsmith_f_op_vec3_f32(exp2(var_0.c))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(u_input.a, 1u, var_0.e)) << (~vec3<u32>(4294967295u, u_input.b, var_0.d.x) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(10430u, u_input.b, u_input.a, 45550u), vec4<u32>(u_input.b, 61387u, var_0.d.x, 4294967295u)), firstTrailingBit(vec4<u32>(u_input.b, 85744u, 15026u, 92512u)))), Struct_1(firstLeadingBit(~vec3<i32>(u_input.c, -40172i, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(490f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), -1465f, var_0.c.x), vec3<u32>(firstTrailingBit(var_1.x), firstLeadingBit(var_0.e), _wgslsmith_add_u32(var_1.x, u_input.b)), var_0.d.x), Struct_1(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)), ~vec3<i32>(var_0.a.x, var_0.a.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f - var_0.b)), _wgslsmith_f_op_vec3_f32(min(var_0.c, _wgslsmith_f_op_vec3_f32(max(global1[_wgslsmith_index_u32(17792u, 10u)], global1[_wgslsmith_index_u32(var_0.d.x, 10u)])))), ~var_0.d | vec3<u32>(var_0.e, 37477u, 46999u), 47265u)), -vec2<i32>(u_input.c, select(37281i, var_0.a.x, !arg_0)));
    return ~31386i;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_3, 7>();
    var var_0 = vec2<i32>(min(-(~func_2(true)), -23596i), reverseBits(_wgslsmith_div_i32(~abs(u_input.c), u_input.c)));
    var var_1 = Struct_4(all(!vec4<bool>(u_input.a < arg_0.x, true, true, false)));
    let var_2 = Struct_4(true);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>((i32(-1i) * -31591i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 39447i, -1i, 51035i), vec4<i32>(-6540i, 2147483647i, var_0.x, -1i)), var_0.x, u_input.c & firstTrailingBit(17566i)), vec3<i32>(-1i) * -vec3<i32>(var_0.x, -19519i, u_input.c)), -min(var_0.x, i32(-1i) * -1i));
    return Struct_1(vec3<i32>(var_0.x, _wgslsmith_div_i32(~(-2147483647i), 66683i), func_2(any(!vec4<bool>(var_2.a, false, var_1.a, var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f + 1136f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-547f, _wgslsmith_div_f32(-1000f, -254f)))), _wgslsmith_f_op_f32(max(426f, _wgslsmith_f_op_f32(f32(-1f) * -537f))), 1f), firstTrailingBit(select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, u_input.b, u_input.a) << (vec3<u32>(4294967295u, 1u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(43056u, 4294967295u, u_input.a), vec3<u32>(34982u, 1u, 38879u))), vec3<u32>(arg_0.x, _wgslsmith_mult_u32(arg_0.x, 72287u), u_input.b & 42804u), var_1.a)), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, arg_0.x, u_input.a, arg_0.x) & vec4<u32>(u_input.a, 4294967295u, 100544u, arg_0.x))), ~firstLeadingBit(vec4<u32>(66784u, arg_0.x, u_input.b, u_input.a) ^ vec4<u32>(arg_0.x, 0u, 4294967295u, 8689u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    var var_0 = Struct_4(true);
    let var_1 = Struct_4(true);
    let var_2 = func_1(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(38498u, 28711u)), vec2<u32>(~1u, ~u_input.b), vec2<u32>(~u_input.a, ~u_input.b)));
    let var_3 = Struct_4(var_1.a && all(vec2<bool>(true, true)));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(reverseBits(var_2.a.yy))));
}

