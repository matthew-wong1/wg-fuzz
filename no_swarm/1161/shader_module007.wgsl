struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

var<private> global2: array<u32, 20>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(1u, 28829u), true, 13760u, vec3<f32>(-340f, 163f, 757f), false), Struct_1(vec2<u32>(29850u, 1u), true, 4294967295u, vec3<f32>(-766f, 209f, 390f), true), Struct_1(vec2<u32>(25398u, 59179u), false, 8354u, vec3<f32>(404f, -242f, -2072f), true), Struct_1(vec2<u32>(1u, 0u), true, 13441u, vec3<f32>(-1000f, 224f, 686f), false), Struct_1(vec2<u32>(28902u, 18840u), false, 26800u, vec3<f32>(-969f, 409f, -1178f), true), Struct_1(vec2<u32>(1u, 0u), true, 55115u, vec3<f32>(581f, 707f, 636f), false), Struct_1(vec2<u32>(0u, 44196u), false, 14244u, vec3<f32>(-1328f, -339f, -1000f), false), Struct_1(vec2<u32>(32708u, 1u), true, 1u, vec3<f32>(-351f, 518f, 302f), true), Struct_1(vec2<u32>(113228u, 24127u), true, 1u, vec3<f32>(-873f, -567f, -192f), false), Struct_1(vec2<u32>(4294967295u, 0u), true, 5639u, vec3<f32>(-329f, 193f, 435f), false), Struct_1(vec2<u32>(0u, 4294967295u), true, 90109u, vec3<f32>(963f, 367f, -583f), true), Struct_1(vec2<u32>(618u, 57652u), true, 4294967295u, vec3<f32>(-413f, 1909f, 1260f), false), Struct_1(vec2<u32>(4294967295u, 35637u), true, 1u, vec3<f32>(405f, 1374f, 1462f), true), Struct_1(vec2<u32>(55944u, 1u), false, 50087u, vec3<f32>(806f, 1000f, 1273f), false), Struct_1(vec2<u32>(4294967295u, 7816u), true, 55975u, vec3<f32>(716f, 225f, 444f), true), Struct_1(vec2<u32>(8420u, 0u), true, 39885u, vec3<f32>(-1027f, 1000f, 1616f), true), Struct_1(vec2<u32>(5596u, 1u), false, 70704u, vec3<f32>(607f, -693f, -247f), false), Struct_1(vec2<u32>(53985u, 0u), true, 38458u, vec3<f32>(539f, 1805f, 1006f), false), Struct_1(vec2<u32>(9026u, 4294967295u), true, 24390u, vec3<f32>(674f, -259f, 1671f), false), Struct_1(vec2<u32>(4294967295u, 4245u), false, 1u, vec3<f32>(-481f, 391f, 278f), false));

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(21918u, 556u), true, 0u, vec3<f32>(782f, 400f, 1000f), false), Struct_1(vec2<u32>(19241u, 74410u), true, 37797u, vec3<f32>(908f, -674f, 373f), true), Struct_1(vec2<u32>(66817u, 70958u), true, 93836u, vec3<f32>(-836f, 229f, -140f), true), Struct_1(vec2<u32>(45828u, 18464u), false, 4294967295u, vec3<f32>(-1045f, 1783f, 221f), true), Struct_1(vec2<u32>(4294967295u, 36448u), true, 12967u, vec3<f32>(-525f, -261f, 882f), false), Struct_1(vec2<u32>(2844u, 1u), true, 40547u, vec3<f32>(-862f, -771f, -582f), false), Struct_1(vec2<u32>(0u, 4294967295u), false, 24441u, vec3<f32>(253f, -1126f, 566f), false), Struct_1(vec2<u32>(0u, 4294967295u), true, 2641u, vec3<f32>(-599f, 432f, -117f), false), Struct_1(vec2<u32>(0u, 12043u), true, 69153u, vec3<f32>(2686f, -578f, -404f), true), Struct_1(vec2<u32>(4294967295u, 1u), true, 36072u, vec3<f32>(762f, 363f, -1734f), false));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = reverseBits(firstLeadingBit(4294967295u >> (~abs(global1.a.x) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1225f)) * global1.d.x) * _wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(min(1369f, global1.d.x)))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.d.x)) - -1000f) * _wgslsmith_f_op_f32(min(-457f, _wgslsmith_f_op_f32(trunc(1277f)))))), 567f);
    global0 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    var_1 = global1.d.x;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> f32 {
    global4 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0.d.x);
    var_0 = arg_0.d.x;
    let var_1 = firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(reverseBits(~arg_0.a.x), 20u)], select(arg_0.c, ~select(arg_1, 1u, global1.e), (i32(-1i) * -2147483647i) > u_input.a), 0u));
    var var_2 = global3[_wgslsmith_index_u32(u_input.b, 20u)];
    return _wgslsmith_f_op_f32(var_2.d.x * -1000f);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = 1u;
    let var_1 = ~select(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 0i), arg_1.yzy), arg_1.xww), countOneBits(arg_1.wzy), vec3<bool>(true, true, true));
    let var_2 = Struct_1(select(~(~vec2<u32>(15936u, 16305u)) ^ (arg_2.a ^ global1.a), vec2<u32>(_wgslsmith_clamp_u32(global1.c, global2[_wgslsmith_index_u32(57500u, 20u)], 4294967295u) & 4294967295u, ~(27793u | var_0)), vec2<bool>(false, 0u >= ~global2[_wgslsmith_index_u32(49244u, 20u)])), true, 8693u, vec3<f32>(_wgslsmith_f_op_f32(floor(810f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) + _wgslsmith_f_op_f32(trunc(global1.d.x))), _wgslsmith_f_op_f32(func_3(Struct_1(global1.a, arg_0, 4294967295u, vec3<f32>(global1.d.x, global1.d.x, arg_2.d.x), true), 17674u, -167f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.d.x)) + arg_2.d.x))), global1.b);
    global4 = array<Struct_1, 10>();
    let var_3 = Struct_1(global1.a, all(vec3<bool>(true, global1.e, true)), 4294967295u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.x))), 1f, -972f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-476f - _wgslsmith_f_op_f32(-arg_2.d.x)), -676f)), true);
    return ~countOneBits(reverseBits(~(~var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(global1.e, func_1(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 10u)], false, global1.b), true, true)), !select(!(!vec4<bool>(global1.e, true, true, global1.b)), !vec4<bool>(global1.e, global1.b, global1.b, false), !vec4<bool>(global1.b, global1.b, global1.e, global1.b)), global1.e);
    let var_1 = -15271i;
    global3 = array<Struct_1, 20>();
    let var_2 = global3[_wgslsmith_index_u32(global1.c & ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.a.x), vec2<u32>(0u, global2[_wgslsmith_index_u32(global1.c, 20u)])), global1.a ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), global1.a)), 20u)];
    var var_3 = var_0.yx;
    var var_4 = max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(6062u, 20u)], 52439u, 30182u) >> (vec3<u32>(7059u, 18964u, global2[_wgslsmith_index_u32(31999u, 20u)]) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, global2[_wgslsmith_index_u32(global1.a.x, 20u)], var_2.a.x), vec3<u32>(global2[_wgslsmith_index_u32(var_2.c, 20u)], global1.a.x, 1u))), 4294967295u, ~1u), select(vec3<u32>(_wgslsmith_mult_u32(18833u, global2[_wgslsmith_index_u32(global1.a.x, 20u)]), ~global1.c, ~57951u), ~(vec3<u32>(22803u, 4598u, global2[_wgslsmith_index_u32(0u, 20u)]) & vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 9907u, 4294967295u)), true)) & ~vec3<u32>(4294967295u, _wgslsmith_sub_u32(~77299u, abs(var_2.c)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(69892u, global1.c), 32579u));
    var_4 = vec3<u32>(global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mult_u32(var_2.c, global1.a.x)), 20u)], _wgslsmith_dot_vec2_u32(vec2<u32>(13038u, var_2.a.x) & min(_wgslsmith_div_vec2_u32(var_2.a, var_2.a), var_4.zz << (var_4.zy % vec2<u32>(32u))), min(var_2.a, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_4.x), vec2<u32>(37798u, global2[_wgslsmith_index_u32(u_input.b, 20u)])))), u_input.b);
    var var_5 = var_3.x || global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, ~(-6314i), countOneBits(vec4<u32>(~(~u_input.b), _wgslsmith_mod_u32(~u_input.b, _wgslsmith_mod_u32(var_2.c, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.x, 35329u, global2[_wgslsmith_index_u32(61414u, 20u)]), vec4<u32>(u_input.b, 0u, 4294967295u, 57803u)), global2[_wgslsmith_index_u32(func_2(var_2.b, u_input.d, global4[_wgslsmith_index_u32(firstLeadingBit(38173u), 10u)]), 20u)])));
}

