struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    var var_0 = Struct_3(Struct_2(abs(arg_2), global1[_wgslsmith_index_u32(~(~121424u), 23u)], global1[_wgslsmith_index_u32((min(u_input.c, 1u) << (~41435u % 32u)) >> (~select(arg_0, u_input.b.x, false) % 32u), 23u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 23u)]), Struct_2(u_input.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -850f), -1082f, _wgslsmith_f_op_f32(610f * 303f), _wgslsmith_f_op_f32(step(741f, 317f))), true, ~(~vec4<u32>(arg_0, u_input.c, u_input.b.x, u_input.b.x)), ~1i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(u_input.b, u_input.b), vec3<u32>(1237u, _wgslsmith_div_u32(47429u, u_input.b.x), ~0u)), 23u)], Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(214f, -1110f, 888f, 1094f))))), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), ~(~vec4<u32>(u_input.b.x, arg_0, u_input.c, 1u)), 47314i)), _wgslsmith_div_vec3_u32(~(select(u_input.b, vec3<u32>(arg_0, arg_0, 40160u), true) | vec3<u32>(u_input.c, 4294967295u, 7810u)), u_input.b), global1[_wgslsmith_index_u32(0u, 23u)]);
    let var_1 = _wgslsmith_clamp_vec4_i32(~(~_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(0u, 11u)], vec4<i32>(0i, u_input.a.x, var_0.b.b.d, u_input.a.x))) & vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(arg_1, u_input.a.x)), reverseBits(u_input.a.x), ~arg_2.x, ~1i & _wgslsmith_clamp_i32(1i, -18101i, 0i)), firstTrailingBit(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0, 1u), 11u)]), vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3, -1i), 33975i), -52214i, -23917i >> (firstTrailingBit(var_0.a.b.c.x) % 32u)));
    let var_2 = !var_0.b.d.b;
    var_0 = Struct_3(Struct_2(-vec2<i32>(arg_2.x, 22418i), Struct_1(var_0.b.d.a, var_0.a.d.b, vec4<u32>(max(arg_0, u_input.b.x), ~21336u, arg_0 & 0u, ~62473u), max(_wgslsmith_add_i32(-1i, var_1.x), reverseBits(54310i))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(830f, var_0.a.d.a.x, var_0.b.c.a.x, var_0.b.d.a.x))), var_0.d.b, vec4<u32>(0u, _wgslsmith_mult_u32(0u, var_0.a.c.c.x), firstTrailingBit(15515u), u_input.b.x), ~(-1i)), var_0.b.d), Struct_2(~firstLeadingBit(arg_2 >> (u_input.b.yy % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.b.c.a))), all(vec4<bool>(true, true, true, var_0.d.b)), vec4<u32>(var_0.a.b.c.x, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, var_0.d.c.x), vec4<u32>(var_0.b.b.c.x, 40296u, var_0.a.b.c.x, 4294967295u)), min(u_input.b.x, 59240u)), _wgslsmith_add_i32(0i, ~59395i)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.d.a), var_2 && (arg_1 > -35533i), vec4<u32>(~arg_0, ~4294967295u, 7210u, _wgslsmith_add_u32(1u, 18104u)), -u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.b.a * vec4<f32>(var_0.a.d.a.x, var_0.b.c.a.x, 651f, -242f))), !var_2, ~vec4<u32>(arg_0, var_0.c.x, u_input.b.x, u_input.b.x), _wgslsmith_add_i32(1i, -2147483647i) << (~arg_0 % 32u))), vec3<u32>(firstTrailingBit(2370u | u_input.b.x), ~var_0.d.c.x, 1u), global1[_wgslsmith_index_u32(abs(~(~(~var_0.c.x))), 23u)]);
    let var_3 = !(!vec4<bool>(var_2, _wgslsmith_sub_i32(0i, arg_2.x) != _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.d, -23428i), vec2<i32>(-16423i, var_0.b.a.x)), var_0.b.b.b, !(!var_2)));
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_3(arg_1.a.a, arg_1.a.b, ~vec3<u32>(~(u_input.b.x << (4294967295u % 32u)), ~(~u_input.c), arg_1.b.d.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(max(arg_1.a.b.b.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d.a.x, arg_1.a.a.b.a.x, arg_1.a.b.b.a.x, -1452f)))))), all(select(!arg_1.c.zxw, select(vec3<bool>(arg_1.b.b.b, arg_2.x, arg_1.a.a.b.b), arg_1.c.zyw, vec3<bool>(true, arg_2.x, false)), func_3(u_input.b.x, u_input.a.x, arg_1.a.b.a, u_input.a.x))), abs(vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26575u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 44332u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1518u, 0u), vec2<u32>(u_input.c, arg_1.a.a.c.c.x)), u_input.b.x)), 0i));
    var var_1 = Struct_2(firstTrailingBit(var_0.a.a), arg_1.b.b, var_0.b.b, var_0.d);
    global0 = array<vec4<i32>, 11>();
    let var_2 = arg_1.a.d;
    let var_3 = arg_1.a;
    return vec2<bool>(firstTrailingBit(~var_1.d.c.x & _wgslsmith_mult_u32(u_input.b.x, var_0.a.b.c.x)) != ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(24963u, 0u, 9757u, var_1.b.c.x), var_0.a.c.c), vec4<u32>(0u, 12359u, 24584u, u_input.b.x)), arg_2.x | !any(!vec4<bool>(arg_2.x, var_0.a.c.b, false, false)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> u32 {
    global0 = array<vec4<i32>, 11>();
    let var_0 = vec2<bool>(true, arg_0.a.c.b);
    var var_1 = all(vec4<bool>(all(select(!vec3<bool>(arg_1.c.b, true, true), vec3<bool>(arg_1.b.b, var_0.x, false), arg_1.b.b)), select(any(select(vec3<bool>(var_0.x, arg_1.c.b, true), vec3<bool>(false, arg_3.a.d.b, arg_0.a.c.b), vec3<bool>(var_0.x, false, true))), !arg_1.b.b, arg_3.d.b), all(select(var_0, func_2(-515f, Struct_4(arg_0, Struct_2(vec2<i32>(-2147483647i, 2884i), arg_3.d, global1[_wgslsmith_index_u32(arg_0.a.d.c.x, 23u)], arg_1.c), vec4<bool>(false, arg_0.a.c.b, true, arg_1.d.b)), var_0), true)), true));
    global0 = array<vec4<i32>, 11>();
    global1 = array<Struct_1, 23>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 11u)]), global0[_wgslsmith_index_u32(~28401u, 11u)]))), global1[_wgslsmith_index_u32(~((func_1(Struct_3(Struct_2(vec2<i32>(0i, u_input.a.x), Struct_1(vec4<f32>(-1527f, -1000f, 790f, 607f), true, vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 0u), u_input.a.x), Struct_1(vec4<f32>(968f, 1141f, -209f, 1086f), true, vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x), 9295i), Struct_1(vec4<f32>(-1000f, -785f, -1052f, 592f), true, vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x), u_input.a.x)), Struct_2(u_input.a, global1[_wgslsmith_index_u32(0u, 23u)], Struct_1(vec4<f32>(298f, -501f, -381f, 1627f), false, vec4<u32>(74967u, 13010u, u_input.c, u_input.b.x), u_input.a.x), Struct_1(vec4<f32>(-2364f, 326f, 1000f, 1649f), false, vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c), -29096i)), vec3<u32>(48257u, u_input.b.x, u_input.c), global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_2(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(vec4<f32>(2732f, 1051f, -526f, -1124f), true, vec4<u32>(u_input.b.x, 10559u, u_input.c, u_input.b.x), 45584i), Struct_1(vec4<f32>(-2570f, 484f, -1713f, -185f), false, vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), u_input.a.x)), u_input.a.x, Struct_3(Struct_2(u_input.a, global1[_wgslsmith_index_u32(36480u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), Struct_2(u_input.a, Struct_1(vec4<f32>(2062f, -1170f, -744f, 653f), true, vec4<u32>(u_input.c, 4294967295u, 0u, 26067u), u_input.a.x), global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), u_input.b, global1[_wgslsmith_index_u32(4294967295u, 23u)])) & 1u) & 2197u), 23u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-457f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(565f)), _wgslsmith_f_op_f32(max(207f, 1420f))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -793f)), false, ~(~vec4<u32>(5941u, 53763u, 1u, u_input.b.x)), ~0i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, 136f, 829f, -1873f)))), false, min(~(~vec4<u32>(u_input.c, 6628u, u_input.c, 0u)), abs(~vec4<u32>(u_input.c, u_input.b.x, 32356u, 1u))), -u_input.a.x));
    global0 = array<vec4<i32>, 11>();
    var var_1 = vec2<u32>(0u, ~_wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_add_u32(36987u, _wgslsmith_div_u32(1u, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, var_0.d.a.x)), _wgslsmith_f_op_vec2_f32(-var_0.d.a.yx)) + var_0.c.a.yw) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, -328f) - _wgslsmith_f_op_vec2_f32(var_0.c.a.wy * vec2<f32>(-712f, -250f))))));
    var var_3 = Struct_4(Struct_3(Struct_2(-vec2<i32>(51568i, u_input.a.x), global1[_wgslsmith_index_u32(~(u_input.b.x ^ var_0.b.c.x), 23u)], var_0.c, global1[_wgslsmith_index_u32(var_0.d.c.x, 23u)]), Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.d, -1i), select(vec2<i32>(u_input.a.x, var_0.c.d), u_input.a, true)), global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(var_0.b.a, true, var_0.b.c & var_0.d.c, 32989i), global1[_wgslsmith_index_u32(0u, 23u)]), var_0.b.c.zwy, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.a.x + 148f), var_0.c.a.x, 1348f, _wgslsmith_f_op_f32(max(343f, -1379f))), _wgslsmith_f_op_f32(step(var_0.d.a.x, var_2.x)) < 1000f, _wgslsmith_mult_vec4_u32(vec4<u32>(11922u, u_input.c, u_input.b.x, u_input.b.x), select(vec4<u32>(var_1.x, var_0.b.c.x, var_1.x, 46602u), vec4<u32>(u_input.c, u_input.c, 5647u, 53239u), vec4<bool>(false, true, false, true))), firstLeadingBit(max(var_0.c.d, 42624i)))), Struct_2(~(~u_input.a & (u_input.a ^ vec2<i32>(-1i, -24902i))), global1[_wgslsmith_index_u32(var_1.x, 23u)], var_0.b, var_0.d), select(select(select(select(vec4<bool>(false, true, false, var_0.c.b), vec4<bool>(var_0.b.b, var_0.c.b, var_0.c.b, var_0.b.b), vec4<bool>(true, var_0.d.b, true, var_0.c.b)), !vec4<bool>(var_0.b.b, false, var_0.b.b, var_0.c.b), !vec4<bool>(var_0.b.b, true, false, var_0.c.b)), !vec4<bool>(var_0.c.b, var_0.c.b, true, var_0.c.b), false), select(select(select(vec4<bool>(true, true, var_0.d.b, true), vec4<bool>(var_0.b.b, true, false, var_0.c.b), true), !vec4<bool>(var_0.d.b, false, var_0.b.b, false), false | var_0.c.b), vec4<bool>(true, false, false, false), var_0.b.c.x > 0u), 6181u == _wgslsmith_mult_u32(~4294967295u, var_1.x)));
    let var_4 = (var_3.a.b.b.c ^ ~var_3.b.b.c) << (var_0.c.c % vec4<u32>(32u));
    global0 = array<vec4<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.b.c.x), var_3.b.d.c.zy);
}

