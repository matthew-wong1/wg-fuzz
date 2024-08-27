struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(false, false, false), -294f, vec3<f32>(-754f, -933f, 748f), 8237i, false), Struct_1(vec3<bool>(true, false, true), 261f, vec3<f32>(1000f, 2847f, 356f), -33586i, true), Struct_1(vec3<bool>(true, false, true), -1198f, vec3<f32>(1194f, 351f, -674f), i32(-2147483648), true), Struct_1(vec3<bool>(true, true, false), 172f, vec3<f32>(162f, -2204f, 1718f), i32(-2147483648), true), Struct_1(vec3<bool>(true, false, true), 1772f, vec3<f32>(-793f, -724f, 183f), i32(-2147483648), true), Struct_1(vec3<bool>(true, true, false), 890f, vec3<f32>(549f, 1469f, -440f), 36871i, true), Struct_1(vec3<bool>(true, false, true), -1000f, vec3<f32>(580f, 552f, 764f), -1i, false), Struct_1(vec3<bool>(false, false, true), -1000f, vec3<f32>(690f, 878f, 948f), 1i, false), Struct_1(vec3<bool>(false, true, false), -672f, vec3<f32>(-316f, 795f, 622f), -1i, false), Struct_1(vec3<bool>(true, false, true), -557f, vec3<f32>(2160f, 1000f, -1249f), 2766i, true), Struct_1(vec3<bool>(true, false, true), 3032f, vec3<f32>(211f, -953f, 1937f), 2147483647i, false), Struct_1(vec3<bool>(true, false, true), -271f, vec3<f32>(518f, 986f, 370f), -8302i, false), Struct_1(vec3<bool>(false, false, true), 180f, vec3<f32>(2536f, -1483f, -247f), 25443i, false), Struct_1(vec3<bool>(false, true, true), 345f, vec3<f32>(863f, 1072f, -646f), 2147483647i, true), Struct_1(vec3<bool>(true, false, true), -2454f, vec3<f32>(-646f, 528f, 447f), -1i, false), Struct_1(vec3<bool>(false, true, true), -1102f, vec3<f32>(-458f, -1342f, 662f), 0i, false), Struct_1(vec3<bool>(true, false, false), -505f, vec3<f32>(-754f, 1122f, 1098f), -47792i, true), Struct_1(vec3<bool>(false, false, false), 596f, vec3<f32>(1229f, 286f, -859f), 2147483647i, true), Struct_1(vec3<bool>(false, false, true), -821f, vec3<f32>(-1000f, 550f, 290f), -36996i, true), Struct_1(vec3<bool>(true, true, true), -1099f, vec3<f32>(1107f, -1001f, 1482f), -7603i, true), Struct_1(vec3<bool>(true, true, true), 1847f, vec3<f32>(-1395f, -854f, 159f), -1i, false), Struct_1(vec3<bool>(false, true, true), 1195f, vec3<f32>(763f, -892f, 1000f), 16002i, false), Struct_1(vec3<bool>(false, false, false), -1799f, vec3<f32>(1739f, -1000f, 243f), -13089i, true), Struct_1(vec3<bool>(true, false, true), -1118f, vec3<f32>(306f, 653f, -1011f), 1i, false), Struct_1(vec3<bool>(false, true, false), -1347f, vec3<f32>(-846f, 1000f, 1828f), i32(-2147483648), false), Struct_1(vec3<bool>(true, false, false), -1000f, vec3<f32>(-990f, -747f, -644f), i32(-2147483648), false), Struct_1(vec3<bool>(true, false, true), 907f, vec3<f32>(-546f, 1072f, -249f), 0i, true), Struct_1(vec3<bool>(false, false, true), 1335f, vec3<f32>(753f, 964f, 753f), -1i, false), Struct_1(vec3<bool>(true, true, true), 1000f, vec3<f32>(1000f, 167f, 1893f), 62264i, false), Struct_1(vec3<bool>(false, false, false), 104f, vec3<f32>(1044f, -182f, -1000f), -1i, true), Struct_1(vec3<bool>(true, true, true), 1000f, vec3<f32>(-1507f, 1639f, -1000f), i32(-2147483648), false), Struct_1(vec3<bool>(false, false, true), 1000f, vec3<f32>(-892f, -1000f, 495f), -28664i, true));

