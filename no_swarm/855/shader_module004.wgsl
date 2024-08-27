struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = 1413i;

var<private> global2: array<f32, 11> = array<f32, 11>(-1979f, -1000f, -138f, -1827f, -526f, 170f, -1229f, -1102f, 965f, -1227f, -828f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_3 {
    return arg_1.c;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    global0 = ~u_input.b;
    let var_0 = false;
    var var_1 = ~0u;
    var var_2 = _wgslsmith_clamp_vec2_u32(~(abs(~u_input.a) >> (min(vec2<u32>(u_input.b, arg_0), max(u_input.a, vec2<u32>(arg_0, arg_0))) % vec2<u32>(32u))), vec2<u32>(~(~1u) & arg_0, ~23641u), max(~(~u_input.a) ^ _wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(0u, 4294967295u) ^ vec2<u32>(28256u, arg_0), u_input.a), u_input.a));
    global2 = array<f32, 11>();
    return arg_1.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global2 = array<f32, 11>();
    var var_0 = Struct_3(Struct_2(u_input.a.x, func_1(vec4<bool>(false, true, false, all(vec3<bool>(false, true, false))), Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(166f, 687f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(964f, global2[_wgslsmith_index_u32(arg_0.x, 11u)])), func_1(vec4<bool>(false, false, true, true), Struct_4(vec2<f32>(-1562f, global2[_wgslsmith_index_u32(arg_0.x, 11u)]), vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], 1009f), Struct_3(Struct_2(u_input.a.x, Struct_1(-509f, 1517f, 4294967295u, -230f), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 11u)], 317f, u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])), global2[_wgslsmith_index_u32(u_input.a.x, 11u)], Struct_2(4294967295u, Struct_1(global2[_wgslsmith_index_u32(48401u, 11u)], global2[_wgslsmith_index_u32(arg_0.x, 11u)], 0u, -1258f), Struct_1(global2[_wgslsmith_index_u32(31895u, 11u)], -1040f, arg_0.x, 298f))))))).c.b, Struct_1(_wgslsmith_f_op_f32(func_3(~68757u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 198f), vec2<f32>(1241f, global2[_wgslsmith_index_u32(arg_0.x, 11u)]))), false)), global2[_wgslsmith_index_u32(arg_0.x, 11u)], ~1u, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(44587u, 11u)])), func_1(vec4<bool>(true, true, true, true), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), -242f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(58646u, 11u)]), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(152f, -796f), vec2<f32>(971f, global2[_wgslsmith_index_u32(110047u, 11u)])))), func_1(vec4<bool>(true, true, true, true), Struct_4(vec2<f32>(-2351f, 1212f), vec2<f32>(403f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_3(Struct_2(u_input.b, Struct_1(373f, global2[_wgslsmith_index_u32(arg_0.x, 11u)], 1u, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 11u)], 120f, 1948u, 291f)), -255f, Struct_2(4294967295u, Struct_1(global2[_wgslsmith_index_u32(arg_0.x, 11u)], global2[_wgslsmith_index_u32(59172u, 11u)], u_input.a.x, 1000f), Struct_1(-2112f, global2[_wgslsmith_index_u32(33340u, 11u)], arg_0.x, -666f))))))).a);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(firstTrailingBit(6777u), 11u)], var_0.a.c.a) - vec2<f32>(-180f, var_0.c.b.d)) - vec2<f32>(-288f, -165f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, -559f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.a, -2311f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 11u)], -1365f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 11u)], var_0.b), vec2<f32>(-248f, 1000f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], 224f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.a, global2[_wgslsmith_index_u32(arg_0.x, 11u)])))))), func_1(vec4<bool>(!(2147483647i != u_input.c), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(75752u, 11u)])) < _wgslsmith_f_op_f32(trunc(-752f)), -585f < _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(arg_0.x, 11u)]))), Struct_4(vec2<f32>(global2[_wgslsmith_index_u32(~u_input.b, 11u)], _wgslsmith_f_op_f32(738f + 1621f)), vec2<f32>(-116f, -1915f), Struct_3(var_0.c, -120f, Struct_2(arg_0.x, Struct_1(-346f, -1951f, var_0.a.b.c, global2[_wgslsmith_index_u32(var_0.c.a, 11u)]), Struct_1(-554f, var_0.c.b.b, arg_0.x, -1000f))))));
    global0 = 47663u;
    var_1 = Struct_4(var_1.a, var_1.a, Struct_3(Struct_2(firstLeadingBit(reverseBits(var_1.c.c.c.c)), Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(var_1.c.a.a), 11u)], _wgslsmith_f_op_f32(-150f + -1646f), reverseBits(20571u), _wgslsmith_f_op_f32(-var_1.b.x)), Struct_1(_wgslsmith_f_op_f32(-862f * 1761f), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(1u, arg_0.x, var_0.c.c.c)), _wgslsmith_f_op_f32(-1465f + 829f))), var_0.c.c.a, var_0.c));
    return Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(var_1.b.x, var_1.c.c.b.d), true)) + vec2<f32>(-2156f, -188f)), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.a)), var_0.a.b.b)), var_1.b), Struct_3(var_1.c.c, -620f, var_1.c.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 9670i, u_input.c, -1i) & vec4<i32>(-2147483647i, 26139i, u_input.c, u_input.c), vec4<i32>(~2147483647i, u_input.c, countOneBits(u_input.c), 0i)), countOneBits(_wgslsmith_mult_i32(u_input.c & 0i, -1i)), u_input.c, _wgslsmith_clamp_i32(5451i, -69826i, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, ~(-20436i), 2147483647i, -38576i), vec4<i32>((u_input.c >> (u_input.b % 32u)) >> (1u % 32u), _wgslsmith_sub_i32(firstTrailingBit(-1i), u_input.c), -31005i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(9752i, -22191i)))));
    global1 = -444i;
    var var_1 = vec4<f32>(arg_1.c.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1030f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + _wgslsmith_f_op_f32(f32(-1f) * -1032f)) - _wgslsmith_f_op_f32(sign(-842f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(245f)))) - -357f)), _wgslsmith_f_op_f32(1202f + _wgslsmith_f_op_f32(255f * -1747f)));
    global1 = -(i32(-1i) * -_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.c, 38389i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, arg_2.c.b, global2[_wgslsmith_index_u32(arg_0.a, 11u)])))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-2014f)), _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0.c.c, 11u)]))))));
    return func_2(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(7692u, 0u, arg_0.c.c), vec3<u32>(arg_0.c.c, 1u, 1u)))).c.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    let var_0 = Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 11u)] - global2[_wgslsmith_index_u32(18982u, 11u)]) + _wgslsmith_f_op_f32(max(-474f, global2[_wgslsmith_index_u32(0u, 11u)])))), global2[_wgslsmith_index_u32(193987u, 11u)], 101492u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(927f))))), func_4(Struct_2(countOneBits(_wgslsmith_add_u32(4294967295u, u_input.a.x)), Struct_1(116f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(27872u, 41637u, 38578u)), 11u)], abs(u_input.a.x), _wgslsmith_f_op_f32(ceil(199f))), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 11u)] * global2[_wgslsmith_index_u32(69766u, 11u)]), 1164f, ~0u, -188f)), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 11u)]), 195f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, -575f)), func_1(vec4<bool>(false, false, false, true), Struct_4(vec2<f32>(766f, -300f), vec2<f32>(1406f, global2[_wgslsmith_index_u32(u_input.b, 11u)]), Struct_3(Struct_2(u_input.a.x, Struct_1(999f, global2[_wgslsmith_index_u32(44953u, 11u)], 22022u, 390f), Struct_1(global2[_wgslsmith_index_u32(54671u, 11u)], -540f, 1u, global2[_wgslsmith_index_u32(u_input.b, 11u)])), global2[_wgslsmith_index_u32(0u, 11u)], Struct_2(4294967295u, Struct_1(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)], u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_1(3181f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 1u, -1000f)))))), func_2(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 11707u, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, u_input.b))))));
    let var_1 = Struct_3(Struct_2(var_0.b.c, var_0.b, Struct_1(_wgslsmith_f_op_f32(914f * 1074f), 703f, 4294967295u, func_4(var_0, Struct_4(vec2<f32>(1000f, global2[_wgslsmith_index_u32(var_0.c.c, 11u)]), vec2<f32>(var_0.b.a, -1000f), Struct_3(Struct_2(28497u, var_0.c, Struct_1(-876f, -2602f, u_input.a.x, -430f)), global2[_wgslsmith_index_u32(u_input.b, 11u)], Struct_2(u_input.b, Struct_1(var_0.b.d, global2[_wgslsmith_index_u32(var_0.a, 11u)], var_0.b.c, -594f), Struct_1(1950f, -458f, var_0.b.c, var_0.b.b)))), Struct_4(vec2<f32>(1657f, var_0.b.d), vec2<f32>(746f, 257f), Struct_3(Struct_2(1u, Struct_1(var_0.b.b, global2[_wgslsmith_index_u32(74617u, 11u)], u_input.b, var_0.c.b), var_0.b), 1694f, var_0))).b)), _wgslsmith_f_op_f32(func_3(~4294967295u, func_2(select(vec3<u32>(69939u, u_input.b, var_0.b.c) << (vec3<u32>(var_0.b.c, u_input.b, var_0.a) % vec3<u32>(32u)), vec3<u32>(var_0.a, 1u, var_0.c.c) & vec3<u32>(1u, 32164u, 13275u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))).b, true)), func_1(vec4<bool>(!all(vec4<bool>(false, true, false, false)), true, false || (global2[_wgslsmith_index_u32(1u, 11u)] != 1377f), false), func_2(~(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)))).a);
    global1 = u_input.c >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.c.c >> (var_0.a % 32u), _wgslsmith_clamp_u32(var_1.c.a, u_input.a.x, u_input.b), 1u)), ~vec3<u32>(~var_1.c.b.c, firstTrailingBit(47640u), min(var_1.c.c.c, 26804u))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(1442f - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(0u, u_input.a.x << (24911u % 32u), true), 80699u) & 64016u, 11u)]);
    var var_3 = vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 102238u)), ~vec2<u32>(0u, 30196u)), reverseBits(vec2<u32>(0u, 37665u))), 11u)], global2[_wgslsmith_index_u32(max(abs(var_0.b.c), 0u), 11u)]);
    global0 = var_1.c.b.c;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(400f - _wgslsmith_f_op_f32(floor(-769f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.c.a), u_input.c, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.a.b.c, 1u) | 1u, max(abs(~11643u), u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), var_0.b.d, var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_3.x, 688f)))))), max(~vec3<i32>(0i, u_input.c, -65427i & u_input.c), vec3<i32>(u_input.c, u_input.c, -(~u_input.c))));
}

