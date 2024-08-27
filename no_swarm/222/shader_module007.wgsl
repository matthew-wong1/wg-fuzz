struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 20>;

var<private> global3: array<bool, 25>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<u32> {
    global2 = array<f32, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_1 + arg_1);
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, global1.b, global1.b, global1.b) >> (vec4<u32>(0u, u_input.a.x, 48422u, global1.c) % vec4<u32>(32u)), ~vec4<i32>(0i, -1i, 0i, 0i)), ~firstTrailingBit(vec4<i32>(global1.b, global1.b, global1.b, global1.b))), abs(-vec4<i32>(0i, -56253i, global1.b, global1.b)) | ~(vec4<i32>(global1.b, global1.b, -2147483647i, global1.b) ^ vec4<i32>(20518i, -15823i, 40068i, global1.b))), vec3<f32>(global0[_wgslsmith_index_u32(~firstLeadingBit(0u), 25u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1294f)))), 1181f));
    var var_2 = global3[_wgslsmith_index_u32(1u, 25u)];
    let var_3 = Struct_2(!arg_0.x, countOneBits(9044i), u_input.b.x);
    return vec4<u32>(u_input.a.x, abs(firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c, 0u), vec2<u32>(44057u, 0u))))), firstTrailingBit(global1.c), 1u);
}

fn func_2() -> Struct_2 {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(func_3(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(377f, global0[_wgslsmith_index_u32(1u, 25u)], 1255f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1360f, global2[_wgslsmith_index_u32(global1.c, 20u)], 1000f) - vec3<f32>(-246f, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)])))), vec4<u32>(global1.c, global1.c, global1.c, _wgslsmith_mult_u32(u_input.a.x ^ 4294967295u, ~global1.c))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, 0u, 52403u)) | ~(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, global1.c)), vec4<u32>(~29062u, u_input.b.x, u_input.a.x, global1.c), _wgslsmith_div_vec4_u32(vec4<u32>(global1.c, min(4294967295u, 37323u), 48162u, u_input.b.x), vec4<u32>(u_input.b.x, global1.c, firstLeadingBit(u_input.b.x), ~u_input.b.x))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(901i, 1i, -83798i, global1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b, global1.b, 2928i, global1.b), vec4<i32>(1i, global1.b, -43972i, global1.b)))), _wgslsmith_clamp_vec4_i32(max(~vec4<i32>(1i, -18791i, global1.b, -54685i), vec4<i32>(12145i, 0i, 26450i, -45477i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.b, 12211i), vec4<i32>(global1.b, 2147483647i, -19859i, global1.b)), ~vec4<i32>(-29098i, 21325i, 19908i, -38670i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18247u, 20u)]), global0[_wgslsmith_index_u32(0u | var_1.x, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 20u)] * global0[_wgslsmith_index_u32(var_1.x, 25u)])))), _wgslsmith_f_op_f32(select(-1588f, -1000f, any(select(vec2<bool>(false, true), vec2<bool>(true, global1.a), vec2<bool>(global1.a, global3[_wgslsmith_index_u32(var_1.x, 25u)])))))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(-1000f - var_2.b.x) >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 20u)]), true, false);
    let var_4 = Struct_2(all(!var_3.xz), select(global1.b, -53612i, select(global1.a, false, global1.a)), u_input.b.x);
    return Struct_2(any(vec2<bool>(any(vec4<bool>(var_3.x, false, true, true)), !var_3.x)), ~var_2.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(global1.c & var_1.x, ~39133u, false), u_input.a.x, ~(~4294967295u)), ~(~108211u | (u_input.b.x & 4294967295u))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_u32(min(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global1.c, 74897u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a.x, global1.c, 0u)), global1.c, global1.c, u_input.b.x)), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 23046u, 0u), vec4<u32>(21576u, u_input.b.x, global1.c, u_input.a.x))), ~(~vec4<u32>(global1.c, u_input.a.x, 1u, global1.c)), _wgslsmith_add_vec4_u32(vec4<u32>(33296u, u_input.b.x, global1.c, u_input.b.x), ~vec4<u32>(10589u, 35241u, 19646u, global1.c)))), firstTrailingBit(~(max(vec4<u32>(global1.c, 4294967295u, 1252u, 357u), vec4<u32>(1140u, u_input.a.x, 4294967295u, 10709u)) ^ firstTrailingBit(vec4<u32>(0u, 71509u, 16568u, u_input.b.x)))));
    global1 = func_2();
    global3 = array<bool, 25>();
    var var_1 = Struct_1(~global1.b, vec3<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1.c, ~var_0.x), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -668f), -765f));
    var var_2 = var_1.a >= -6555i;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -326f;
    global2 = array<f32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, 241f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~(~4294967295u), 25u)], global2[_wgslsmith_index_u32(global1.c, 20u)])), 894f));
    let var_2 = _wgslsmith_f_op_f32(func_1(!(!select(vec4<bool>(false, true, false, false), !vec4<bool>(false, true, false, global1.a), vec4<bool>(true, false, global3[_wgslsmith_index_u32(16870u, 25u)], global3[_wgslsmith_index_u32(58585u, 25u)])))));
    global2 = array<f32, 20>();
    var var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, -2577i, global1.b, -23262i), vec4<i32>(global1.b, global1.b, global1.b, global1.b) & vec4<i32>(-7044i, global1.b, global1.b, global1.b)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global1.b, global1.b, global1.b, 9705i)), -vec4<i32>(-41088i, -30355i, global1.b, -8478i))), abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -1i), 1i), func_2().b ^ -global1.b, 2147483647i, global1.b)));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~32501u, func_2().c, min(24587u, func_3(!select(vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, false, true), vec3<bool>(global1.a, global1.a, false)), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 348f), _wgslsmith_f_op_vec3_f32(var_1.zxx + var_1.zzz))).x), ~(~min(vec4<u32>(global1.c, u_input.b.x, u_input.a.x, 4294967295u), vec4<u32>(global1.c, 22498u, u_input.a.x, u_input.a.x)) << (vec4<u32>(global1.c, u_input.b.x, ~1u, 11392u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, u_input.a.x, global1.c), u_input.a) << (1u % 32u), 20u)], _wgslsmith_f_op_f32(step(-226f, _wgslsmith_f_op_f32(floor(-784f)))))));
}