var<private> global2: vec3<f32> = vec3<f32>(-283f, 918f, -674f);

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<vec4<i32>, 10>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = ~46253i;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~u_input.d << (u_input.d % vec3<u32>(32u))), u_input.a), _wgslsmith_div_u32(u_input.a.x, ~firstLeadingBit(_wgslsmith_mod_u32(u_input.b, 65882u))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 97580u), ~35886u, 4294967295u)), 21u)];
    global3 = array<Struct_1, 21>();
    let var_2 = ~(-(_wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(arg_3.x, arg_3.x)) >> (reverseBits(u_input.a.yy) % vec2<u32>(32u))) | -firstTrailingBit(_wgslsmith_clamp_vec2_i32(arg_3.zw, arg_3.zw, u_input.e)));
    let var_3 = var_1.e;
    return vec2<bool>(arg_0.a.x, ((var_2.x | -7851i) >> (27478u % 32u)) >= _wgslsmith_dot_vec2_i32(u_input.e, u_input.e));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global4 = array<vec4<i32>, 10>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-542f))))));
    global0 = array<i32, 28>();
    var var_2 = vec4<bool>(!all(!func_3(global3[_wgslsmith_index_u32(31787u, 21u)], -1000f, vec3<bool>(false, true, true), vec4<i32>(arg_0.x, arg_0.x, -1i, u_input.c))), false | (~4294967295u >= min(u_input.a.x, u_input.b)), true | any(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, var_0), vec3<bool>(true, false, true))), var_0);
    return _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    global0 = array<i32, 28>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_1 = Struct_1(select(select(vec3<bool>(true, !var_0.e, var_0.e), var_0.a, true & all(vec3<bool>(var_0.e, var_0.e, var_0.e))), var_0.a, var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_vec3_f32(arg_0 * arg_0), firstTrailingBit(u_input.c), !var_0.e || var_0.a.x);
    global2 = var_1.c;
    global3 = array<Struct_1, 21>();
    return Struct_1(select(var_0.a, !select(select(vec3<bool>(true, true, var_1.a.x), var_0.a, var_1.a.x), vec3<bool>(var_0.a.x, var_1.a.x, var_0.e), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f + global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f - -597f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + 1710f)))), var_1.c.x), var_1.d, true);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(1093f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-810f, global2.x, false)))) + global2.x)), -274f);
    var var_1 = Struct_1(vec3<bool>(u_input.d.x == firstLeadingBit(24407u), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true), 969f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0, 1355f))))), 784f, -1003f), (u_input.e.x >> ((u_input.d.x | (4294967295u << (u_input.d.x % 32u))) % 32u)) << (abs(u_input.b) % 32u), true);
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(var_1.d, u_input.e.x, u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 28u)]))), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-var_1.c.x)))), -_wgslsmith_div_i32(firstLeadingBit(55639i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -1i), vec3<i32>(1i, -20363i, 26970i)), vec3<i32>(-1i, global0[_wgslsmith_index_u32(51736u, 28u)], -2147483647i) & vec3<i32>(0i, -81124i, -48498i))));
    var var_3 = Struct_1(func_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(trunc(var_0)), var_2.a.x)), var_0, var_1.b), abs(var_1.d & var_2.d) >> ((_wgslsmith_sub_u32(u_input.d.x, 56436u) ^ firstLeadingBit(58257u)) % 32u)).a, _wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_2.b, 109f) - vec3<f32>(var_0, 835f, 680f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(func_4(var_1.c, -1i).c, vec3<f32>(var_2.c.x, var_2.c.x, var_1.c.x))))), _wgslsmith_div_i32(14494i, 24327i), !func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)), -2147483647i).e);
    var var_4 = var_2.a.x | false;
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(288f * global2.x), var_1.c.x), -1045f, -1433f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, 730f, global2.x, var_2.b))))), vec4<f32>(1148f, var_1.c.x, _wgslsmith_f_op_f32(var_3.b - var_1.c.x), -465f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(110f, 651f, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(574f, -1927f, global2.x, global2.x), vec4<f32>(1049f, 1000f, global2.x, global2.x), true)))) + vec4<f32>(global2.x, global2.x, global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1011f * global2.x))))));
    var var_1 = Struct_1(select(select(vec3<bool>(true, select(false, false, false), select(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), func_4(var_0.xyy, 31231i).a, func_3(global3[_wgslsmith_index_u32(4294967295u, 21u)], -1176f, vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(4294967295u, 10u)]).x)), select(vec3<bool>(any(vec2<bool>(false, false)), true, select(false, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1529f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-238f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, _wgslsmith_div_f32(-778f, global2.x), _wgslsmith_f_op_f32(759f - var_0.x)))), _wgslsmith_mod_i32(firstLeadingBit(-global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 28u)]), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(49778u, 28u)], 1i, 0i, -23811i) | firstLeadingBit(vec4<i32>(-1i, u_input.e.x, 29304i, -15637i)), vec4<i32>(4698i, abs(u_input.e.x), -global0[_wgslsmith_index_u32(40409u, 28u)], -48398i))), true);
    global3 = array<Struct_1, 21>();
    var var_2 = var_1.c.x;
    let var_3 = global3[_wgslsmith_index_u32(~(~firstLeadingBit(u_input.a.x)), 21u)];
    let var_4 = 1u;
    var_1 = Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.c * vec3<f32>(var_0.x, var_0.x, -783f)) + _wgslsmith_f_op_vec3_f32(trunc(var_0.wyy))) - var_1.c)), u_input.c, func_3(Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-498f, global2.x))), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-global2.x), var_3.c.x), 1i, !(-1i != global0[_wgslsmith_index_u32(77707u, 28u)])), _wgslsmith_f_op_f32(-var_1.b), !(!vec3<bool>(false, false, var_3.e)), global4[_wgslsmith_index_u32(u_input.d.x, 10u)]).x);
    let x = u_input.a;
    s_output = StorageBuffer(-578f, 219f);
}

