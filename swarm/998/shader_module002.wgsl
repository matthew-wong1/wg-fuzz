struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-1i, 1i, -1i, 1i, 1i, 2147483647i, 1i, -22702i, 1762i, 67929i, 42630i, 33603i, -10367i, -24029i, -2725i, i32(-2147483648), 10887i, 0i, 1i, -1i, i32(-2147483648), 43863i, i32(-2147483648), 2147483647i, -46386i, -1i, 2147483647i, i32(-2147483648), 7638i, 28522i, 22i, 28096i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~u_input.a;
    global0 = array<i32, 32>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~1u), 40135u), 32u)];
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(-977f - 1080f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1499f * 115f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1561f))), _wgslsmith_f_op_f32(f32(-1f) * -2025f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1662f, -762f, 163f, 577f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -1000f, -1000f, 1034f)) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-741f)), -419f, _wgslsmith_f_op_f32(f32(-1f) * -1849f), _wgslsmith_f_op_f32(-123f - 815f)))));
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    return -262f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(828f + _wgslsmith_f_op_f32(trunc(1592f)));
    var var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 32u)])), ~vec2<i32>(1i, global0[_wgslsmith_index_u32(arg_0.a, 32u)])), vec2<i32>(firstLeadingBit(var_1.d), abs(firstTrailingBit(global0[_wgslsmith_index_u32(12379u, 32u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(arg_0)), 262f, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))), vec2<f32>(641f, _wgslsmith_f_op_f32(-var_0)))), abs(abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], -13868i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -13853i))) >> (vec3<u32>(arg_2.x & 1u, 64383u, _wgslsmith_add_u32(13062u, arg_0.a)) % vec3<u32>(32u))), arg_0);
    var_1 = arg_0;
    var var_3 = var_2.e;
    return max(var_3.d, 1i);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(u_input.b.x >> (~min(_wgslsmith_mult_u32(42679u, 0u), firstTrailingBit(u_input.b.x)) % 32u), abs(u_input.b.x), vec4<bool>(!(_wgslsmith_mult_u32(0u, u_input.b.x) > u_input.b.x), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), !(u_input.b.x <= _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, 4294967295u)))), -func_3(Struct_1(~u_input.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, 48327u), vec4<bool>(true, true, true, true), -43496i), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, any(vec2<bool>(true, false))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x) << (vec4<u32>(21599u, 52769u, 1u, u_input.a) % vec4<u32>(32u)))));
    var var_1 = Struct_2(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(424f + 217f)), _wgslsmith_div_f32(-1493f, _wgslsmith_f_op_f32(abs(-1430f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, -511f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(937f, 1159f) - vec2<f32>(-851f, -1847f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(579f, -1018f), vec2<f32>(203f, -1060f)) + vec2<f32>(1000f, -1000f))))), ~(-vec3<i32>(var_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(11590u, 32u)], -4214i), vec2<i32>(-4451i, -1i)), -13018i)), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(var_0.b), min(4294967295u, var_0.b)), ~1u, 1u), firstTrailingBit(var_0.b), vec4<bool>(!var_0.c.x, true, !var_0.c.x, all(vec2<bool>(false, var_0.c.x))), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, global0[_wgslsmith_index_u32(49194u, 32u)], -1i), vec3<i32>(0i, var_0.d, 2147483647i)) >> (1u % 32u))));
    var_1 = Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, -2147483647i, -2147483647i, -1i), vec4<i32>(var_1.e.d, 0i, var_0.d, -20661i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 6590i, 2147483647i, -2147483647i)) | vec4<i32>(-68926i, -1i, var_1.a, global0[_wgslsmith_index_u32(var_1.e.b, 32u)]), ~vec4<i32>(-10061i, global0[_wgslsmith_index_u32(var_0.a, 32u)], 0i, var_1.d.x)), 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-302f)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(157f, 753f)), var_1.b, vec3<bool>(true, true, var_0.c.x & var_1.e.c.x)))), _wgslsmith_f_op_vec2_f32(var_1.b.zy + var_1.c), -var_1.d, var_1.e);
    var var_2 = Struct_2(i32(-1i) * -50909i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.b.zx + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c * var_1.c), vec2<f32>(1000f, 522f))))), var_1.d, Struct_1(abs(0u), ~var_1.e.a, !vec4<bool>(any(vec2<bool>(false, true)), any(var_1.e.c.xwx), select(var_1.e.c.x, var_1.e.c.x, true), var_1.e.c.x), select(-1i, 42498i, var_1.e.c.x & true)));
    let var_3 = -1i;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_2(2147483647i >> (((~u_input.a & abs(42818u)) & ~u_input.a) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-224f, 1809f, 636f))))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1429f + 621f), _wgslsmith_f_op_f32(-340f * 944f), _wgslsmith_f_op_f32(-455f - -1440f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-693f, -462f, -904f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, 24513u, vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 32u)])))), -389f), vec3<i32>(-33933i, ~0i, -(global0[_wgslsmith_index_u32(57712u, 32u)] >> (4294967295u % 32u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.b.x), select(u_input.a, u_input.a, true)), vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.a, u_input.a), abs(u_input.a), _wgslsmith_mod_u32(0u, 4294967295u))), func_2(), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(1u, 32u)] << (2485u % 32u)));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(38259u, u_input.b.x), 28630u & u_input.b.x), 32u)], -2147483647i, _wgslsmith_div_i32(var_0.e.d, 0i << (var_0.e.a % 32u)), -22540i), u_input.b.zz, 4294967295u, _wgslsmith_f_op_f32(floor(var_0.b.x)), 19450i);
}

