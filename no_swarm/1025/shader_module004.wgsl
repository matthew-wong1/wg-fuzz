struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(-36125i, -21828i, i32(-2147483648), -5319i), vec3<f32>(1047f, -1126f, 312f), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec4<i32>(-51492i, i32(-2147483648), 34293i, 0i), vec3<f32>(2137f, 645f, 1193f), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec4<i32>(1i, -31831i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-1000f, 1464f, -861f), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_2(vec4<i32>(1i, 14857i, i32(-2147483648), -11898i), vec3<f32>(-1000f, 945f, 1318f), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_2(vec4<i32>(25076i, -19145i, 0i, -15465i), vec3<f32>(2212f, 1577f, 1000f), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec4<i32>(57832i, -1679i, 0i, -1i), vec3<f32>(948f, -1776f, -1196f), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec4<i32>(i32(-2147483648), -28897i, 2147483647i, 1i), vec3<f32>(1183f, 219f, -1153f), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec4<i32>(-57262i, -9513i, 2147483647i, 1i), vec3<f32>(1355f, 286f, 446f), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_2(vec4<i32>(2147483647i, 1i, -82854i, 20274i), vec3<f32>(-1000f, -985f, -141f), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 11704i, 26214i), vec3<f32>(-959f, -1000f, 1028f), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec4<i32>(i32(-2147483648), -24524i, i32(-2147483648), i32(-2147483648)), vec3<f32>(443f, -298f, 1447f), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec4<i32>(34930i, -15601i, 2147483647i, i32(-2147483648)), vec3<f32>(1055f, -579f, 1039f), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_2(vec4<i32>(26787i, 2147483647i, 1i, 0i), vec3<f32>(-237f, 153f, 1873f), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec4<i32>(-47541i, -1i, 1i, 1i), vec3<f32>(-648f, -448f, 1791f), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec4<i32>(1i, 1i, -39866i, 49521i), vec3<f32>(2056f, 718f, 1528f), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec4<i32>(-17126i, -24040i, -38592i, 0i), vec3<f32>(338f, 484f, -1086f), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec4<i32>(i32(-2147483648), 1751i, 18871i, 1i), vec3<f32>(712f, 3022f, -759f), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec4<i32>(-1i, 19148i, i32(-2147483648), 1i), vec3<f32>(464f, -1000f, 322f), vec2<bool>(true, false), vec2<bool>(true, false)));

var<private> global3: array<vec2<f32>, 12>;

var<private> global4: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(398f, -800f, -677f), vec3<f32>(973f, 1583f, -127f), vec3<f32>(-200f, -448f, -698f), vec3<f32>(975f, 2519f, -142f), vec3<f32>(-786f, -295f, 386f), vec3<f32>(-544f, 437f, -176f), vec3<f32>(348f, -842f, 972f), vec3<f32>(-1054f, -1000f, 630f), vec3<f32>(-1233f, 337f, 2394f), vec3<f32>(487f, -215f, -1761f), vec3<f32>(1847f, -648f, 815f), vec3<f32>(-925f, -263f, 424f), vec3<f32>(-1379f, -982f, 2363f), vec3<f32>(359f, 200f, 1000f), vec3<f32>(-295f, 1813f, -605f), vec3<f32>(1482f, -663f, -473f), vec3<f32>(-561f, -253f, 176f), vec3<f32>(-1383f, 381f, -1414f), vec3<f32>(-321f, 120f, 930f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(2864u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 0u)) | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23801u, 3u)], 3u)], 3u)]), 3u)] & select(global0[_wgslsmith_index_u32(0u, 3u)], ~(~max(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(31870u, 3u)])), select(select(false, true, true), !(!arg_0), arg_0)), 18u)];
    let var_1 = Struct_1(457f, 16307i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), var_0.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-266f, var_0.b.x)), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(795f, var_0.b.x))))), var_0.b.x));
    var var_2 = true;
    var var_3 = var_1;
    global0 = array<u32, 3>();
    return ~27739u;
}

