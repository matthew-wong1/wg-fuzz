struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 26> = array<i32, 26>(-56897i, 30938i, 0i, i32(-2147483648), -31812i, -10039i, -42853i, 0i, i32(-2147483648), -75826i, 2147483647i, -23618i, 485i, 1i, -1i, 0i, -1i, -1i, 40405i, i32(-2147483648), 2147483647i, 1i, -1i, 2147483647i, -35148i, -19680i);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1801f, -1273f, vec3<f32>(1075f, 1264f, -1501f)), Struct_1(-836f, 1042f, vec3<f32>(2352f, 1303f, 1760f)), Struct_1(616f, 1232f, vec3<f32>(-566f, -1668f, -911f)), Struct_1(-1163f, -1000f, vec3<f32>(-1000f, 381f, -1475f)), Struct_1(-1572f, 1000f, vec3<f32>(-439f, 428f, -120f)), Struct_1(-715f, 864f, vec3<f32>(919f, -1090f, 1246f)), Struct_1(-1014f, -334f, vec3<f32>(263f, 1643f, -378f)), Struct_1(333f, 353f, vec3<f32>(-454f, -807f, -163f)), Struct_1(1810f, 104f, vec3<f32>(939f, -557f, 943f)), Struct_1(1000f, 732f, vec3<f32>(-739f, 535f, 1000f)), Struct_1(1049f, -108f, vec3<f32>(258f, -1391f, -2529f)), Struct_1(-1400f, -571f, vec3<f32>(1646f, -356f, 1081f)), Struct_1(345f, -1394f, vec3<f32>(-672f, -483f, -1847f)), Struct_1(-427f, 1366f, vec3<f32>(1000f, 608f, 617f)), Struct_1(728f, -1954f, vec3<f32>(-2125f, 606f, -675f)), Struct_1(-332f, -1000f, vec3<f32>(-1455f, -1617f, -127f)), Struct_1(1368f, 384f, vec3<f32>(-520f, 789f, 571f)), Struct_1(299f, 854f, vec3<f32>(464f, 559f, -1190f)), Struct_1(450f, 503f, vec3<f32>(285f, 1000f, 335f)), Struct_1(-407f, -834f, vec3<f32>(-2280f, -1550f, 1244f)));

var<private> global3: vec2<f32> = vec2<f32>(-772f, 698f);

var<private> global4: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-877f, arg_0)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -968f), -498f))))));
    var_0 = _wgslsmith_f_op_f32(-global3.x);
    var var_1 = Struct_2(countOneBits(~vec4<i32>(~21031i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b), select(u_input.b, 0i, true), 21278i >> (u_input.a.x % 32u))), ~min(u_input.a, vec3<u32>(_wgslsmith_mod_u32(13373u, 48833u), max(37474u, arg_3), 8859u)), 407f);
    global1 = array<i32, 26>();
    var var_2 = u_input.b;
    return ~(~vec3<u32>(1u, 3782u, var_1.b.x));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = Struct_2(select(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(2837u, 26u)], u_input.b, -2147483647i), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(-6221i, 17436i, u_input.b, u_input.b)), vec4<i32>(global1[_wgslsmith_index_u32(~(~9764u), 26u)], _wgslsmith_sub_i32(abs(global1[_wgslsmith_index_u32(4294967295u, 26u)]), u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 26u)], ~(-1i ^ global1[_wgslsmith_index_u32(u_input.c.x, 26u)])), vec4<bool>(arg_1, all(vec3<bool>(arg_1, true, arg_1)) && true, all(vec3<bool>(arg_0, arg_1, false)), !(arg_1 & arg_0))), func_3(_wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(154f, global3.x) - global3.x)), firstTrailingBit(global1[_wgslsmith_index_u32(~(~4294967295u), 26u)]), true, 4294967295u), 1183f);
    var var_1 = ~21429u;
    let var_2 = var_0.b;
    global2 = array<Struct_1, 20>();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, global3.x)) * -606f), -469f);
    return i32(-1i) * -firstLeadingBit(-2868i);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec4<bool> {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(arg_1, ~arg_1), 0u, 20404u);
    let var_1 = vec3<i32>(func_2(false, true), countOneBits(-global1[_wgslsmith_index_u32(3265u >> (~4294967295u % 32u), 26u)]), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 26u)], _wgslsmith_add_i32(~(-21609i) & (global1[_wgslsmith_index_u32(56767u, 26u)] & global1[_wgslsmith_index_u32(0u, 26u)]), min(u_input.b, -19755i))));
    let var_2 = Struct_2(firstTrailingBit(_wgslsmith_div_vec4_i32(select(~vec4<i32>(u_input.b, u_input.b, var_1.x, -20403i), vec4<i32>(-1i, -41893i, -1851i, global1[_wgslsmith_index_u32(arg_1, 26u)]), all(vec2<bool>(false, false))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], var_1.x, 2649i) & vec4<i32>(-2147483647i, -2147483647i, u_input.b, var_1.x), vec4<i32>(5503i, -28941i, global1[_wgslsmith_index_u32(106049u, 26u)], 7460i) << (vec4<u32>(1u, 2777u, 12592u, var_0.x) % vec4<u32>(32u))))), countOneBits(abs(vec3<u32>(~var_0.x, 1u, _wgslsmith_clamp_u32(6975u, 63104u, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-278f)) * _wgslsmith_f_op_f32(-global3.x))) - 796f));
    let var_3 = global2[_wgslsmith_index_u32(1u, 20u)];
    var var_4 = var_2;
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec3<bool>(false, false, u_input.c.x < 4294967295u), vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), true), vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), false != any(vec2<bool>(false, false)), !any(vec2<bool>(false, false)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), any(func_1(vec4<f32>(-714f, -408f, global3.x, global3.x), u_input.c.x))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false), true), any(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 800f, global3.x)), u_input.c.x))));
    var var_1 = countOneBits(_wgslsmith_sub_u32(u_input.a.x & abs(~99022u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, firstTrailingBit(1u), _wgslsmith_sub_u32(26422u, u_input.c.x)), u_input.a)));
    var_1 = func_3(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(global3.x * -298f)) + _wgslsmith_f_op_f32(round(global3.x)))), ~max(countOneBits(_wgslsmith_div_i32(0i, -15889i)), 0i), true, min(85166u, _wgslsmith_add_u32(u_input.c.x, countOneBits(u_input.c.x)))).x;
    var var_2 = _wgslsmith_add_vec2_u32(select(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.c.x, 1u) << (u_input.c % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(1u, 81243u)), vec2<bool>(var_0.x, var_0.x)), u_input.c), select(u_input.c, vec2<u32>(u_input.c.x >> (0u % 32u), u_input.a.x), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 353f), vec4<f32>(global3.x, -2068f, global3.x, -931f)), 58945u).zx), vec2<bool>(var_0.x, true)), u_input.c);
    global4 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(54685u, u_input.a.x, 0u), u_input.a) | ~u_input.a) | ~(~u_input.a), min(vec3<u32>(1u, u_input.a.x, 4294967295u), u_input.a) << (~u_input.a % vec3<u32>(32u))), 26u)], -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(vec4<i32>(-27738i, ~global1[_wgslsmith_index_u32(var_2.x, 26u)], global1[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 26u)], _wgslsmith_clamp_i32(2147483647i, 4460i, u_input.b))), max(1903i, u_input.b), -787f);
}

