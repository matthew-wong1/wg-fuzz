struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(15583u, 4294967295u, 0u, 0u), vec4<u32>(0u, 0u, 1u, 31218u), vec4<u32>(44714u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 34470u, 62273u, 41332u), vec4<u32>(46716u, 4294967295u, 92908u, 0u), vec4<u32>(17329u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 72356u, 49093u, 1u), vec4<u32>(32077u, 0u, 0u, 4294967295u), vec4<u32>(35539u, 0u, 15303u, 11557u), vec4<u32>(4294967295u, 55582u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 3666u, 1u), vec4<u32>(4294967295u, 4294967295u, 59843u, 1u), vec4<u32>(20476u, 4294967295u, 1u, 30927u), vec4<u32>(4294967295u, 16982u, 4294967295u, 4188u), vec4<u32>(4294967295u, 2937u, 32070u, 4294967295u), vec4<u32>(0u, 55860u, 22735u, 115677u), vec4<u32>(13148u, 4294967295u, 0u, 0u), vec4<u32>(1u, 16666u, 0u, 5966u), vec4<u32>(18034u, 11559u, 1u, 4294967295u), vec4<u32>(31111u, 11033u, 1u, 46626u), vec4<u32>(6403u, 48827u, 0u, 0u), vec4<u32>(3771u, 5878u, 0u, 482u), vec4<u32>(11551u, 0u, 9564u, 69621u), vec4<u32>(0u, 1037u, 4294967295u, 75u), vec4<u32>(48190u, 34713u, 1u, 0u), vec4<u32>(39999u, 8735u, 30673u, 4294967295u));

var<private> global1: array<u32, 18>;

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(0i, 25301i, 1i, -13944i), vec4<i32>(-18028i, 2147483647i, 2326i, i32(-2147483648)), vec4<i32>(17441i, 2147483647i, -13402i, -1i), vec4<i32>(24874i, -5517i, 0i, 2372i), vec4<i32>(18393i, -46217i, -54102i, 1i), vec4<i32>(4143i, 24065i, 15157i, 66319i), vec4<i32>(i32(-2147483648), -14147i, -11119i, -17931i), vec4<i32>(1i, -42043i, 2147483647i, -48271i), vec4<i32>(-4821i, 106200i, 8016i, -1i), vec4<i32>(22188i, 27270i, -15110i, -1i), vec4<i32>(-16865i, 2147483647i, 0i, -1i), vec4<i32>(50351i, -76721i, 11120i, -12897i), vec4<i32>(2147483647i, 2147483647i, -1i, -31547i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-1i, 18240i, 1i, -9747i), vec4<i32>(-1i, i32(-2147483648), -13122i, 2147483647i), vec4<i32>(0i, 10674i, 2147483647i, -10028i), vec4<i32>(-84222i, 2147483647i, -1i, 25442i), vec4<i32>(-15097i, -1i, -1i, i32(-2147483648)), vec4<i32>(19093i, 26995i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -65230i), vec4<i32>(-1i, 2147483647i, 12026i, 598i), vec4<i32>(-41154i, 43005i, 1i, 41045i), vec4<i32>(-43357i, -54713i, 2147483647i, 2462i), vec4<i32>(0i, 10182i, i32(-2147483648), 1i), vec4<i32>(-79325i, -1i, 2147483647i, -2985i), vec4<i32>(-2265i, -17851i, -28924i, 2147483647i), vec4<i32>(2147483647i, -1751i, 2147483647i, 0i));

var<private> global3: array<bool, 25> = array<bool, 25>(false, true, false, false, false, true, false, true, false, true, false, false, false, true, false, true, true, false, true, true, true, true, false, true, false);

