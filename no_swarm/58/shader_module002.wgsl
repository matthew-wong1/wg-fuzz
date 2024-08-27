struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(2136f, -208f, 610f, 573f, -1391f, 1000f, -111f, 1039f, -329f, 990f, -733f, 200f, -734f, -1407f, -678f, -2377f, -170f, 164f, -1037f, -120f, 614f, 135f, -548f, 1174f);

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(2147483647i, -12445i, 12270i), vec3<i32>(-48138i, 28639i, 35223i), vec3<i32>(-1i, i32(-2147483648), 132i), vec3<i32>(43988i, -19999i, 92791i), vec3<i32>(17167i, 0i, 9005i), vec3<i32>(0i, 8644i, -1i), vec3<i32>(-53176i, 33537i, 0i), vec3<i32>(29327i, -1i, -1i), vec3<i32>(-1117i, 14246i, -31379i), vec3<i32>(i32(-2147483648), 30698i, 30685i), vec3<i32>(i32(-2147483648), i32(-2147483648), -45160i));

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(267f, -1000f, vec3<bool>(false, true, true)), Struct_2(-191f, 1418f, vec3<bool>(true, true, false)), Struct_2(-520f, 988f, vec3<bool>(false, false, true)), Struct_2(1000f, -116f, vec3<bool>(true, false, false)), Struct_2(-1688f, -1786f, vec3<bool>(true, false, true)), Struct_2(-1108f, -654f, vec3<bool>(true, false, false)), Struct_2(1000f, -1285f, vec3<bool>(false, true, false)), Struct_2(-1611f, 1000f, vec3<bool>(true, false, false)), Struct_2(-813f, -283f, vec3<bool>(true, false, true)), Struct_2(1131f, 363f, vec3<bool>(true, false, false)), Struct_2(-537f, 1182f, vec3<bool>(false, false, true)), Struct_2(172f, -1993f, vec3<bool>(false, false, true)), Struct_2(242f, 165f, vec3<bool>(true, true, false)), Struct_2(257f, 682f, vec3<bool>(true, true, true)), Struct_2(407f, 1000f, vec3<bool>(false, true, false)), Struct_2(597f, 1000f, vec3<bool>(false, true, false)), Struct_2(-1517f, 922f, vec3<bool>(false, false, true)), Struct_2(-619f, 1028f, vec3<bool>(false, false, true)), Struct_2(1225f, 370f, vec3<bool>(false, false, true)), Struct_2(299f, 1002f, vec3<bool>(true, true, true)), Struct_2(1958f, -1071f, vec3<bool>(false, false, true)), Struct_2(1366f, 1793f, vec3<bool>(false, false, true)), Struct_2(-1385f, -1440f, vec3<bool>(true, true, false)), Struct_2(1456f, 148f, vec3<bool>(true, true, true)), Struct_2(-193f, -707f, vec3<bool>(false, false, false)), Struct_2(1226f, -1387f, vec3<bool>(false, false, false)));

var<private> global3: array<bool, 4> = array<bool, 4>(true, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = array<f32, 24>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = -vec4<i32>(max(~(-35079i), u_input.a.x & -u_input.c), 0i, 295i, _wgslsmith_mult_i32(u_input.c, -(u_input.c ^ u_input.b)));
    let var_2 = Struct_1(countOneBits(_wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(~(-1i), 65827i, _wgslsmith_div_i32(u_input.b, 15270i)))), firstTrailingBit(~var_1.x), _wgslsmith_div_i32(~1i, var_1.x), countOneBits(-max(~vec4<i32>(u_input.c, var_1.x, 14921i, u_input.a.x), vec4<i32>(1i, 1i, 1i, 1i))));
    return select(vec3<bool>(false, true, select(all(vec2<bool>(true, false)), select(var_0.x, true, false), u_input.e == 93430u) || false), vec3<bool>(global3[_wgslsmith_index_u32(75191u, 4u)], true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, false), all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 4u)], false, var_0.x))))), global3[_wgslsmith_index_u32(u_input.d, 4u)]);
}

