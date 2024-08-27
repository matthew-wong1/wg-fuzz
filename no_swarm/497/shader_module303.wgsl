struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1000f, 1000f, 678f, 966f), vec4<f32>(295f, 281f, 761f, 102f), vec4<f32>(-737f, 629f, 791f, -194f), vec4<f32>(-1099f, -1748f, -575f, -117f), vec4<f32>(-1766f, -1486f, -689f, 449f), vec4<f32>(-389f, -1000f, -1606f, 1347f), vec4<f32>(-410f, -1000f, 2697f, -1513f), vec4<f32>(-633f, 290f, -828f, 1000f), vec4<f32>(-524f, -1424f, -1000f, -746f), vec4<f32>(1000f, 523f, 145f, 799f), vec4<f32>(402f, -416f, 1213f, -1453f), vec4<f32>(697f, 969f, -480f, 197f), vec4<f32>(409f, 1000f, -419f, 379f), vec4<f32>(1123f, -631f, 623f, 1045f), vec4<f32>(572f, -1673f, -481f, 1000f), vec4<f32>(-1194f, 1302f, 1344f, -1615f), vec4<f32>(-1000f, 921f, -191f, 1116f), vec4<f32>(-947f, -294f, 541f, -786f), vec4<f32>(981f, 749f, -1642f, -563f), vec4<f32>(1000f, -1020f, 1127f, -1251f), vec4<f32>(172f, -1615f, -655f, 700f), vec4<f32>(904f, 1501f, -2113f, 1485f), vec4<f32>(-1073f, 2026f, 420f, -1043f), vec4<f32>(-1000f, -238f, 947f, -468f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.a.b)), 1f, false)))));
    global0 = array<vec4<f32>, 24>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, arg_0.x, ~(~1u), ~(~arg_0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)) & max(vec4<u32>(arg_0.x, arg_0.x, 25442u, arg_0.x), vec4<u32>(arg_0.x, 1u, arg_0.x, 0u)), ~vec4<u32>(arg_0.x, arg_0.x, 58396u, 1u))), arg_0.x);
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(57642u, 4294967295u, 0u, 40786u), vec4<u32>(arg_0.x, 24309u, 0u, arg_0.x) & vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), ~(~48796u)), 24u)];
    let var_3 = arg_2;
    return true;
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    var var_0 = Struct_1(-1304f, -527f);
    let var_1 = vec2<u32>(1u, 1u) ^ _wgslsmith_mult_vec2_u32(max(vec2<u32>(~4724u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 1u)), firstTrailingBit(abs(vec2<u32>(23870u, 4294967295u)))));
    return _wgslsmith_f_op_f32(abs(var_0.a));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = 1u;
    var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, -1000f >= _wgslsmith_f_op_f32(sign(arg_0.a.a)), (arg_0.b.c | false) | func_3(vec3<u32>(0u, 28658u, 4294967295u), 773f, arg_1), arg_0.b.c))), 1i, !arg_0.b.c);
    let var_2 = !select(select(!(!vec3<bool>(false, var_0.c, arg_0.b.c)), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.c, false, arg_0.b.c), true), select(vec3<bool>(var_0.c, false, arg_0.b.c), vec3<bool>(true, arg_0.b.c, var_0.c), vec3<bool>(var_0.c, false, false)), select(vec3<bool>(true, var_0.c, arg_0.b.c), vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, var_0.c, arg_0.b.c))), !select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(true, var_0.c, false), vec3<bool>(var_0.c, arg_0.b.c, true))), select(!select(vec3<bool>(arg_0.b.c, arg_0.b.c, var_0.c), vec3<bool>(false, var_0.c, true), false), select(vec3<bool>(false, arg_0.b.c, arg_0.b.c), !vec3<bool>(arg_0.b.c, false, var_0.c), false), select(all(vec3<bool>(arg_0.b.c, arg_0.b.c, arg_0.b.c)), true, var_0.c)), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.c, false), vec3<bool>(true, false, var_0.c))), func_3(vec3<u32>(7751u, 80133u, 40180u), _wgslsmith_f_op_f32(abs(var_0.a)), arg_1), true));
    let var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 60501u, 1507u), vec3<u32>(1u, 0u, 5873u), vec3<u32>(16164u, 4294967295u, 1u))))), 24u)];
    return abs(var_0.b);
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1 & select(15653u, arg_1, arg_0.c), arg_1)), firstTrailingBit(abs(~vec2<u32>(66034u, 0u))) | select(vec2<u32>(~1u, _wgslsmith_mod_u32(4294967295u, arg_1)), ~vec2<u32>(1u, 1u), (arg_1 ^ 54169u) > 96688u));
    let var_1 = vec4<u32>(var_0.x, var_0.x, arg_1, ~(var_0.x & firstTrailingBit(select(var_0.x, 13208u, false))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(-827f)), arg_0.b, -1i < _wgslsmith_div_i32(0i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.b, arg_0.b, arg_0.b), func_2(Struct_4(Struct_1(arg_0.a, arg_0.a), Struct_3(-255f, 2147483647i, false)), Struct_2(Struct_1(arg_0.a, 1000f))))));
    var var_3 = vec3<bool>(var_2.c, ((_wgslsmith_add_u32(arg_1, 74674u) & firstTrailingBit(1u)) ^ reverseBits(_wgslsmith_clamp_u32(20243u, var_1.x, var_0.x))) == 37397u, -635f > var_2.a);
    let var_4 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 13831u), ~(vec2<u32>(1u, 1u) & var_1.wz), all(var_3.yx)), select(~var_1.zw, ~vec2<u32>(1u, 8786u) & _wgslsmith_mult_vec2_u32(~vec2<u32>(18039u, 37387u), var_1.xx), var_2.c), vec2<u32>(var_1.x, var_1.x >> (reverseBits(countOneBits(4294967295u)) % 32u)));
    return _wgslsmith_f_op_f32(sign(879f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    var var_0 = Struct_3(463f, _wgslsmith_dot_vec4_i32(firstTrailingBit(-(~vec4<i32>(-47007i, -1i, -2147483647i, u_input.a.x))), ~reverseBits(abs(vec4<i32>(-9752i, 10618i, -48423i, -2147483647i)))), true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(var_0.a, u_input.a.x, true), 13404u))))), _wgslsmith_f_op_f32(-var_0.a));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1586f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_0.a), vec2<f32>(-1000f, var_1.x))), vec2<f32>(var_1.x, -380f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0.a), vec2<f32>(385f, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 1243f) + vec2<f32>(var_1.x, -1000f)))))));
    let var_2 = abs(vec4<u32>(82425u, ~countOneBits(1u), _wgslsmith_add_u32(9630u, 1u), ~0u) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 10608u, 0u)), ~(~59383u), select(8628u, firstLeadingBit(48854u), true), ~1u));
    var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(!vec4<bool>(var_0.c & false, select(var_0.c, false, var_0.c), true, !var_0.c))), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x >> (4294967295u % 32u), var_0.b >> (var_2.x % 32u))), (i32(-1i) * -u_input.a.x) ^ -35862i), all(!vec4<bool>(!var_0.c, var_0.c | false, var_0.c, any(vec3<bool>(var_0.c, false, false)))));
    global0 = array<vec4<f32>, 24>();
    var_0 = Struct_3(-312f, ~_wgslsmith_sub_i32(u_input.a.x, ~var_0.b), !var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(~var_2.x), var_2.x, _wgslsmith_add_u32(~4294967295u, 21978u), _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(abs(4294967295u), 57905u, var_2.x))), var_2.yyw);
}