var<private> global4: array<f32, 32> = array<f32, 32>(2297f, 1184f, 259f, 214f, -474f, 599f, -197f, 929f, 265f, 1016f, -348f, -241f, 1000f, -284f, 212f, -450f, -1014f, 557f, -899f, 1319f, 904f, 971f, -120f, 1000f, -922f, -1278f, 263f, 252f, 1544f, 264f, -1647f, 488f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    global1 = array<u32, 18>();
    let var_0 = Struct_2(~(i32(-1i) * -(~arg_0.c.x)));
    global0 = array<vec4<u32>, 26>();
    var var_1 = ~select(~((global0[_wgslsmith_index_u32(7941u, 26u)] ^ vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 51442u, arg_0.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)])) & ~vec4<u32>(arg_0.d.x, global1[_wgslsmith_index_u32(arg_0.d.x, 18u)], 39445u, 4294967295u)), (~global0[_wgslsmith_index_u32(arg_0.d.x, 26u)] & global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10157u ^ global1[_wgslsmith_index_u32(arg_0.d.x, 18u)], 18u)], 26u)]) >> (global0[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(27482u, 18u)]), 26u)] % vec4<u32>(32u)), true);
    var var_2 = var_0;
    return !(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(15677u, 32u)])) != arg_0.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_2(0i);
    global2 = array<vec4<i32>, 28>();
    let var_1 = 1u;
    global2 = array<vec4<i32>, 28>();
    var var_2 = func_3(Struct_1(613f, (select(var_1, 27048u, true) > global1[_wgslsmith_index_u32(var_1, 18u)]) | true, -min(firstLeadingBit(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 28u)]), abs(vec4<i32>(var_0.a, 18585i, var_0.a, var_0.a))), ~vec2<u32>(~19881u, 0u)), true);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-474f, arg_1, -1812f)), vec3<f32>(709f, -736f, arg_1)) + vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1418f)))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1301f - -715f))), !(!global3[_wgslsmith_index_u32(4294967295u, 25u)]), -(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(abs(arg_2), 28u)], -u_input.b) | ~select(vec4<i32>(1i, u_input.a, u_input.a, arg_3.a), vec4<i32>(-2147483647i, u_input.b.x, u_input.a, arg_3.a), global3[_wgslsmith_index_u32(0u, 25u)])), ~select(vec2<u32>(29941u, 4294967295u) | vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 18u)], arg_2), vec2<u32>(1u, 1u), !global3[_wgslsmith_index_u32(arg_0, 25u)]) & firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 4294967295u), ~vec2<u32>(4294967295u, 0u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(any(vec4<bool>(arg_1, arg_1, true, arg_1)), global3[_wgslsmith_index_u32(4294967295u, 25u)] == false, arg_1, func_3(var_0, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_3.a, var_0.c.x), var_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], false, false, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x))), !arg_1 & !arg_1)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 18u)], 32u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-380f, 111f), -1610f)), -226f));
    global1 = array<u32, 18>();
    let var_2 = false;
    let var_3 = arg_3;
    return Struct_1(var_1.x, any(vec2<bool>(true, true)), ~reverseBits(vec4<i32>(var_0.c.x >> (41381u % 32u), -2147483647i, u_input.a, i32(-1i) * -2147483647i)), vec2<u32>(_wgslsmith_sub_u32(reverseBits(arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(42076u, arg_0, 0u) | vec3<u32>(0u, 53106u, 69969u), ~vec3<u32>(4294967295u, 57983u, 48926u))), 26933u));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> i32 {
    global3 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(520f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1147f)))) + 1355f)));
    let var_1 = func_2(~4294967295u, false, 26594u, arg_2);
    let var_2 = arg_2.a;
    let var_3 = Struct_2(_wgslsmith_div_i32(abs(1i), ~abs(arg_2.a & var_1.c.x)));
    return _wgslsmith_add_i32(~(-20904i), -_wgslsmith_sub_i32(18426i, arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_div_u32(12830u, ~global1[_wgslsmith_index_u32(22253u, 18u)])), max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], _wgslsmith_mult_u32(1u, ~21794u)));
    let var_1 = Struct_2(_wgslsmith_div_i32(func_1(false, -u_input.b.x, Struct_2(i32(-1i) * -55335i)), i32(-1i) * -(~(-1i))));
    global3 = array<bool, 25>();
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32((i32(-1i) * -u_input.b.x) >> (max(firstLeadingBit(1u), global1[_wgslsmith_index_u32(1u, 18u)]) % 32u), func_1(true, 1i, var_1), -52700i), 21095i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_div_i32(var_1.a, var_1.a)), _wgslsmith_add_i32(1i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13323u, 18u)], 18u)], 18u)] % 32u), -11226i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70986u, 18u)], 18u)] % 32u)), u_input.a), _wgslsmith_sub_vec3_i32(-func_2(4294967295u, global3[_wgslsmith_index_u32(12403u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30074u, 18u)], 18u)], Struct_2(u_input.a)).c.zzz, vec3<i32>(u_input.a, -34507i, -37370i))), u_input.a);
    let var_3 = !(!select(!vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2050u, 18u)], 25u)], false, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 25u)]), vec4<bool>(true, false, true & global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 25u)], all(vec2<bool>(false, global3[_wgslsmith_index_u32(9361u, 25u)]))), select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(41282u, 25u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30701u, 18u)], 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(44993u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 25u)], global3[_wgslsmith_index_u32(9905u, 25u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53736u, 18u)], 25u)], global3[_wgslsmith_index_u32(15317u, 25u)])), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(26738u, 25u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25581u, 18u)], 18u)], 18u)], 18u)], 25u)], true), false)));
    let var_4 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22868u, 18u)], 18u)], 18u)];
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(1803f, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 18u)], 32u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 32u)] - global4[_wgslsmith_index_u32(7800u, 32u)])), _wgslsmith_f_op_f32(-886f * func_2(global1[_wgslsmith_index_u32(53932u, 18u)], true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], var_5).a), global4[_wgslsmith_index_u32(101093u, 32u)]), vec4<f32>(-278f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(29445u, 32u)], global4[_wgslsmith_index_u32(20397u, 32u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 32u)] * global4[_wgslsmith_index_u32(7091u, 32u)]))), _wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(f32(-1f) * -312f))), _wgslsmith_f_op_vec3_f32(func_4(!select(var_3, vec4<bool>(false, global3[_wgslsmith_index_u32(52294u, 25u)], false, false), var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) * global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(global1[_wgslsmith_index_u32(24252u, 18u)]), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 1u), 67339u), 32u)]), var_2.x)).x, vec2<i32>(reverseBits(1i), -1i));
}

