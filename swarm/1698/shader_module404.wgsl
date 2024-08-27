struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<f32>(623f, -2495f, -1552f), vec3<u32>(1u, 7992u, 30886u), i32(-2147483648), Struct_1(-1000f, 719f, -39968i, vec4<f32>(700f, 1517f, 1782f, -949f), 2147483647i)), Struct_2(vec3<f32>(1082f, 355f, -249f), vec3<u32>(4294967295u, 71883u, 56078u), -13648i, Struct_1(-1000f, 385f, i32(-2147483648), vec4<f32>(-632f, -553f, -292f, 1000f), 0i)), Struct_2(vec3<f32>(-731f, 1110f, -1077f), vec3<u32>(117864u, 12494u, 101236u), 9718i, Struct_1(-1601f, -536f, 2147483647i, vec4<f32>(1662f, -1000f, -880f, -879f), 2147483647i)), Struct_2(vec3<f32>(412f, 216f, 750f), vec3<u32>(0u, 4294967295u, 4294967295u), -1i, Struct_1(829f, -1219f, -7328i, vec4<f32>(-202f, -312f, 670f, -1000f), 47323i)), Struct_2(vec3<f32>(317f, 1947f, -880f), vec3<u32>(20841u, 14636u, 66529u), 2147483647i, Struct_1(199f, -1153f, i32(-2147483648), vec4<f32>(-115f, -411f, 606f, 659f), 2962i)), Struct_2(vec3<f32>(923f, -847f, -733f), vec3<u32>(1u, 12142u, 9263u), 2534i, Struct_1(-962f, -615f, 64598i, vec4<f32>(247f, 337f, 501f, -695f), -1i)), Struct_2(vec3<f32>(-450f, -1002f, -131f), vec3<u32>(1u, 38582u, 3435u), 2147483647i, Struct_1(-667f, -678f, 1i, vec4<f32>(686f, 286f, 292f, -1390f), 1i)), Struct_2(vec3<f32>(440f, 630f, 1528f), vec3<u32>(42957u, 0u, 1u), 0i, Struct_1(1012f, 1556f, -32843i, vec4<f32>(-566f, -992f, -542f, 537f), i32(-2147483648))), Struct_2(vec3<f32>(-1000f, -201f, 108f), vec3<u32>(0u, 41294u, 29791u), i32(-2147483648), Struct_1(717f, -2206f, 6240i, vec4<f32>(1014f, 1272f, -356f, 742f), 28409i)), Struct_2(vec3<f32>(-2767f, -1000f, -714f), vec3<u32>(1u, 31839u, 0u), -1i, Struct_1(-293f, 773f, 2147483647i, vec4<f32>(-361f, -1236f, 413f, 161f), 2147483647i)), Struct_2(vec3<f32>(1955f, 1060f, 320f), vec3<u32>(14835u, 86384u, 34284u), 2147483647i, Struct_1(-1461f, -390f, i32(-2147483648), vec4<f32>(-1209f, -1821f, 1000f, 2210f), i32(-2147483648))), Struct_2(vec3<f32>(-654f, -1380f, 1000f), vec3<u32>(1u, 33852u, 4294967295u), 0i, Struct_1(-1000f, -1000f, 48069i, vec4<f32>(-929f, 106f, -801f, -2020f), -10439i)), Struct_2(vec3<f32>(-1180f, 815f, 981f), vec3<u32>(118877u, 4294967295u, 1u), 35438i, Struct_1(1412f, 1617f, i32(-2147483648), vec4<f32>(782f, -373f, -322f, 320f), -21817i)), Struct_2(vec3<f32>(204f, -776f, -214f), vec3<u32>(19681u, 5932u, 4294967295u), 2147483647i, Struct_1(583f, -1654f, -1i, vec4<f32>(1753f, 1619f, 255f, 259f), -4370i)), Struct_2(vec3<f32>(591f, 1067f, -358f), vec3<u32>(9860u, 9586u, 45644u), i32(-2147483648), Struct_1(-846f, 849f, 19967i, vec4<f32>(265f, -1732f, -1000f, 1396f), 1i)), Struct_2(vec3<f32>(1000f, -553f, -652f), vec3<u32>(29781u, 4294967295u, 26254u), 7102i, Struct_1(-2789f, -1031f, -1i, vec4<f32>(285f, -253f, 1308f, 1716f), i32(-2147483648))));

