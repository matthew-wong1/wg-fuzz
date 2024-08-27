struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-1i, 32070i, 31731i, 1i, -1i, 51489i, -1i, 1i, -1i, 20825i, -10552i, 0i, 2977i, -27777i, 2147483647i, 58014i, 2147483647i, 2902i, 0i, -42684i, 0i, 1i, i32(-2147483648), 50886i, 13846i, i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global1: array<Struct_4, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<Struct_4, 6>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * _wgslsmith_f_op_f32(min(-318f, -600f))))) * 1446f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, 107f));
    let var_2 = abs(-_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, ~global0[_wgslsmith_index_u32(6317u, 30u)])));
    global0 = array<i32, 30>();
    return -1217f;
}

fn func_2() -> f32 {
    let var_0 = 6847u;
    global0 = array<i32, 30>();
    global1 = array<Struct_4, 6>();
    global1 = array<Struct_4, 6>();
    global0 = array<i32, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) - _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(f32(-1f) * -558f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = vec2<bool>(!(!(!arg_1.a) || select(arg_3.b.a, all(vec2<bool>(false, arg_1.a)), false)), false);
    global1 = array<Struct_4, 6>();
    var var_1 = Struct_2(arg_0.zy, Struct_1(arg_1.a, u_input.a.x, true));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -517f), var_1.a.x, arg_3.b, select(!(!(!vec3<bool>(true, false, var_1.b.a))), vec3<bool>((i32(-1i) * -1i) == select(-1i, -2147483647i, false), true, any(vec3<bool>(false, true, true))), !vec3<bool>(true, var_1.b.c, false)));
    let var_3 = _wgslsmith_sub_u32(~countOneBits(0u), abs(1u));
    return Struct_3(var_2.a, var_2.a, var_2.c, vec3<bool>(false, true, var_2.c.a));
}

fn func_1() -> Struct_3 {
    return func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-289f))), -620f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(649f * -1279f))))), Struct_1(u_input.a.x > -1i, 1i, false), global0[_wgslsmith_index_u32(1u, 30u)] ^ -107i, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(239f)) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(749f)))), Struct_1(true, abs(u_input.a.x), !all(vec2<bool>(false, false)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    var var_0 = arg_1.e.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-267f, -413f, arg_0.a))))))))));
    let var_2 = Struct_4(arg_1.d, arg_1.a.x, 431f, arg_1.a, ~_wgslsmith_sub_vec3_u32(arg_1.e, min(arg_1.e, arg_1.e)));
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 6u)];
    let var_4 = var_3.a;
    return arg_2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), Struct_4(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1506f) - -423f), -912f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1395f, -628f, 1271f, -310f), vec4<f32>(1238f, -753f, -284f, 2240f), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(-125f + 1000f), -2111f, _wgslsmith_f_op_f32(round(-181f)), 285f))), vec3<u32>(~abs(4294967295u), 4294967295u, 1u)), func_1());
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(~4294967295u), 0u, ~abs(20646u), _wgslsmith_sub_u32(~48354u, 0u)) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) << ((select(vec4<u32>(1u, 1u, 39869u, 70348u), vec4<u32>(25524u, 50807u, 0u, 8672u), false) & vec4<u32>(1u, 31737u, 45468u, 60213u)) % vec4<u32>(32u))), min(select(vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(vec4<u32>(28121u, 3729u, 12163u, 0u)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), func_1().c.c && true), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_2 = _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(975f))))));
    var var_3 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1826f, 172f)), 1631f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, var_2, var_2) * vec3<f32>(-1610f, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -712f, var_2) - vec3<f32>(748f, var_2, 2882f)))) - vec3<f32>(_wgslsmith_f_op_f32(711f + 192f), _wgslsmith_f_op_f32(-2142f * -1140f), _wgslsmith_div_f32(861f, var_2)))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, -1265f, var_2), vec3<f32>(var_2, var_2, -1769f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(-936f, 308f, -1320f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -1310f) * vec3<f32>(-579f, var_2, var_2)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -1837f)))), Struct_1(!(var_1.x < 31519u), func_4(vec3<f32>(-1263f, 253f, var_2), func_1().c, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(28609u, 30u)], var_0), Struct_2(vec2<f32>(var_2, -1275f), Struct_1(false, u_input.a.x, true))).c.b, select(func_1().c.a, true, false)), ~_wgslsmith_add_i32(0i, i32(-1i) * -9515i), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-102f, -186f)))), Struct_1(false, i32(-1i) * -16477i, false))).c, _wgslsmith_mult_i32(~min(~2147483647i, ~u_input.a.x), -1i), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, 755f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1283f, 768f), vec2<f32>(995f, var_2), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, -1025f)))), Struct_1(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, -953f), vec3<f32>(-971f, var_2, -1310f), vec3<bool>(false, false, true))), Struct_1(true, 9902i, true), -35896i, Struct_2(vec2<f32>(var_2, var_2), Struct_1(false, global0[_wgslsmith_index_u32(69256u, 30u)], true))).c.a, ~1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(max(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 3495i, -27392i, -61828i), vec4<i32>(-1i, var_3.c.b, 2768i, -3535i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, global0[_wgslsmith_index_u32(var_1.x, 30u)]) | vec4<i32>(var_3.c.b, global0[_wgslsmith_index_u32(0u, 30u)], -2147483647i, 12674i), vec4<i32>(2147483647i, 40276i, 2928i, 39612i) << (vec4<u32>(8291u, 18022u, var_1.x, var_1.x) % vec4<u32>(32u)))), vec4<i32>(1i, ~(-23086i), -22491i, func_4(vec3<f32>(var_3.a, var_3.b, var_3.a), var_3.c, abs(-2147483647i), Struct_2(vec2<f32>(var_3.a, var_2), var_3.c)).c.b)), var_1.x);
}

