struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, i32(-2147483648), 33320i, 21355i, -24529i, 0i, -8149i, 0i, -1i);

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(1044f, -306f, -1761f), vec3<f32>(-229f, -1302f, 781f), vec3<f32>(-1155f, 1000f, 393f), vec3<f32>(783f, -605f, 440f), vec3<f32>(-725f, 633f, 257f), vec3<f32>(1425f, 159f, -300f), vec3<f32>(1120f, -1021f, 550f), vec3<f32>(928f, -1426f, 1173f), vec3<f32>(-653f, -1651f, -817f), vec3<f32>(1415f, 700f, 1391f), vec3<f32>(192f, -335f, 757f), vec3<f32>(-149f, -838f, 445f), vec3<f32>(-651f, 1748f, -362f), vec3<f32>(-1420f, -1000f, 519f), vec3<f32>(1462f, -1088f, -828f), vec3<f32>(270f, 994f, 1320f), vec3<f32>(-897f, 2138f, -1323f), vec3<f32>(-435f, 1229f, -451f), vec3<f32>(674f, 257f, 1617f), vec3<f32>(2024f, -943f, -1000f), vec3<f32>(-1000f, -1101f, -511f), vec3<f32>(912f, 810f, -2494f), vec3<f32>(314f, 112f, -1167f), vec3<f32>(691f, -491f, -316f), vec3<f32>(-264f, -661f, 288f), vec3<f32>(722f, -597f, 1031f), vec3<f32>(1123f, 761f, -652f), vec3<f32>(619f, 294f, -1119f), vec3<f32>(-304f, 1000f, -1478f), vec3<f32>(-1464f, 753f, -1235f), vec3<f32>(-1478f, 1636f, -526f), vec3<f32>(1000f, -662f, 486f));

var<private> global3: f32 = 744f;

var<private> global4: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(0i, -38889i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    let var_0 = ~(~(~1u));
    var var_1 = true;
    global1 = 16476u;
    global3 = 622f;
    var var_2 = max(u_input.a, ~(~0i));
    return false;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(913f, 1771f)), -128f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(870f)) + -240f))));
    global4 = array<vec3<i32>, 1>();
    global2 = array<vec3<f32>, 32>();
    let var_1 = Struct_1(-949f, global0[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 21811u, u_input.b, 4294967295u), ~vec4<u32>(u_input.b, u_input.b, 0u, 1u)), abs(~select(u_input.b, 61162u, true)), all(vec3<bool>(false, false, all(vec2<bool>(true, true))))), 9u)], vec4<bool>(func_3(), false, u_input.a <= _wgslsmith_sub_i32(abs(u_input.a), ~(-2147483647i)), true), select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, !func_3()), all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_i32(abs(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 11057i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 9u)]));
    var var_2 = var_1.d;
    return ~reverseBits(global0[_wgslsmith_index_u32(~(0u << (u_input.b % 32u)), 9u)] >> (u_input.b % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(arg_0.x, -1192f), false)))), -8995i, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(u_input.b, 9u)] <= global0[_wgslsmith_index_u32(5050u, 9u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), u_input.b > 0u)), vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_mult_i32(1i, abs(0i)) <= u_input.a), func_2() ^ 0i);
    let var_1 = ~(~firstLeadingBit(~vec3<u32>(44593u, u_input.b, u_input.b)));
    var var_2 = Struct_2(_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(u_input.b, 11228u, u_input.b))), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.x, var_1.x, var_1.x)), ~vec3<u32>(0u, 1u, 7142u)), ~(~4294967295u), firstTrailingBit(u_input.b))), ~firstLeadingBit(reverseBits(vec2<i32>(-2331i, -2147483647i)) | vec2<i32>(var_0.e, -29383i)), (true & !any(var_0.c.wy)) & func_3());
    return ~_wgslsmith_mod_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(81042u, var_2.a.x, var_1.x, var_2.a.x), vec4<u32>(u_input.b, 84064u, u_input.b, 22675u), vec4<u32>(1u, var_2.a.x, 52891u, var_2.a.x))), min(abs(vec4<u32>(84758u, 1u, u_input.b, 0u)), ~vec4<u32>(1u, var_2.a.x, var_2.a.x, var_1.x)) << ((vec4<u32>(var_2.a.x, u_input.b, var_1.x, 4294967295u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 1u, var_2.a.x, var_2.a.x), vec4<u32>(4294967295u, 27262u, var_1.x, var_2.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 1>();
    global2 = array<vec3<f32>, 32>();
    global0 = array<i32, 9>();
    var var_0 = ((min(~vec4<u32>(u_input.b, u_input.b, u_input.b, 7902u), vec4<u32>(u_input.b, 84358u, 13101u, u_input.b)) << (vec4<u32>(firstTrailingBit(6898u), u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(~25363u, 32593u, 1u, 4294967295u)) % vec4<u32>(32u))) | max(~(~max(vec4<u32>(1u, 48495u, u_input.b, 16515u), vec4<u32>(80904u, 43180u, 40631u, u_input.b))), (func_1(vec2<f32>(-1000f, -500f), 2147483647i) ^ vec4<u32>(40729u, 4573u, 0u, u_input.b)) | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, 1u, 29453u, 1321u))));
    var var_1 = Struct_2(var_0.zzz, vec2<i32>(firstLeadingBit(abs(-18833i)), -global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, u_input.b), 9u)]), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(-507f - 1717f)), -1560f)))), 5738u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1629f, -1073f, _wgslsmith_f_op_f32(1f - -1231f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-458f, 522f)))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, -1000f)))), _wgslsmith_clamp_i32(u_input.a, firstLeadingBit(reverseBits(u_input.a)), -856i)).yy, 4294967295u);
}

