struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(Struct_1(4294967295u), 2147483647i, -581f, vec2<f32>(1263f, 535f)), Struct_1(10891u), 65560u, Struct_2(Struct_1(42766u), 6086i, 756f, vec2<f32>(-1402f, -227f)), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(Struct_1(0u), -1i, -838f, vec2<f32>(-1829f, -1786f)), Struct_1(0u), 8603u, Struct_2(Struct_1(13978u), 1i, 191f, vec2<f32>(1053f, 1441f)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(Struct_1(0u), 8983i, -133f, vec2<f32>(1550f, 675f)), Struct_1(4294967295u), 60972u, Struct_2(Struct_1(1u), -1i, 1235f, vec2<f32>(-1943f, 718f)), vec4<bool>(true, true, false, false)), Struct_3(Struct_2(Struct_1(1u), 2147483647i, -1000f, vec2<f32>(-2093f, -1579f)), Struct_1(0u), 48115u, Struct_2(Struct_1(80048u), -32411i, -2226f, vec2<f32>(863f, -2239f)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(Struct_1(10748u), 1i, 923f, vec2<f32>(1000f, -2742f)), Struct_1(0u), 0u, Struct_2(Struct_1(1u), 20285i, 1300f, vec2<f32>(-1000f, -485f)), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(Struct_1(4294967295u), i32(-2147483648), -316f, vec2<f32>(466f, -1000f)), Struct_1(25144u), 1u, Struct_2(Struct_1(1u), 0i, -1549f, vec2<f32>(848f, 1747f)), vec4<bool>(false, false, true, false)), Struct_3(Struct_2(Struct_1(1u), -43954i, 298f, vec2<f32>(-340f, 344f)), Struct_1(0u), 1u, Struct_2(Struct_1(25972u), 55537i, -170f, vec2<f32>(539f, -1016f)), vec4<bool>(false, true, false, false)), Struct_3(Struct_2(Struct_1(3866u), 917i, -805f, vec2<f32>(434f, 869f)), Struct_1(1u), 33134u, Struct_2(Struct_1(0u), 2147483647i, -245f, vec2<f32>(-326f, 268f)), vec4<bool>(false, false, false, false)), Struct_3(Struct_2(Struct_1(64660u), 27980i, 1000f, vec2<f32>(-1000f, -613f)), Struct_1(1u), 1u, Struct_2(Struct_1(64898u), 0i, 591f, vec2<f32>(1738f, -798f)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(Struct_1(1u), i32(-2147483648), 1513f, vec2<f32>(1000f, -1100f)), Struct_1(4294967295u), 4294967295u, Struct_2(Struct_1(4294967295u), -38715i, -181f, vec2<f32>(-1084f, 1518f)), vec4<bool>(true, true, true, false)), Struct_3(Struct_2(Struct_1(109013u), 37272i, 2663f, vec2<f32>(1442f, -344f)), Struct_1(50766u), 16195u, Struct_2(Struct_1(1u), 1i, -1016f, vec2<f32>(-1697f, 1162f)), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(Struct_1(106u), 0i, -372f, vec2<f32>(-241f, -886f)), Struct_1(38345u), 4294967295u, Struct_2(Struct_1(1u), 2147483647i, -432f, vec2<f32>(-1591f, 981f)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(Struct_1(4708u), 17730i, 1215f, vec2<f32>(292f, 801f)), Struct_1(11386u), 4294967295u, Struct_2(Struct_1(36472u), 0i, -1042f, vec2<f32>(1000f, 1019f)), vec4<bool>(true, false, true, false)), Struct_3(Struct_2(Struct_1(1u), -1i, 428f, vec2<f32>(-2135f, -1975f)), Struct_1(0u), 0u, Struct_2(Struct_1(1u), 0i, 122f, vec2<f32>(848f, 265f)), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(Struct_1(30941u), -19060i, -239f, vec2<f32>(265f, 531f)), Struct_1(44714u), 12763u, Struct_2(Struct_1(4294967295u), -9663i, -125f, vec2<f32>(521f, 682f)), vec4<bool>(false, false, false, false)), Struct_3(Struct_2(Struct_1(1u), -10450i, -453f, vec2<f32>(677f, -907f)), Struct_1(37713u), 44829u, Struct_2(Struct_1(4294967295u), 1i, 1018f, vec2<f32>(-837f, -201f)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(Struct_1(4294967295u), 1i, 229f, vec2<f32>(137f, -638f)), Struct_1(19370u), 1u, Struct_2(Struct_1(121138u), i32(-2147483648), 292f, vec2<f32>(-429f, -538f)), vec4<bool>(true, false, true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_1 = arg_1;
    var_0 = Struct_3(Struct_2(var_1.b, var_1.a.b, _wgslsmith_f_op_f32(min(var_0.d.c, _wgslsmith_f_op_f32(round(var_0.a.c)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.c, var_0.d.d.x))), arg_1.a.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, 968f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(723f, var_1.d.c), arg_2.yy)), select(var_0.e.ww, vec2<bool>(true, arg_1.e.x), var_1.e.x)))))), Struct_1(firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, var_0.c))), _wgslsmith_add_u32(var_1.d.a.a, arg_0.a), Struct_2(Struct_1(_wgslsmith_div_u32(arg_0.a & 48759u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, arg_0.a), vec4<u32>(1u, arg_1.b.a, var_0.b.a, arg_1.d.a.a)))), 2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1464f, _wgslsmith_f_op_f32(1918f + -1038f)), var_1.a.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.ww) + _wgslsmith_f_op_vec2_f32(var_0.a.d * arg_1.a.d)) - vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(trunc(arg_2.x))))), arg_1.e);
    var var_2 = -select(~max(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.b, 14057i), vec2<i32>(2147483647i, -1i)), abs(vec2<i32>(arg_1.d.b, var_1.d.b))), vec2<i32>(~_wgslsmith_div_i32(arg_1.a.b, 2147483647i), 0i), all(vec3<bool>(var_1.e.x & arg_1.e.x, var_1.e.x, var_1.e.x)));
    let var_3 = u_input.a;
    return select(vec3<u32>(min(_wgslsmith_div_u32(var_3.x, ~var_0.d.a.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.a.a, 0u, 0u), vec3<u32>(arg_1.d.a.a, 79092u, var_3.x)), 1u)), 139854u, ~(~abs(4294967295u))), vec3<u32>(~_wgslsmith_mult_u32(0u, arg_0.a), _wgslsmith_clamp_u32(~1u, var_0.a.a.a | 1u, 1u), ~0u) ^ vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_0.d.a.a, 6730u), vec4<u32>(47301u, 0u, 73588u, arg_0.a)), 1u, 4089u), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = array<Struct_3, 17>();
    var var_0 = !(true & any(!(!vec2<bool>(true, arg_1))));
    global0 = array<Struct_3, 17>();
    let var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(countOneBits(1i), ~_wgslsmith_clamp_i32(2147483647i, 26019i, 13103i))), select(-vec2<i32>(2147483647i, _wgslsmith_add_i32(-2147483647i, -1i)), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(0i, -1i)), vec2<i32>(1i, -8522i)), all(!select(arg_0, vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, arg_0.x)))));
    global0 = array<Struct_3, 17>();
    return -357f;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 17>();
    var var_0 = vec4<f32>(218f, -237f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f - 377f)) + _wgslsmith_f_op_f32(1701f - -1601f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f - -926f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1544f, -1411f)))), true)), -1674f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), 7139u >= _wgslsmith_dot_vec3_u32(~u_input.a, func_3(Struct_1(13641u), Struct_3(Struct_2(Struct_1(1u), 13646i, 515f, var_0.xz), Struct_1(u_input.a.x), u_input.a.x, Struct_2(Struct_1(1u), 1i, -440f, vec2<f32>(var_0.x, var_0.x)), vec4<bool>(true, true, false, false)), vec4<f32>(var_0.x, var_0.x, 1054f, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1099f, _wgslsmith_f_op_f32(-var_0.x))))) + -452f)));
    let var_3 = reverseBits(~(~(~u_input.a.xy)) >> (func_3(Struct_1(~34059u), global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, var_0.x, var_0.x, var_0.x) + vec4<f32>(1447f, var_0.x, -508f, 576f)), vec4<bool>(true, false, false, false)))).xx % vec2<u32>(32u)));
    return Struct_2(Struct_1(_wgslsmith_sub_u32(~(var_3.x ^ u_input.a.x), ~countOneBits(var_3.x))), abs(8515i), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))), var_0.ww);
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = ~(~(~u_input.a.x) ^ 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -725f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-642f))), _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-860f, 347f)) - _wgslsmith_f_op_f32(f32(-1f) * -1008f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    var var_0 = ~abs(arg_1.d.b);
    var var_1 = vec3<i32>(arg_1.d.b, 0i, ~min(select(~(-17610i), arg_1.d.b, arg_2), (arg_1.a.b & arg_1.d.b) >> ((58519u ^ u_input.a.x) % 32u)));
    var var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(func_5(func_2()));
    var var_4 = _wgslsmith_f_op_f32(-arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1884f + _wgslsmith_f_op_f32(arg_1.d.d.x + arg_0.x)) - -219f)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec2<u32> {
    var var_0 = vec4<i32>(-((min(-11856i, 1295i) << (arg_0.a % 32u)) << (_wgslsmith_dot_vec3_u32(func_3(Struct_1(u_input.a.x), global0[_wgslsmith_index_u32(79083u, 17u)], vec4<f32>(2255f, 1000f, arg_1.x, arg_2)), u_input.a) % 32u)), -2147483647i, func_2().b, min(reverseBits(_wgslsmith_mod_i32(firstLeadingBit(35i), -54023i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(24546i, -828i, -18659i)), -vec3<i32>(-1i, 24856i, -1i)), min(-1i, ~(-6234i)))));
    var var_1 = _wgslsmith_f_op_f32(1236f + arg_2);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))));
    var_1 = _wgslsmith_f_op_f32(func_4(!(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), any(vec4<bool>(true, true, false, false)))), true));
    var var_2 = 8797i;
    return _wgslsmith_sub_vec2_u32(min(~(~u_input.a.yz), ~_wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(arg_0.a, 947u))), ~min(vec2<u32>(arg_0.a, 38458u), vec2<u32>(arg_0.a, 0u)) & u_input.a.yy) & vec2<u32>(~u_input.a.x, ~_wgslsmith_mod_u32(arg_0.a, _wgslsmith_mod_u32(0u, 12618u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    var var_0 = u_input.a.xx >> (func_6(Struct_1(4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(841f, _wgslsmith_f_op_f32(abs(903f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1317f, 1465f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1115f, -958f) - vec2<f32>(241f, 204f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(430f, -646f, -144f, 2023f), Struct_3(Struct_2(Struct_1(4294967295u), 0i, 576f, vec2<f32>(-102f, 109f)), Struct_1(u_input.a.x), u_input.a.x, Struct_2(Struct_1(u_input.a.x), -1i, -1011f, vec2<f32>(-512f, -632f)), vec4<bool>(true, false, true, false)), true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f * 365f) - _wgslsmith_f_op_f32(f32(-1f) * -1206f))), _wgslsmith_f_op_f32(ceil(559f))) % vec2<u32>(32u));
    var var_1 = vec4<bool>(false, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, 593f, 1115f, -470f)), global0[_wgslsmith_index_u32(func_2().a.a, 17u)], true)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) * _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1862f - -1538f) * _wgslsmith_f_op_f32(-566f + -646f)))), select(any(vec4<bool>(true, true, true, true)), false, true), true);
    let var_2 = select(1i, select(-57183i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(8787i, -1i, 0i, 24924i), vec4<i32>(-2147483647i, 1i, _wgslsmith_mult_i32(-40725i, -1i), 1i)), all(!(!vec4<bool>(false, true, true, var_1.x)))), var_1.x | !any(var_1.yw));
    var_1 = select(select(vec4<bool>(var_1.x, any(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), false, any(!var_1.zwx)), !vec4<bool>(true, false | var_1.x, var_1.x == var_1.x, false), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.x, false, false, false), vec4<bool>(false, true, true, var_1.x)), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), !vec4<bool>(false, false, var_1.x, var_1.x)), !vec4<bool>(var_1.x, false, false, var_1.x), 5509u != var_0.x)), select(select(!vec4<bool>(var_1.x, var_1.x, false, true), select(!vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, var_1.x, true, true)), false), vec4<bool>(!var_1.x, true, ~u_input.a.x < ~u_input.a.x, false), !all(!vec3<bool>(var_1.x, var_1.x, true))), var_1.x);
    let var_3 = !select(select(vec4<bool>(false | var_1.x, any(vec2<bool>(var_1.x, var_1.x)), var_1.x, false), !select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, false, true, var_1.x), true), !(1i >= var_2)), !select(vec4<bool>(var_1.x, var_1.x, true, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1797f, -358f, -152f, 338f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1012f, 1339f, -537f, 1372f)), var_3)) * vec4<f32>(_wgslsmith_f_op_f32(min(-182f, -568f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(trunc(-933f)), _wgslsmith_f_op_f32(1540f - -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1252f, 622f, -1190f, 1000f) - vec4<f32>(-1000f, 1000f, 933f, -1330f)))))), vec4<i32>(26101i, func_2().b, ~(-259i ^ _wgslsmith_add_i32(1i, var_2)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 48326i), firstLeadingBit(vec2<i32>(var_2, -1i)))), ~func_6(func_2().a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1061f, 422f) * vec2<f32>(504f, 294f)))), _wgslsmith_f_op_f32(min(-616f, -195f)), -689f).x, u_input.a.x);
}

