struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(0i, -12974i, -50443i, -30067i, i32(-2147483648), 2147483647i, -1099i, 9329i, 17104i, 2147483647i, i32(-2147483648), -33294i, 4566i, 0i, 1i, 5388i, 48647i, 15390i, i32(-2147483648), 20308i, -1i, 0i, -29588i, 37796i);

var<private> global1: bool;

var<private> global2: vec4<u32> = vec4<u32>(1u, 4294967295u, 76281u, 41528u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    global2 = ~vec4<u32>(4294967295u, 22965u, 0u | u_input.c, 88376u);
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2206f, 630f, arg_0.b.a.x, arg_0.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.a, arg_0.b.a.x, arg_0.c.a.x), arg_0.e.a.a, true))) * arg_0.e.d.a)), 1155f, arg_0.d.c, Struct_2(arg_0.c, vec2<i32>(u_input.b, countOneBits(8235i ^ global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, 756f, -761f, -1000f))))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.a.a.x, -340f, -771f, 2808f), arg_0.d.c.d.a, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, 194f, -990f, arg_0.c.a.x))))))));
    global2 = ~vec4<u32>(u_input.c, reverseBits(_wgslsmith_clamp_u32(~0u, ~u_input.c, _wgslsmith_clamp_u32(u_input.c, 12497u, 4294967295u))), abs(4294967295u), global2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1464f, _wgslsmith_f_op_f32(abs(var_0.c.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -640f)));
    let var_2 = arg_0.e;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.a.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1652f)))))))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = countOneBits(-firstTrailingBit(-vec4<i32>(u_input.a.x, 32403i, global0[_wgslsmith_index_u32(u_input.c, 24u)], arg_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(225f, Struct_1(vec4<f32>(-432f, 670f, -294f, 383f)), Struct_1(vec4<f32>(-1764f, 1000f, 1000f, -1085f)), Struct_3(Struct_1(vec4<f32>(2594f, 711f, -1780f, 161f)), -998f, Struct_2(Struct_1(vec4<f32>(-497f, 2056f, -545f, 310f)), vec2<i32>(var_0.x, 31243i), vec4<f32>(406f, -2575f, -1684f, -1021f), Struct_1(vec4<f32>(156f, -1489f, -1000f, 394f))), Struct_2(Struct_1(vec4<f32>(1000f, 777f, 1361f, 641f)), vec2<i32>(-1i, u_input.a.x), vec4<f32>(-212f, -1267f, 1157f, -291f), Struct_1(vec4<f32>(130f, -1139f, 599f, 1153f)))), Struct_2(Struct_1(vec4<f32>(-1000f, -176f, -137f, 172f)), vec2<i32>(-3882i, u_input.a.x), vec4<f32>(-833f, 1299f, 887f, -898f), Struct_1(vec4<f32>(1537f, -521f, -2008f, 738f)))), 72577i))), _wgslsmith_f_op_f32(floor(-531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-874f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(498f * -478f) + _wgslsmith_f_op_f32(abs(434f))), _wgslsmith_f_op_f32(round(997f))), vec3<bool>(false, true, true))), vec3<f32>(_wgslsmith_f_op_f32(sign(469f)), 1f, _wgslsmith_f_op_f32(round(-970f)))));
    var var_2 = vec4<u32>(0u, global2.x, ~countOneBits(~global2.x), 55181u);
    global1 = true;
    var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(117955u, firstLeadingBit(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 61421u), vec3<u32>(u_input.c, u_input.c, 59004u)), 32850u), max(reverseBits(vec4<u32>(1u, u_input.c, _wgslsmith_sub_u32(var_2.x, 90235u), countOneBits(0u))), ~(~vec4<u32>(u_input.c, var_2.x, var_2.x, 0u))));
    return abs(29723u);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u & _wgslsmith_mod_u32(reverseBits(0u), global2.x), u_input.c), 24u)]);
    let var_1 = Struct_3(arg_1.d, _wgslsmith_f_op_f32(func_3(Struct_4(968f, arg_1.d, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1000f, arg_1.d.a.x, -1000f))), Struct_3(arg_1.d, arg_1.a.a.x, arg_1, arg_1), arg_1), 20862i ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.b.x, 2147483647i, arg_1.b.x)), firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(60887u, 24u)], arg_1.b.x, 16528i))))), arg_1, Struct_2(arg_1.d, ~select(~arg_1.b, arg_0, true), _wgslsmith_f_op_vec4_f32(arg_1.d.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.c, vec4<f32>(-1000f, arg_1.a.a.x, -235f, arg_1.d.a.x)))), arg_1.a));
    global1 = true;
    global1 = any(!select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), var_1.d.d.a.x < arg_1.c.x), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), true), vec3<bool>(false, all(vec3<bool>(true, false, false)), true)));
    let var_2 = abs(~(-_wgslsmith_mult_vec2_i32(arg_1.b, var_1.d.b)) >> ((~vec2<u32>(27550u, 15657u) | vec2<u32>(498u, u_input.c)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x), -1297f, _wgslsmith_f_op_f32(round(942f)))) + _wgslsmith_f_op_vec4_f32(-arg_1.d.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.d.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1487f, var_1.d.d.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))), _wgslsmith_f_op_f32(max(arg_1.c.x, 819f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -438f, 680f, arg_1.a.a.x) - vec4<f32>(var_1.d.c.x, arg_1.a.a.x, var_1.a.a.x, arg_1.d.a.x)))) * var_1.c.c)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    var var_0 = select(vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(false, true, true)))), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(true, true), true), vec2<bool>(true, true));
    global2 = ~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, u_input.c, global2.x) << (vec4<u32>(global2.x, 17388u, u_input.c, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(23315u, u_input.c, 81098u, 0u), abs(vec4<u32>(0u, u_input.c, 6698u, 6390u)), vec4<u32>(0u, global2.x, global2.x, 0u))));
    global0 = array<i32, 24>();
    let var_1 = arg_1.a;
    let var_2 = any(select(select(vec3<bool>(var_0.x & var_0.x, var_0.x, var_0.x), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, true)), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), vec3<bool>(!select(var_0.x, false, var_0.x), var_0.x, any(select(vec2<bool>(false, true), vec2<bool>(true, false), var_0.x))), vec3<bool>(true, true, true)));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(step(-393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1046f)) * _wgslsmith_f_op_f32(step(-1696f, 463f))))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2062f, 321f, 253f, 1461f)), vec4<f32>(-540f, -736f, -125f, -759f)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(u_input.a, Struct_2(Struct_1(vec4<f32>(880f, 854f, -407f, 395f)), u_input.a, vec4<f32>(592f, 511f, 716f, 1032f), Struct_1(vec4<f32>(642f, 1303f, -259f, -1165f)))))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-759f, -1315f, 2187f, 412f))), -153f, Struct_2(Struct_1(vec4<f32>(-420f, -736f, 259f, -1525f)), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-484f, -255f, -1000f, 2523f), vec4<f32>(-1808f, -1000f, 1000f, -706f), vec4<bool>(false, true, false, false))), Struct_1(vec4<f32>(1664f, 977f, 432f, 482f))), Struct_2(Struct_1(vec4<f32>(-498f, 1090f, 1224f, -251f)), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, 778f, 907f, -922f)), Struct_1(vec4<f32>(-736f, -586f, 1695f, 2388f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, -369f, -1308f, 1107f))), vec2<i32>(~u_input.a.x, _wgslsmith_mod_i32(-11938i, global0[_wgslsmith_index_u32(48190u, 24u)])), vec4<f32>(_wgslsmith_f_op_f32(253f + 252f), _wgslsmith_f_op_f32(f32(-1f) * -2691f), -426f, 142f), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(646f, -634f, 534f, -759f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-857f, -221f, -1034f, 1000f), vec4<f32>(1000f, 1281f, 895f, 2002f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-745f, 501f, -343f, 515f), vec4<f32>(238f, -383f, -313f, -1276f))))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-3009f * _wgslsmith_f_op_f32(func_3(Struct_4(-1436f, func_4(Struct_4(var_0.c.c.x, var_0.a, var_0.c.a, Struct_3(var_0.c.d, 312f, var_0.d, Struct_2(var_0.a, var_0.d.b, vec4<f32>(var_0.d.c.x, var_0.d.a.a.x, 210f, 794f), var_0.d.a)), Struct_2(var_0.c.d, var_0.d.b, var_0.d.c, Struct_1(vec4<f32>(229f, 723f, var_0.a.a.x, -1320f)))), var_0.a).c.d, func_4(Struct_4(var_0.c.a.a.x, var_0.a, var_0.d.a, var_0, var_0.c), Struct_1(var_0.d.d.a)).c.a, var_0, func_4(Struct_4(var_0.b, var_0.d.d, Struct_1(vec4<f32>(530f, var_0.c.d.a.x, var_0.c.d.a.x, var_0.b)), var_0, var_0.d), Struct_1(vec4<f32>(-498f, var_0.d.a.a.x, var_0.a.a.x, var_0.b))).d), -var_0.d.b.x))), func_4(Struct_4(-536f, Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a.x, -162f, 456f, var_0.b)))), func_4(Struct_4(var_0.b, var_0.d.d, Struct_1(vec4<f32>(var_0.a.a.x, 412f, -234f, 509f)), Struct_3(Struct_1(vec4<f32>(-188f, var_0.d.a.a.x, 483f, var_0.c.c.x)), var_0.d.c.x, Struct_2(var_0.a, var_0.c.b, vec4<f32>(var_0.c.a.a.x, var_0.b, var_0.c.c.x, -112f), Struct_1(var_0.a.a)), Struct_2(Struct_1(var_0.a.a), vec2<i32>(1i, -29676i), vec4<f32>(1234f, var_0.b, var_0.d.a.a.x, -997f), Struct_1(var_0.d.d.a))), var_0.c), var_0.a).a, Struct_3(var_0.d.a, -385f, func_4(Struct_4(-598f, Struct_1(var_0.a.a), var_0.a, Struct_3(var_0.a, 1737f, var_0.c, var_0.c), var_0.d), var_0.c.d).c, Struct_2(var_0.a, vec2<i32>(u_input.b, u_input.b), vec4<f32>(var_0.a.a.x, var_0.c.a.a.x, var_0.c.c.x, var_0.d.a.a.x), var_0.c.d)), Struct_2(Struct_1(vec4<f32>(var_0.a.a.x, 240f, var_0.a.a.x, var_0.b)), select(u_input.a, vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 24u)]), true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(858f, 663f, var_0.a.a.x, var_0.d.c.x))), Struct_1(vec4<f32>(var_0.c.c.x, var_0.b, 1121f, -466f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d.d.a) * var_0.c.d.a))).a, func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.a.x)), var_0.d.d, func_4(Struct_4(-307f, Struct_1(var_0.d.d.a), var_0.a, var_0, Struct_2(var_0.d.d, vec2<i32>(-27288i, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<f32>(-1224f, -146f, var_0.a.a.x, 1985f), Struct_1(var_0.a.a))), Struct_1(var_0.c.a.a)).a, func_4(Struct_4(var_0.c.a.a.x, var_0.d.a, Struct_1(vec4<f32>(-1000f, var_0.c.c.x, var_0.b, var_0.b)), var_0, Struct_2(var_0.a, vec2<i32>(42569i, global0[_wgslsmith_index_u32(1u, 24u)]), var_0.c.c, var_0.d.d)), func_4(Struct_4(-1124f, Struct_1(vec4<f32>(var_0.b, 793f, var_0.c.d.a.x, -852f)), var_0.c.d, var_0, Struct_2(Struct_1(var_0.a.a), vec2<i32>(-20494i, 44759i), vec4<f32>(566f, var_0.d.d.a.x, -1144f, var_0.a.a.x), var_0.d.d)), var_0.a).c.a), func_4(Struct_4(var_0.d.c.x, Struct_1(var_0.a.a), var_0.d.a, Struct_3(var_0.c.d, var_0.b, var_0.d, var_0.c), var_0.c), Struct_1(var_0.c.d.a)).c), var_0.d.a).a, var_0, func_4(Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.b, var_0.d.c.x)), _wgslsmith_f_op_f32(1319f + -640f))), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.d.d.a + vec4<f32>(var_0.c.c.x, var_0.d.d.a.x, var_0.b, -1301f))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c.d.a)), func_4(Struct_4(var_0.a.a.x, var_0.a, var_0.d.d, var_0, Struct_2(Struct_1(var_0.d.d.a), u_input.a, var_0.c.c, var_0.c.d)), var_0.c.a), Struct_2(func_4(Struct_4(1154f, Struct_1(var_0.d.c), var_0.c.a, var_0, Struct_2(var_0.d.d, u_input.a, var_0.c.c, var_0.d.d)), Struct_1(var_0.c.c)).c.d, vec2<i32>(u_input.b, u_input.b), var_0.d.d.a, func_4(Struct_4(-962f, var_0.a, Struct_1(var_0.d.a.a), var_0, Struct_2(var_0.a, var_0.c.b, vec4<f32>(133f, var_0.c.a.a.x, -136f, var_0.a.a.x), var_0.a)), var_0.a).a)), func_4(Struct_4(_wgslsmith_f_op_f32(183f * var_0.d.d.a.x), func_4(Struct_4(var_0.a.a.x, Struct_1(vec4<f32>(var_0.b, -616f, var_0.a.a.x, var_0.a.a.x)), var_0.c.a, var_0, var_0.d), Struct_1(vec4<f32>(var_0.d.c.x, var_0.c.a.a.x, var_0.b, var_0.a.a.x))).a, func_4(Struct_4(-2174f, Struct_1(vec4<f32>(var_0.c.c.x, var_0.d.c.x, var_0.a.a.x, -697f)), Struct_1(var_0.a.a), Struct_3(Struct_1(var_0.a.a), var_0.a.a.x, Struct_2(var_0.d.d, u_input.a, var_0.a.a, Struct_1(var_0.a.a)), var_0.d), var_0.c), var_0.c.d).c.a, func_4(Struct_4(var_0.b, var_0.d.d, var_0.d.a, Struct_3(var_0.c.d, -1734f, var_0.c, var_0.c), var_0.d), var_0.a), var_0.d), func_4(Struct_4(1070f, var_0.c.d, Struct_1(vec4<f32>(var_0.d.c.x, -137f, var_0.d.d.a.x, var_0.a.a.x)), var_0, Struct_2(var_0.d.a, vec2<i32>(-2147483647i, var_0.c.b.x), vec4<f32>(var_0.b, -1000f, 125f, var_0.d.c.x), var_0.a)), var_0.a).a).d.a).c);
    let var_2 = Struct_4(var_0.b, var_1.d.c.d, func_4(Struct_4(1501f, func_4(Struct_4(1419f, Struct_1(var_1.d.a.a), var_0.a, var_0, var_1.e), func_4(Struct_4(-1000f, Struct_1(var_1.d.d.d.a), var_1.d.d.a, var_0, var_0.c), var_0.a).a).c.a, func_4(Struct_4(259f, var_1.c, Struct_1(var_1.e.a.a), Struct_3(Struct_1(var_1.e.c), var_1.b.a.x, var_1.d.d, var_0.c), Struct_2(Struct_1(vec4<f32>(-1166f, var_1.e.c.x, 1395f, var_1.a)), var_0.d.b, var_0.c.c, var_1.e.d)), Struct_1(var_0.d.d.a)).d.a, func_4(Struct_4(1309f, var_0.a, var_1.b, var_0, Struct_2(Struct_1(vec4<f32>(-1000f, -115f, var_0.a.a.x, var_0.d.a.a.x)), vec2<i32>(var_0.c.b.x, 2147483647i), vec4<f32>(993f, -1444f, var_0.d.c.x, 1431f), var_1.b)), Struct_1(var_1.b.a)), var_0.c), func_4(Struct_4(func_4(Struct_4(var_0.a.a.x, var_0.c.a, Struct_1(vec4<f32>(var_1.b.a.x, var_1.c.a.x, var_0.d.c.x, var_1.d.a.a.x)), var_1.d, var_1.d.c), var_0.a).a.a.x, Struct_1(var_1.d.a.a), func_4(Struct_4(var_0.d.d.a.x, Struct_1(var_1.e.a.a), Struct_1(vec4<f32>(-1000f, 1355f, var_1.d.a.a.x, 550f)), Struct_3(var_1.e.d, 985f, Struct_2(Struct_1(var_1.e.c), var_0.d.b, vec4<f32>(var_0.a.a.x, 368f, var_1.e.a.a.x, -496f), Struct_1(var_1.b.a)), var_0.c), Struct_2(var_1.c, vec2<i32>(0i, -58235i), vec4<f32>(-576f, var_0.b, var_1.b.a.x, 992f), var_1.e.d)), Struct_1(vec4<f32>(var_1.d.c.d.a.x, 1000f, 555f, var_0.b))).c.a, Struct_3(var_0.c.a, 1752f, var_1.e, var_0.c), var_1.d.d), Struct_1(vec4<f32>(271f, var_1.c.a.x, var_0.a.a.x, var_0.b))).c.a).d.d, Struct_3(Struct_1(vec4<f32>(var_1.c.a.x, var_1.b.a.x, _wgslsmith_f_op_f32(exp2(var_0.c.d.a.x)), _wgslsmith_f_op_f32(min(-569f, var_0.c.d.a.x)))), _wgslsmith_f_op_f32(max(-1117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.x)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(var_1.c.a))), ~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a.a.x, 570f, var_1.c.a.x, var_1.a))), Struct_1(var_1.d.c.c)), var_0.c), Struct_2(var_1.d.a, vec2<i32>(func_4(Struct_4(-1552f, var_0.a, Struct_1(var_0.d.c), Struct_3(Struct_1(var_0.c.c), var_1.a, Struct_2(Struct_1(var_1.d.a.a), vec2<i32>(u_input.a.x, var_1.d.d.b.x), vec4<f32>(-1000f, var_0.b, var_1.e.a.a.x, -1750f), Struct_1(var_0.a.a)), var_1.e), Struct_2(Struct_1(var_1.b.a), vec2<i32>(var_1.e.b.x, u_input.a.x), var_0.a.a, var_1.e.a)), var_1.d.a).d.b.x, ~u_input.a.x), var_0.d.c, Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_1.b.a)))));
    let var_3 = all(vec4<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false, all(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false)))), true || any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false))));
    global0 = array<i32, 24>();
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, _wgslsmith_f_op_f32(var_1.c.a.x - -631f), 866f, var_2.d.b))), func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -496f), var_2.c, func_4(Struct_4(var_1.c.a.x, Struct_1(vec4<f32>(-439f, 350f, var_1.e.c.x, 1128f)), Struct_1(var_1.c.a), Struct_3(var_0.a, -1001f, Struct_2(Struct_1(var_1.e.c), vec2<i32>(var_1.e.b.x, u_input.a.x), var_0.d.c, Struct_1(var_0.c.c)), Struct_2(Struct_1(vec4<f32>(var_2.b.a.x, var_0.d.a.a.x, 910f, var_2.d.a.a.x)), var_2.e.b, var_0.c.a.a, Struct_1(vec4<f32>(var_1.c.a.x, 266f, 496f, 180f)))), var_1.e), func_4(Struct_4(1872f, var_0.a, var_0.d.d, var_2.d, var_1.e), var_2.b).d.a).d.d, var_1.d, Struct_2(var_0.a, var_1.d.c.b, _wgslsmith_f_op_vec4_f32(func_1(var_0.c.b, var_0.d)), Struct_1(var_1.b.a))), func_4(var_2, var_0.a).c.a).a, var_0, func_4(var_2, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c.a.a, var_2.b.a)))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(113f, 1141f)) - _wgslsmith_f_op_f32(-var_1.d.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * -710f)))), var_2.d.c.c.yzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.c.x))) - _wgslsmith_f_op_f32(round(var_2.e.a.a.x))));
}