fn func_2() -> vec4<f32> {
    var var_0 = global2[_wgslsmith_index_u32(select(44252u, ~abs(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(0u, 3u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)])), ~global0[_wgslsmith_index_u32(func_3(true), 3u)] > ~global0[_wgslsmith_index_u32(~0u, 3u)]), 18u)];
    let var_1 = ~((_wgslsmith_mult_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 10273u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 3u)], 53531u)) >> (abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], global0[_wgslsmith_index_u32(1u, 3u)])) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)] & 1u, global0[_wgslsmith_index_u32(0u | global0[_wgslsmith_index_u32(1u, 3u)], 3u)]), _wgslsmith_clamp_u32(~40560u, 1u, 0u)));
    let var_2 = vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.b.x, -1014f, reverseBits(5365u) >= (1u << (var_1.x % 32u)))))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1000f) * -284f))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-186f, -899f))))), u_input.a.x, var_0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_0.b.x), var_2.yzz) * _wgslsmith_f_op_vec3_f32(var_2.xzz - var_0.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, var_2.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, var_0.b.x, 101f))) * _wgslsmith_f_op_vec3_f32(-var_0.b)))));
    var var_4 = Struct_2(vec4<i32>(~1i, firstLeadingBit(min(var_3.b, _wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(-2147483647i, 10518i, 59643i)))), u_input.a.x, _wgslsmith_div_i32(var_3.b << (1u % 32u), 2147483647i)), _wgslsmith_f_op_vec3_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 35994u, 65366u) & vec4<u32>(global0[_wgslsmith_index_u32(13555u, 3u)], var_1.x, 20214u, 44551u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], var_1.x, var_1.x, 60858u), vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(13558u, 3u)])))), 19u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_2.xzx, var_3.d)))))), select(select(var_0.d, select(var_0.d, select(var_0.d, var_0.d, vec2<bool>(var_0.d.x, var_0.c.x)), !vec2<bool>(var_0.c.x, false)), var_0.c.x), vec2<bool>(any(select(vec3<bool>(true, var_0.c.x, var_0.d.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, false))), var_0.d.x), select(vec2<bool>(false, !var_0.d.x), select(select(vec2<bool>(var_0.c.x, var_0.c.x), var_0.d, true), var_0.c, true), var_0.d.x)), vec2<bool>(false, var_0.d.x));
    return vec4<f32>(_wgslsmith_div_f32(-777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.b.x)) - var_4.b.x)), 1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(round(-906f))))))), _wgslsmith_f_op_f32(500f + var_2.x));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_2()), vec4<bool>(any(vec3<bool>(true, true, true)), (true | select(true, false, true)) | all(vec3<bool>(true, true, true)), any(vec2<bool>(global0[_wgslsmith_index_u32(50575u, 3u)] >= 4294967295u, true)), -1571f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1767f)), _wgslsmith_f_op_f32(-553f + -1000f), true)))));
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) << (vec4<u32>(0u, 12290u, 46253u, 4294967295u) % vec4<u32>(32u))) | u_input.a, vec4<i32>(-u_input.a.x, u_input.a.x, u_input.a.x, -29511i)) | u_input.a.x;
    global4 = array<vec3<f32>, 19>();
    var var_2 = Struct_2(vec4<i32>(~45544i, -2147483647i, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, ~(-67173i))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19387u, 3u)], 3u)] >> (global0[_wgslsmith_index_u32(0u, 3u)] % 32u)), 3u)] | 7376u), 19u)], vec2<bool>(false, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)))), !select(vec2<bool>(any(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), true));
    var var_3 = reverseBits(~(~select(reverseBits(vec3<u32>(71055u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 0u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81873u, 3u)], 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 45050u), var_2.c.x)));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(1390f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(525f, -251f), vec2<f32>(-2952f, 1291f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -864f) * global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 12u)])) * global3[_wgslsmith_index_u32(select(~1u, 19074u, true), 12u)])));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -187f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - -189f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(-318f + var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(473f, var_0.x, -225f, var_0.x) + vec4<f32>(var_0.x, -716f, 542f, 245f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(256f, 1000f, -188f, -301f), vec4<f32>(-624f, var_0.x, -2937f, 936f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1144f, var_0.x)))), vec4<bool>(select(true, any(vec4<bool>(false, true, true, false)), true), var_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1424f), false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -1000f, 161f, -219f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, -1334f, -1250f, var_0.x) + vec4<f32>(457f, 1230f, 385f, var_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.x, var_1.x, -2000f), vec4<f32>(var_0.x, var_1.x, var_1.x, var_1.x)))))));
    global4 = array<vec3<f32>, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1015f)))), u_input.a.x ^ 4884i, -1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 376f, -1557f), global4[_wgslsmith_index_u32(29117u, 19u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -1043f) + global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 19u)])))) - global4[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_div_vec3_f32(vec3<f32>(569f, _wgslsmith_f_op_f32(f32(-1f) * -601f), -215f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(0u, 19u)], vec3<f32>(var_0.x, 582f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1198f) + vec3<f32>(var_0.x, var_0.x, 1123f)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8228u, 3u)], 3u)], 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11726u, 3u)], 3u)], global0[_wgslsmith_index_u32(6045u, 3u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)])), 28u)]), vec2<i32>(57415i, _wgslsmith_sub_i32(var_2.b, u_input.a.x))), 11229i, vec2<i32>(var_2.b, abs(-5039i)), vec4<u32>(_wgslsmith_sub_u32(~87053u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(31531u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45565u, 3u)], 3u)], 0u)), vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48109u, 3u)], 3u)]))), abs(106610u), global0[_wgslsmith_index_u32(98759u, 3u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 16741u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96440u, 3u)], 3u)], 0u), vec4<u32>(18714u, 82816u, 39800u, global0[_wgslsmith_index_u32(39516u, 3u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4025u, 3u)], 3u)])), vec3<f32>(-1387f, -1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(abs(var_1.x)))) - _wgslsmith_f_op_vec4_f32(func_2()).x)));
}