var<private> global2: array<bool, 10> = array<bool, 10>(true, false, true, false, true, true, true, false, false, false);

var<private> global3: vec2<f32> = vec2<f32>(-1013f, -376f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(round(global3.x)), -3526i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_0.x, arg_0.x, -1821f)) - _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(1075f, arg_0.x, 585f, 266f))) - _wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(arg_0.x, 962f, arg_0.x, -1898f)))), _wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_0.x, 622f, -463f)) + _wgslsmith_f_op_vec4_f32(sign(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f * arg_0.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, 1320f)) * _wgslsmith_f_op_f32(arg_0.x + global3.x)))), ~countOneBits(arg_2.x) >> (~1u % 32u));
    var var_1 = true;
    global1 = array<Struct_2, 16>();
    var var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, _wgslsmith_dot_vec2_u32(arg_1, abs(vec2<u32>(8937u, arg_1.x))), ~(~55870u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(11069u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(13093u, arg_1.x, 1u, 0u), vec4<u32>(arg_1.x, 50575u, arg_1.x, 0u)) % 32u), ~0u, ~arg_1.x, 1u), ~vec4<u32>(4294967295u, 4294967295u, arg_1.x, 0u) ^ abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 42067u, 4294967295u, 37318u), vec4<u32>(arg_1.x, 51716u, 30491u, arg_1.x))), abs(countOneBits(vec4<u32>(0u, arg_1.x, 0u, 55290u)))), select(vec4<u32>(42100u ^ arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, 4294967295u, arg_1.x), vec4<u32>(4294967295u, 4294967295u, 5895u, 283u)), 0u, 0u), ~select(vec4<u32>(arg_1.x, 25833u, 39409u, 25343u), vec4<u32>(arg_1.x, arg_1.x, 54973u, 12254u), false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 10u)] && global2[_wgslsmith_index_u32(0u, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(42055u, 10u)])) >> ((reverseBits(firstLeadingBit(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 21953u))) & select(max(vec4<u32>(arg_1.x, 10250u, arg_1.x, arg_1.x), vec4<u32>(1u, 28582u, arg_1.x, 4294967295u)), countOneBits(vec4<u32>(arg_1.x, arg_1.x, 43352u, 0u)), select(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(arg_1.x, 10u)], global2[_wgslsmith_index_u32(38079u, 10u)]))) % vec4<u32>(32u)));
    var var_3 = var_0;
    return firstTrailingBit(~var_2.yzx);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(-2123f * global3.x);
    let var_1 = global1[_wgslsmith_index_u32(36457u << (1u % 32u), 16u)];
    let var_2 = Struct_2(var_1.d.d.xzy, func_3(var_1.d.d, ~max(var_1.b.xx, var_1.b.yx >> (var_1.b.yx % vec2<u32>(32u))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_1.c, 8778i), vec3<i32>(0i, -20232i, -1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, u_input.a, var_1.c, u_input.b) ^ vec4<i32>(var_1.d.e, -1i, var_1.c, u_input.a), ~vec4<i32>(0i, var_1.c, u_input.a, var_1.c)), _wgslsmith_add_i32(-11376i >> (var_1.b.x % 32u), -25646i))), countOneBits(var_1.d.e), var_1.d);
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_2 = arg_1.b;
    var var_3 = ~var_0.b.x;
    let var_4 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(select(vec4<i32>(-17307i, 1i, arg_0.c, u_input.a), vec4<i32>(-38882i, arg_0.e, -43845i, 0i), vec4<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)], false)), ~vec4<i32>(0i, 29069i, 1i, -2147483647i)), vec4<i32>(var_0.d.e, -abs(50516i), arg_0.c, ~max(arg_1.d.e, arg_1.d.e))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.d.b, arg_1.d.b, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.d.a, var_0.d.a, global2[_wgslsmith_index_u32(arg_1.b.x, 10u)])) - _wgslsmith_f_op_f32(-265f - -1000f)), _wgslsmith_f_op_f32(step(-1068f, var_1.d.a)), _wgslsmith_div_f32(411f, 1000f)))), -var_1.d.c);
    return ~(~1u);
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 30>();
    let var_0 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-61210i, u_input.a, -21880i, u_input.b), vec4<i32>(8988i, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-6075i, u_input.b, 45464i, 0i), vec4<i32>(u_input.b, u_input.a, u_input.a, 13359i)), vec4<i32>(4789i, u_input.a, u_input.b, u_input.a) >> (vec4<u32>(1u, 4294967295u, 4294967295u, 42881u) % vec4<u32>(32u)))), select(vec4<i32>(u_input.a, 1i, _wgslsmith_mult_i32(u_input.b, ~u_input.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1832i, u_input.b), reverseBits(vec2<i32>(u_input.b, u_input.a)))), -vec4<i32>(2147483647i, 0i, firstTrailingBit(2147483647i), 29452i), global2[_wgslsmith_index_u32(func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1937f, -408f))), global1[_wgslsmith_index_u32(4294967295u, 16u)]), 10u)]));
    var var_1 = u_input.b;
    var_1 = -24798i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(1766f)), 1412f, 1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(round(-361f)), -453f, -424f), ~(-var_0.x >> (15715u % 32u)));
    return !all(vec4<bool>(global2[_wgslsmith_index_u32(func_3(vec4<f32>(1191f, var_2.b, global3.x, global3.x), vec2<u32>(1u, 1385u), var_0.xxz, vec2<i32>(var_2.e, var_2.c)).x | _wgslsmith_clamp_u32(27806u, 39428u, 30780u), 10u)], true, all(vec3<bool>(false, true, true)) & !global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.x, global3.x, -34375i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(-global3.x), 637f, _wgslsmith_div_f32(global3.x, global3.x)))))), u_input.b);
    let var_1 = select(select(vec3<bool>(!(!global2[_wgslsmith_index_u32(0u, 10u)]), (global2[_wgslsmith_index_u32(26866u, 10u)] | true) && true, !global2[_wgslsmith_index_u32(1u, 10u)] & all(vec3<bool>(true, global2[_wgslsmith_index_u32(95776u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]))), !vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)])), u_input.a > u_input.a, global2[_wgslsmith_index_u32(37888u, 10u)] & global2[_wgslsmith_index_u32(47853u, 10u)]), func_1()), !(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(42303u, 10u)]))), true);
    let var_2 = select(vec3<i32>(var_0.e, ~(~(i32(-1i) * -2147483647i)), -19846i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.b, 25856i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, -1i, u_input.a), reverseBits(vec3<i32>(u_input.a, var_0.c, 39710i)))), select(vec3<i32>(1i, u_input.a, _wgslsmith_clamp_i32(1i, 1i, -2147483647i)), -vec3<i32>(-27821i, -25093i, u_input.a), var_1)), select(!select(var_1, var_1, !var_1), vec3<bool>(func_1(), _wgslsmith_f_op_f32(global3.x - -724f) != _wgslsmith_f_op_f32(round(var_0.b)), true), !(-var_0.c >= -2147483647i)));
    let var_3 = firstTrailingBit(1u ^ (1u << (firstTrailingBit(4294967295u) % 32u))) | 73425u;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.yzx * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d.yxy, vec3<f32>(global3.x, 289f, global3.x)) + _wgslsmith_f_op_vec3_f32(-var_0.d.yxz))), _wgslsmith_f_op_vec3_f32(-var_0.d.zxw)), (vec2<u32>(var_3 & 54746u, ~0u) | vec2<u32>(var_3, ~1u)) & vec2<u32>(~(~16273u), _wgslsmith_sub_u32(var_3, 4294967295u)), global3.x, vec3<i32>(_wgslsmith_mult_i32(-1i, 92371i), abs(17501i), var_0.c));
}

