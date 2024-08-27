struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(false, false, true), vec2<f32>(-805f, -856f), -711f, -535f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-520f, -526f), -1118f, 1381f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(298f, 1439f), -422f, -590f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-381f, -868f), -647f, -306f), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1422f, 1000f), -564f, -632f), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-423f, -260f), -305f, -1202f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-709f, 1040f), 1860f, -1522f), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1298f, 404f), 716f, 348f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-400f, 388f), -270f, -422f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1171f, -106f), 502f, -680f), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1431f, 1102f), 878f, -573f), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1000f, -886f), 649f, 1420f), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1180f, 1000f), -163f, 178f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-830f, -611f), 1212f, 1162f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-145f, 536f), 1061f, -2175f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(680f, 361f), -170f, 1000f), Struct_1(vec3<bool>(true, false, false), vec2<f32>(692f, -990f), 121f, 649f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1289f, 315f), 1062f, 2516f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-2093f, -2438f), 1875f, 606f), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1535f, 166f), 1051f, 563f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-105f, 816f), 693f, 357f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(475f, 1694f), 1199f, -1477f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1163f, 614f), 1138f, -427f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1000f, -799f), -805f, -429f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-420f, 146f), 908f, -773f));

var<private> global2: array<bool, 1>;

var<private> global3: array<vec4<bool>, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = array<Struct_1, 25>();
    let var_0 = 25043i;
    var var_1 = Struct_1(vec3<bool>(true, any(!global3[_wgslsmith_index_u32(~u_input.a, 16u)]), 0u != u_input.a), global0.b, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -1000f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.c))))), false)));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~(2619u ^ u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(0u, u_input.a))), vec2<u32>(~71739u, 61148u)), 25u)];
    let var_3 = ~(~reverseBits(vec2<u32>(u_input.a, 49810u)));
    return u_input.a;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~func_3(global1[_wgslsmith_index_u32(72494u, 25u)], any(global0.a.yx)), 25u)];
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(516i, _wgslsmith_add_i32(-1i, -8416i)), _wgslsmith_sub_i32(0i, -u_input.b.x)) & _wgslsmith_div_i32(~8309i, -u_input.b.x), 1i >> (u_input.a % 32u), ~u_input.b.x & -60005i);
    global1 = array<Struct_1, 25>();
    let var_2 = Struct_1(vec3<bool>((max(u_input.a, u_input.a) << (~arg_0 % 32u)) == _wgslsmith_sub_u32(22357u, u_input.a), !(true == (u_input.b.x < var_1.x)), any(!vec2<bool>(true, global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c, -1169f), global0.b, global0.a.yy))), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d, var_0.d))), -231f);
    global2 = array<bool, 1>();
    return _wgslsmith_f_op_f32(-global0.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, func_2(~(~_wgslsmith_mod_u32(36141u, 49518u))), any(vec2<bool>(any(select(global3[_wgslsmith_index_u32(u_input.a, 16u)], vec4<bool>(arg_1, true, true, global0.a.x), false)), any(global0.a))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_3 = vec4<i32>(u_input.b.x, -8054i, -2147483647i & (abs(u_input.b.x) >> (~4294967295u % 32u)), abs(17559i));
    let var_4 = global1[_wgslsmith_index_u32(~(~11521u ^ _wgslsmith_div_u32(76577u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(108729u, 44215u), vec2<u32>(1u, 4294967295u))))), 25u)];
    return Struct_1(!vec3<bool>(func_2(_wgslsmith_add_u32(u_input.a, 4294967295u)), false, all(global3[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1600f, _wgslsmith_f_op_f32(exp2(var_4.d))))) * _wgslsmith_f_op_vec2_f32(-arg_0)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c - arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-782f, arg_2.x)), _wgslsmith_f_op_f32(arg_0.x - -887f)))) + -729f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(74228u << (arg_2.x % 32u), 25u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 25u)];
    global3 = array<vec4<bool>, 16>();
    global3 = array<vec4<bool>, 16>();
    var var_2 = ~arg_2;
    return -firstTrailingBit(_wgslsmith_dot_vec4_i32(~(vec4<i32>(2147483647i, -2679i, u_input.b.x, 0i) << (vec4<u32>(93220u, var_2.x, 4294967295u, u_input.a) % vec4<u32>(32u))), -select(vec4<i32>(u_input.b.x, u_input.b.x, 50261i, 26755i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 2147483647i), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~30587u);
    let var_1 = vec3<i32>(select(select(func_4(func_1(global0.b, true, vec2<f32>(231f, global0.b.x)), _wgslsmith_f_op_f32(global0.d - global0.b.x), vec2<u32>(1u, 0u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 0u, 1u)) % 32u), false), u_input.b.x, func_2(u_input.a)), -16856i, 0i);
    let var_2 = _wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(60510i, -2147483647i, 1080i, u_input.b.x), vec4<i32>(5201i, 1i, 41111i, 1i)), -vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x))), abs(max(_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_1.x, var_1.x, 1i, 93171i), vec4<i32>(var_1.x, u_input.b.x, 57382i, var_1.x), vec4<bool>(global2[_wgslsmith_index_u32(43956u, 1u)], true, global2[_wgslsmith_index_u32(u_input.a, 1u)], false)), -vec4<i32>(-6272i, u_input.b.x, -1i, 2147483647i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(10190i, -52436i, 1i, var_1.x), vec4<i32>(-2147483647i, 0i, var_1.x, 2147483647i))))));
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(step(-1343f, -1411f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1085f - -207f), -195f)) * global0.b.x) != -166f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, 1226f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-901f, global0.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.b.x))))));
    var var_4 = _wgslsmith_sub_i32(var_1.x, select(abs(1i << (u_input.a % 32u)), u_input.b.x, _wgslsmith_div_f32(918f, -306f) > _wgslsmith_f_op_f32(select(123f, _wgslsmith_f_op_f32(ceil(409f)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_add_vec3_i32(abs(-_wgslsmith_sub_vec3_i32(var_1, var_1)), select(firstTrailingBit(var_2.yzx), -vec3<i32>(-2147483647i, u_input.b.x, var_1.x), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 1u)])) >> ((~vec3<u32>(4294967295u, 4294967295u, u_input.a) | ~vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), 2720u, vec3<f32>(_wgslsmith_f_op_f32(-1401f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(516f + 496f), _wgslsmith_f_op_f32(global0.c * var_3.d)))), var_3.b.x, -816f));
}

