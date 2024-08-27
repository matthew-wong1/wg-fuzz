struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-156f, 1158f, -460f, 1625f, 961f, -1109f, 370f, 366f, -536f, 251f, -1312f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(false, false, false, true), -870f, vec2<u32>(57723u, 33967u)), Struct_1(vec4<bool>(false, false, false, true), 137f, vec2<u32>(70582u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, true), 912f, vec2<u32>(97464u, 95270u)), Struct_1(vec4<bool>(false, false, false, false), 640f, vec2<u32>(53763u, 0u)), Struct_1(vec4<bool>(false, true, false, true), -1348f, vec2<u32>(21683u, 60004u)), Struct_1(vec4<bool>(false, true, true, false), -559f, vec2<u32>(29904u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, true), 1021f, vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), -543f, vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(true, false, true, false), -500f, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(true, false, false, true), 1022f, vec2<u32>(4672u, 0u)), Struct_1(vec4<bool>(false, false, true, false), 972f, vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(false, true, false, true), 1602f, vec2<u32>(4294967295u, 26890u)), Struct_1(vec4<bool>(true, true, false, true), -326f, vec2<u32>(16157u, 0u)), Struct_1(vec4<bool>(false, false, false, false), 1514f, vec2<u32>(0u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), -376f, vec2<u32>(4294967295u, 76707u)), Struct_1(vec4<bool>(false, false, false, true), 360f, vec2<u32>(35300u, 9007u)), Struct_1(vec4<bool>(true, true, true, false), 1225f, vec2<u32>(11734u, 75781u)), Struct_1(vec4<bool>(false, false, true, true), -464f, vec2<u32>(79843u, 14645u)), Struct_1(vec4<bool>(true, false, true, true), 894f, vec2<u32>(12904u, 0u)), Struct_1(vec4<bool>(false, true, true, false), -353f, vec2<u32>(23210u, 8377u)), Struct_1(vec4<bool>(false, false, true, false), -175f, vec2<u32>(9981u, 0u)), Struct_1(vec4<bool>(true, false, true, true), -1093f, vec2<u32>(39636u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, true), 597f, vec2<u32>(10388u, 0u)), Struct_1(vec4<bool>(false, true, true, false), -940f, vec2<u32>(4294967295u, 30557u)), Struct_1(vec4<bool>(true, true, false, true), 1019f, vec2<u32>(48031u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, false), 1110f, vec2<u32>(4294967295u, 65662u)), Struct_1(vec4<bool>(true, true, true, true), 2075f, vec2<u32>(0u, 0u)), Struct_1(vec4<bool>(true, false, true, true), -1314f, vec2<u32>(0u, 0u)));

var<private> global2: f32 = 1239f;

