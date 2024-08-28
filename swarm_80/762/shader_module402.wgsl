struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<u32, 26> = array<u32, 26>(66064u, 4081u, 47404u, 1u, 1u, 34208u, 4294967295u, 0u, 0u, 4772u, 52073u, 4294967295u, 1u, 14618u, 9027u, 17853u, 4294967295u, 0u, 44815u, 56015u, 1u, 33652u, 0u, 34332u, 11898u, 4294967295u);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(56939i, 1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8228u, 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43345u, 26u)], 26u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 4u)], 26u)], 1u) >> (vec4<u32>(33768u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17691u, 26u)], 4u)], 1u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73135u, 4u)], 26u)]) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(47471u, global0[_wgslsmith_index_u32(4294967295u, 4u)], 7920u, global1[_wgslsmith_index_u32(4294967295u, 26u)])) ^ ~vec4<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 4u)], 4u)], global0[_wgslsmith_index_u32(16624u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 4u)])), ~(~(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], 67267u, 91692u, global0[_wgslsmith_index_u32(1u, 4u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(27648u, 26u)], 47346u, 1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63636u, 26u)], 4u)]) % vec4<u32>(32u)))));
    return arg_0.x;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> f32 {
    global1 = array<u32, 26>();
    global3 = Struct_1(~_wgslsmith_div_vec2_i32(firstTrailingBit(arg_2.xx), ~arg_2.xz));
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-10769i, global2.a.x), -global3.a));
    let var_1 = var_0;
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(445f)) + _wgslsmith_f_op_f32(max(-1602f, 2679f))))))) - _wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(2355f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2342f * 823f))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(func_4(func_3(vec2<bool>(true, false), all(vec3<bool>(false, false, false)), Struct_1(global2.a), _wgslsmith_div_f32(-919f, -657f)), ~(vec4<i32>(global2.a.x, u_input.a.x, global2.a.x, global2.a.x) ^ vec4<i32>(global2.a.x, 19906i, u_input.a.x, global3.a.x)), u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34313u, 26u)], 4u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 26u)], 4u)], 11280u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19803u, 26u)], 4u)], global1[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31890u, 26u)], 4u)])), global1[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 4u)], 20105u), _wgslsmith_clamp_u32(98414u, 35088u, 4294967295u))))));
    let var_1 = vec2<f32>(1f, arg_0.x);
    let var_2 = _wgslsmith_add_vec3_u32(firstTrailingBit(select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(122053u, 4u)], 4u)], 26u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50545u, 4u)], 4u)], global1[_wgslsmith_index_u32(0u, 26u)]) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 5159u), vec3<u32>(0u, 1u, 1u), true)) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(50382u, 26u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10551u, 4u)], 26u)]), ~vec3<u32>(35230u, 0u, 77075u)) >> (vec3<u32>(_wgslsmith_div_u32(0u, 237296u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(10154u, global1[_wgslsmith_index_u32(45571u, 26u)]), 26u)], select(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, false)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8306u, 4u)], 4u)], 4u)], 4u)], 4u)], 26u)], 4u)], 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7731u, 26u)], 4u)]), 4u)], 26u)], 4u)], 4294967295u, ~_wgslsmith_clamp_u32(~0u, 8712u, global1[_wgslsmith_index_u32(1u, 26u)])));
    var_0 = -1707f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.wxw), _wgslsmith_f_op_vec3_f32(-arg_0.wwx), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(505f, arg_0.x, 1485f), vec3<f32>(-652f, 1000f, var_1.x), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_0.xxx, vec3<f32>(837f, -569f, -432f), false))))) + arg_0.yzw));
    return Struct_1(u_input.a.zx);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, -1508f, -1000f, -1761f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-300f, -311f, 1766f, 680f))))))));
    global1 = array<u32, 26>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-600f * 1179f))))) * 749f);
    global2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, -1144f, 1460f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-368f, var_2, 198f, -2101f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2, 2007f, -112f, -1000f), vec4<f32>(var_2, -1000f, -1103f, 1306f))))));
    return Struct_1(~var_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(779f)) * 837f);
    global3 = arg_0;
    var var_1 = 0i ^ _wgslsmith_add_i32(global3.a.x, select(~1296i, firstLeadingBit(global2.a.x), true));
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = 0u;
    return func_5(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1, arg_2, arg_1))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1311f, arg_1, arg_1, arg_2)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -262f, arg_1, 686f) * vec4<f32>(1212f, 1095f, arg_2, 1000f))))), vec3<bool>(!(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 4u)]) > 1u), true, all(vec2<bool>(var_0 > 1368f, true))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec2<i32> {
    global2 = arg_0;
    global0 = array<u32, 4>();
    let var_0 = arg_0;
    var var_1 = !vec2<bool>(reverseBits(_wgslsmith_div_i32(global3.a.x, -37500i)) < -3557i, true);
    global0 = array<u32, 4>();
    return _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_3.x, arg_3.x >> (4294967295u % 32u)), vec2<i32>(1i, select(-2147483647i, firstLeadingBit(var_0.a.x), all(vec4<bool>(var_1.x, true, var_1.x, false)))), true), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, global3.a.x), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_sub_vec2_i32(func_6(func_1(Struct_1(vec2<i32>(global2.a.x, 4590i)), _wgslsmith_div_f32(762f, -562f), 3177f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 588f, 1000f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-197f, -442f, -377f, 788f))))), ~reverseBits(vec4<i32>(-4963i, 3012i, global3.a.x, global2.a.x))), global3.a));
    let var_0 = true;
    let var_1 = func_6(Struct_1(~global3.a >> (~vec2<u32>(global0[_wgslsmith_index_u32(80426u, 4u)], 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(285f)), _wgslsmith_div_f32(-1292f, 532f), _wgslsmith_f_op_f32(sign(-2013f))) - vec3<f32>(882f, _wgslsmith_f_op_f32(199f * -1813f), _wgslsmith_f_op_f32(f32(-1f) * -923f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f - -650f)), _wgslsmith_div_f32(-1090f, _wgslsmith_f_op_f32(round(867f))))), _wgslsmith_div_f32(349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 2184f)))), 693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(678f, 578f)) + _wgslsmith_f_op_f32(1108f + 725f)) + -1000f)), _wgslsmith_mult_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b, 1i, 2147483647i, 24057i)) >> (abs(vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 4u)], 77482u, global1[_wgslsmith_index_u32(4294967295u, 26u)], 95866u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(~global2.a.x, func_1(Struct_1(u_input.a.xz), 312f, -435f).a.x, u_input.b, min(1i, 8135i)), ~(vec4<i32>(u_input.b, u_input.a.x, global2.a.x, 33067i) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 0u, 1891u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57246u, 26u)], 4u)]) % vec4<u32>(32u))))));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[_wgslsmith_index_u32(42468u, 4u)] ^ 1u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2426f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f), -1785f), -1173f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 472f, 491f), vec3<f32>(-1538f, 864f, 1000f), vec3<bool>(true, false, var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(290f, 1198f, 1407f) * vec3<f32>(-772f, 717f, 1357f)), !vec3<bool>(false, var_0, false)))))), u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(5538u, 26u)], 4980u, 17478u), vec3<u32>(global0[_wgslsmith_index_u32(21727u, 4u)], 32865u, 1u)), 26u)], ~global0[_wgslsmith_index_u32(1u, 4u)]), vec2<u32>(0u, 1u)) % 32u), 10199u);
}