fn func_2() -> bool {
    let var_0 = select(select(func_3(), func_3(), !func_3()), func_3(), !(!(!(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.e, 4u)])))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 24u)], global0[_wgslsmith_index_u32(69528u, 24u)], -2312f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-672f, global0[_wgslsmith_index_u32(0u, 24u)]))))), max(reverseBits(max(u_input.a.zz, u_input.a.xz)), ~vec2<i32>(u_input.b, u_input.c)), Struct_1(_wgslsmith_dot_vec3_i32(u_input.a, -u_input.a), _wgslsmith_clamp_i32(1547i, u_input.b, -_wgslsmith_mult_i32(-14834i, u_input.a.x)), _wgslsmith_mod_i32(36167i, min(u_input.c, 0i)) >> (max(abs(u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(47981u, u_input.e), vec2<u32>(u_input.d, u_input.e))) % 32u), vec4<i32>(_wgslsmith_clamp_i32(u_input.b, ~70685i, abs(0i)), u_input.a.x, 2147483647i, -u_input.b << (u_input.d % 32u))));
    var var_2 = vec4<f32>(var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_div_f32(-1995f, _wgslsmith_f_op_f32(select(var_1.a.x, 1001f, global3[_wgslsmith_index_u32(21687u, 4u)])))), var_1.a.x, !(false | (var_0.x & global3[_wgslsmith_index_u32(u_input.e, 4u)])))), 728f);
    var var_3 = global2[_wgslsmith_index_u32(~11041u, 26u)];
    var_3 = global2[_wgslsmith_index_u32(u_input.e, 26u)];
    return var_3.c.x;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-149f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.e, 24u)])) - _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.e, 24u)])))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(338f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f - global0[_wgslsmith_index_u32(u_input.e, 24u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 24u)]))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.e, u_input.d)), 24u)]))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.b, abs(~(i32(-1i) * -1i))), ~abs(u_input.c), 18707i ^ (u_input.a.x ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.c), vec3<i32>(-2147483647i, u_input.a.x, 1i)) << ((u_input.e & u_input.d) % 32u))), ~reverseBits(vec4<i32>(-29399i, u_input.c, 15364i, u_input.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(max(0u, 21384u)), 24u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f * 184f))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d, 24u)], -831f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 24u)])))))));
    var var_3 = global2[_wgslsmith_index_u32(~(reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.d)) >> (76368u % 32u)), 26u)];
    var var_4 = global3[_wgslsmith_index_u32(~(~u_input.e), 4u)] | func_2();
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, var_2.x, 1499f, var_3.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-910f, global0[_wgslsmith_index_u32(u_input.e, 24u)], -504f, -2355f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1124f, -230f, var_3.b, global0[_wgslsmith_index_u32(3607u, 24u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, 363f, var_2.x, global0[_wgslsmith_index_u32(u_input.d, 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, var_2.x, 470f, global0[_wgslsmith_index_u32(u_input.d, 24u)])), !all(vec2<bool>(true, true))))), vec2<i32>(abs(var_1.d.x) | -25062i, reverseBits(_wgslsmith_mod_i32(44429i, var_1.d.x))) & u_input.a.zz, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_1.b), global1[_wgslsmith_index_u32(~u_input.e, 11u)]) ^ u_input.a.x, -50237i, _wgslsmith_mult_i32(36138i, firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, 1i))), -reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, 24005i, -1i, 18183i), var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(false, (_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.e, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(u_input.e, 4u)])) < _wgslsmith_f_op_f32(ceil(143f))) && all(select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 4u)], global3[_wgslsmith_index_u32(u_input.d, 4u)], global3[_wgslsmith_index_u32(u_input.e, 4u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.e, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(5319u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], true, global3[_wgslsmith_index_u32(u_input.d, 4u)])))));
    global1 = array<vec3<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, 7310u, u_input.e ^ u_input.e, ~1u), ~abs(vec4<u32>(32506u, 42148u, u_input.e, u_input.d))) & u_input.e, firstTrailingBit(u_input.a.zz));
}