var<private> global3: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    var var_0 = arg_0.a.x;
    global0 = array<f32, 11>();
    let var_1 = reverseBits(vec2<u32>(28539u | ~firstTrailingBit(74539u), u_input.d));
    let var_2 = Struct_1(vec4<bool>(!((-1i >= u_input.c.x) & !arg_0.a.x), false, !any(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1350f + _wgslsmith_f_op_f32(-arg_0.b)))), min(vec2<u32>(u_input.b.x, 9078u | u_input.b.x) ^ ~vec2<u32>(85289u, var_1.x), abs(max(vec2<u32>(u_input.d, 43932u), u_input.b))));
    let var_3 = var_2;
    return u_input.c.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = firstTrailingBit(-2147483647i | _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -4411i, 0i), -809i), func_3(global1[_wgslsmith_index_u32(0u, 28u)], var_0.b, vec2<bool>(false, arg_0.x))));
    var var_2 = Struct_1(!vec4<bool>(any(select(vec4<bool>(true, arg_3, var_0.a.x, false), arg_2.a, var_0.a)), arg_0.x, true, arg_0.x & true), _wgslsmith_f_op_f32(abs(-229f)), arg_2.c);
    var var_3 = Struct_1(!(!vec4<bool>(true, !var_2.a.x, true, !arg_1.x)), var_2.b, _wgslsmith_add_vec2_u32(vec2<u32>(~1u, firstLeadingBit(var_0.c.x) ^ 53268u), u_input.b));
    return arg_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global3 = all(select(vec2<bool>(!any(arg_2.a), !arg_0.x), vec2<bool>(select(u_input.c.x, 30008i, arg_1) == _wgslsmith_add_i32(u_input.c.x, 1i), !arg_1), !arg_1));
    global3 = any(arg_2.a);
    let var_0 = ~arg_2.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(trunc(arg_2.b)))));
    global1 = array<Struct_1, 28>();
    return ~7467u;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global3 = arg_2.a.x;
    let var_0 = ~arg_2.c.x ^ arg_0;
    let var_1 = vec3<bool>(true, false, (42972i < _wgslsmith_div_i32(_wgslsmith_add_i32(32048i, arg_1), _wgslsmith_div_i32(-16052i, arg_1))) | arg_2.a.x);
    var var_2 = ~func_4(!vec2<bool>(arg_1 > u_input.a, arg_2.a.x | true), false && !(false && arg_2.a.x), func_2(!vec4<bool>(false, var_1.x, var_1.x, arg_2.a.x), arg_2.a, global1[_wgslsmith_index_u32(var_0, 28u)], false || (true && arg_2.a.x)));
    var var_3 = global0[_wgslsmith_index_u32(arg_2.c.x, 11u)];
    return func_2(arg_2.a, arg_2.a, func_2(vec4<bool>(any(arg_2.a) | arg_2.a.x, arg_2.a.x, !var_1.x, false), select(arg_2.a, func_2(vec4<bool>(true, false, var_1.x, false), func_2(vec4<bool>(arg_2.a.x, true, false, false), arg_2.a, global1[_wgslsmith_index_u32(125850u, 28u)], true).a, func_2(vec4<bool>(arg_2.a.x, arg_2.a.x, true, var_1.x), arg_2.a, Struct_1(vec4<bool>(var_1.x, var_1.x, arg_2.a.x, true), global0[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(arg_2.c.x, var_0)), var_1.x), arg_2.a.x).a, vec4<bool>(var_1.x || var_1.x, func_2(vec4<bool>(arg_2.a.x, var_1.x, var_1.x, true), arg_2.a, Struct_1(arg_2.a, arg_2.b, arg_2.c), true).a.x, arg_2.a.x, false | var_1.x)), func_2(select(select(arg_2.a, arg_2.a, var_1.x), arg_2.a, vec4<bool>(true, true, false, false)), arg_2.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b.x, u_input.b.x), vec3<u32>(1u, 1u, 1u)), 28u)], arg_2.a.x), arg_1 < arg_1), true);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1581f, arg_2.b, -1508f)), _wgslsmith_div_vec3_f32(vec3<f32>(997f, -1000f, 1285f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], arg_3.b, -561f)))))))));
    return -_wgslsmith_mod_i32(u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_5(max(u_input.b, u_input.b), all(vec4<bool>(false, true, true, all(vec4<bool>(true, true, false, false)))), func_1(countOneBits(~u_input.d), _wgslsmith_clamp_i32(-34171i, 1i, 2147483647i), global1[_wgslsmith_index_u32(abs(~4844u), 28u)]), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1881f * 111f)), u_input.b)), ~u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mod_i32(-2147483647i, 6931i), 61515i), _wgslsmith_div_vec3_i32(~u_input.c.xww, vec3<i32>(u_input.a, -16722i, 2147483647i))), u_input.c.yzz));
    var var_1 = _wgslsmith_mod_i32(var_0.x, -1i & u_input.c.x);
    global1 = array<Struct_1, 28>();
    var var_2 = ~(-(func_5(vec2<u32>(u_input.b.x, u_input.d), true, func_1(48340u, 2147483647i, Struct_1(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.b)), Struct_1(vec4<bool>(true, true, false, false), -1020f, vec2<u32>(u_input.b.x, u_input.b.x))) << (16540u % 32u)));
    global1 = array<Struct_1, 28>();
    var var_3 = Struct_1(vec4<bool>(true, true, true, true), 1793f, _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 40037u, u_input.d), vec4<u32>(1u, u_input.d, u_input.d, 8002u)), u_input.d & 12847u)) >> (vec2<u32>(firstLeadingBit(u_input.b.x), max(u_input.b.x, 0u) & reverseBits(u_input.d)) % vec2<u32>(32u)));
    var_2 = var_0.x;
    let var_4 = global0[_wgslsmith_index_u32(u_input.b.x, 11u)];
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f * global0[_wgslsmith_index_u32(32281u, 11u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.b, -169f)) * _wgslsmith_f_op_f32(floor(1379f))), _wgslsmith_f_op_f32(trunc(308f))), 2213f, -517f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_3.c.x, 11u)])) * var_3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), _wgslsmith_f_op_f32(var_3.b + global0[_wgslsmith_index_u32(var_3.c.x, 11u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, 22407u, 4294967295u, 30723u), vec4<u32>(4294967295u, 35913u, u_input.d, u_input.b.x)), 11u)])) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -219f, var_3.b, var_3.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 588f, -1137f), vec4<f32>(var_3.b, 400f, var_3.b, global0[_wgslsmith_index_u32(u_input.d, 11u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], 1252f, var_3.b, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]) + vec4<f32>(global0[_wgslsmith_index_u32(var_3.c.x, 11u)], var_3.b, var_3.b, 1276f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(-firstTrailingBit(1i), (i32(-1i) * -16197i) | u_input.c.x, u_input.a)), 29931u, countOneBits(~(-1i)));
}

