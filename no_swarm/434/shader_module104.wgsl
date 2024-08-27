struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-479f, 359f, -388f, -1669f, 1086f, -1448f, 440f, 442f, 1936f, -786f, -1214f, -727f, -382f, 560f, 1356f, -2109f, -2312f, -390f, 1271f, -396f, -173f);

var<private> global1: vec2<u32> = vec2<u32>(47683u, 1u);

var<private> global2: u32;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(4294967295u, Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec4<i32>(1i, 0i, -25037i, -8418i), vec3<f32>(-223f, 770f, -1134f)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec4<i32>(-30589i, 86751i, 37262i, 27922i), vec3<f32>(1831f, -545f, -127f)), 58530u, Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec4<i32>(1i, -17715i, 2147483647i, 2147483647i), vec3<f32>(-803f, 1440f, 289f))), Struct_2(1u, Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec4<i32>(0i, -1i, 5847i, 1i), vec3<f32>(-1503f, 118f, 1000f)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec4<i32>(85476i, 2147483647i, -1i, -1i), vec3<f32>(1155f, 779f, 174f)), 44568u, Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec4<i32>(1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<f32>(-1166f, 502f, 765f))), Struct_2(1u, Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec4<i32>(-31634i, -5233i, 2147483647i, 2147483647i), vec3<f32>(-680f, 1366f, 953f)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec4<i32>(-12813i, 56013i, 1i, 32142i), vec3<f32>(-587f, -2001f, 1293f)), 40190u, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 1i, -20722i, -42883i), vec3<f32>(377f, -1769f, -1000f))), Struct_2(31305u, Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec4<i32>(0i, 66115i, -9903i, -32985i), vec3<f32>(344f, 184f, 840f)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec4<i32>(0i, i32(-2147483648), -9130i, 2147483647i), vec3<f32>(368f, 461f, 1335f)), 1u, Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec4<i32>(1i, -20550i, 2147483647i, 28483i), vec3<f32>(249f, -1205f, 599f))), Struct_2(0u, Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 1i, -1i, 26723i), vec3<f32>(-341f, -1000f, 1174f)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), vec3<f32>(-267f, 1419f, 372f)), 68159u, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec4<i32>(-1i, -31724i, -14918i, 20715i), vec3<f32>(1920f, 773f, -433f))), Struct_2(21630u, Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec4<i32>(2147483647i, -54289i, 42479i, 2147483647i), vec3<f32>(-715f, 314f, 1001f)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -4350i, 0i, -1i), vec3<f32>(-1772f, 565f, -2069f)), 100121u, Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec4<i32>(55582i, -1i, -5589i, 19738i), vec3<f32>(-1000f, 187f, 129f))));

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global4 = array<Struct_1, 31>();
    let var_0 = -vec3<i32>(~0i, -14082i, abs(abs(-44527i)));
    global0 = array<f32, 21>();
    var var_1 = var_0;
    global4 = array<Struct_1, 31>();
    return ~((abs(global1.x & 0u) | u_input.a.x) ^ reverseBits(arg_1.x));
}

fn func_3(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(40410u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 21u)])))));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(global1.x, 0u, global1.x)) ^ (u_input.a.x << (2385u % 32u)), 26132u, ~arg_0) & countOneBits(~min(vec3<u32>(38133u, 32596u, global1.x), u_input.a.yzw));
    var var_2 = 13327u;
    global4 = array<Struct_1, 31>();
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -10237i, ~1723i), vec3<i32>(1i, 1i, 1i))) ^ -vec3<i32>(abs(_wgslsmith_div_i32(-65859i, -22539i)), 0i, firstTrailingBit(_wgslsmith_div_i32(-10985i, -1i)));
    return Struct_2(0u, Struct_1(vec4<bool>(true, all(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), vec2<bool>(true, true)), firstTrailingBit(vec4<i32>(abs(var_3.x), var_3.x, _wgslsmith_clamp_i32(var_3.x, var_3.x, var_3.x), _wgslsmith_mod_i32(var_3.x, var_3.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-969f, global0[_wgslsmith_index_u32(26736u, 21u)], 389f) + vec3<f32>(-1588f, -432f, global0[_wgslsmith_index_u32(global1.x, 21u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, global0[_wgslsmith_index_u32(global1.x, 21u)], arg_1), vec3<f32>(arg_1, arg_1, -683f))))))), Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec4<i32>(-23093i, -1i, 1i, abs(_wgslsmith_div_i32(4792i, var_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 21u)], _wgslsmith_f_op_f32(abs(-525f)), arg_1) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 141f, global0[_wgslsmith_index_u32(57775u, 21u)]) * vec3<f32>(-807f, -608f, 1000f))))), ~1u, global4[_wgslsmith_index_u32(~abs(var_1.x), 31u)]);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = Struct_3(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(abs(reverseBits(u_input.a.x)), ~global1.x, ~u_input.a.x), (_wgslsmith_div_u32(1u, u_input.a.x) & 0u) >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(u_input.a.xxw, (vec3<u32>(global1.x, 9329u, 47206u) >> (vec3<u32>(39397u, global1.x, 4294967295u) % vec3<u32>(32u))) | (u_input.a.yxz >> (vec3<u32>(25159u, 17644u, global1.x) % vec3<u32>(32u))))), select(vec4<bool>(true, true, true, true), arg_1.a, !arg_1.a), func_3(abs(1u), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, global1.x) ^ func_2(-1277f, u_input.a), 21u)]), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, select(35873u, 4294967295u, true), 1u), ~vec3<u32>(u_input.a.x, global1.x, 4294967295u) << (_wgslsmith_mult_vec3_u32(u_input.a.zwx, u_input.a.xyx) % vec3<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zzy, u_input.a.wxz), ~u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(global1.x, 4294967295u)));
    global1 = vec2<u32>(1u, func_3(43673u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.c.b.d.x, 905f)))))).d);
    let var_1 = vec4<bool>(any(var_0.c.e.a), any(arg_1.a.xz), true, true);
    global4 = array<Struct_1, 31>();
    global1 = u_input.a.yy;
    return StorageBuffer(~(~select(arg_1.c, vec4<i32>(var_0.c.c.c.x, -2147483647i, arg_2.x, 1i), arg_1.a.x)), ~_wgslsmith_add_u32(18123u, var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    let var_0 = abs(u_input.a.yw);
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global4 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = func_1(0i, Struct_1(vec4<bool>(true, true, true, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, false))), vec4<i32>(max(abs(-2147483647i), ~38163i), firstLeadingBit(3148i), 2147483647i, ~_wgslsmith_add_i32(-3162i, 37785i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1122f, 1107f, global0[_wgslsmith_index_u32(global1.x, 21u)]), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(global1.x, 21u)], global0[_wgslsmith_index_u32(global1.x, 21u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 293f)))), vec3<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_f32(trunc(1000f))))), vec3<i32>(-2147483647i, -2147483647i, -15196i), vec4<bool>(true, u_input.a.x == u_input.a.x, true, false));
}

