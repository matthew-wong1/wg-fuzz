struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<f32>(1174f, -1334f, -358f, 244f)), Struct_2(vec4<f32>(-1161f, -390f, -354f, 2505f)), Struct_2(vec4<f32>(-1222f, -1000f, -700f, -354f)), Struct_2(vec4<f32>(-320f, 834f, -1375f, 688f)), Struct_2(vec4<f32>(-476f, 1020f, 1882f, 1250f)), Struct_2(vec4<f32>(-665f, 718f, -1000f, -922f)), Struct_2(vec4<f32>(741f, 441f, 1126f, 828f)), Struct_2(vec4<f32>(-115f, 664f, -1079f, -106f)), Struct_2(vec4<f32>(-756f, -2516f, -492f, -505f)), Struct_2(vec4<f32>(-1018f, -807f, -122f, -983f)), Struct_2(vec4<f32>(-497f, -813f, 372f, 1769f)), Struct_2(vec4<f32>(333f, -823f, 1288f, 1060f)), Struct_2(vec4<f32>(-654f, 1063f, 175f, 665f)));

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_2(vec4<f32>(464f, 2434f, 702f, -392f))), Struct_3(Struct_2(vec4<f32>(106f, 1021f, -1664f, 1108f))), Struct_3(Struct_2(vec4<f32>(-471f, 470f, 802f, 554f))), Struct_3(Struct_2(vec4<f32>(-310f, 991f, 768f, 651f))), Struct_3(Struct_2(vec4<f32>(-160f, -161f, 1836f, -934f))), Struct_3(Struct_2(vec4<f32>(-350f, 1113f, -648f, 1786f))), Struct_3(Struct_2(vec4<f32>(842f, -1000f, -1423f, 178f))), Struct_3(Struct_2(vec4<f32>(963f, 854f, -1016f, 722f))), Struct_3(Struct_2(vec4<f32>(1267f, -967f, -734f, 1000f))), Struct_3(Struct_2(vec4<f32>(1217f, 792f, 1106f, -1354f))), Struct_3(Struct_2(vec4<f32>(-287f, -743f, -361f, -126f))), Struct_3(Struct_2(vec4<f32>(-443f, 1000f, 698f, 803f))), Struct_3(Struct_2(vec4<f32>(428f, 742f, -295f, -1000f))), Struct_3(Struct_2(vec4<f32>(2519f, -1000f, 958f, 749f))), Struct_3(Struct_2(vec4<f32>(-1186f, -354f, 335f, -890f))), Struct_3(Struct_2(vec4<f32>(469f, -662f, -686f, -811f))), Struct_3(Struct_2(vec4<f32>(637f, 1000f, 202f, 780f))), Struct_3(Struct_2(vec4<f32>(586f, -2387f, -1000f, -204f))));

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, false, true, true, true, false, false, true, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, true, false, true, false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 18u)];
    global0 = array<vec2<f32>, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(514f, _wgslsmith_f_op_f32(-var_0.a.a.x))))), _wgslsmith_dot_vec4_i32(u_input.a, -(~u_input.a)));
    var var_2 = -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, 1i, 5542i, u_input.a.x), u_input.a) ^ u_input.a, u_input.a), min(-firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, var_1.b)), select(vec4<i32>(var_1.b, var_1.b, u_input.a.x, var_1.b), u_input.a, vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(0u, 31u)])) ^ -u_input.a));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, var_0.a.a.x, 2339f, var_1.a) * var_0.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.a.x, 1424f, var_1.a, 514f))))))));
    return var_1.a;
}

fn func_2() -> vec3<u32> {
    global2 = array<Struct_3, 18>();
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 12520i);
    let var_2 = ~vec3<u32>(u_input.c.x, 4294967295u, ~(~_wgslsmith_mod_u32(1u, u_input.b.x)));
    global1 = array<Struct_2, 13>();
    return vec3<u32>(min(min(_wgslsmith_mod_u32(~u_input.c.x, 0u << (1u % 32u)), u_input.b.x), 1u), u_input.b.x, reverseBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(16524u, u_input.c.x)), vec2<u32>(firstTrailingBit(47787u), u_input.b.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.a, _wgslsmith_f_op_f32(-arg_3.a), !(global3[_wgslsmith_index_u32(min(u_input.b.x, u_input.c.x), 31u)] && !arg_1.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(789f)) + _wgslsmith_f_op_f32(326f - 162f))))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    global1 = array<Struct_2, 13>();
    let var_0 = Struct_1(arg_2, _wgslsmith_mod_i32(44536i, u_input.a.x >> (122977u % 32u)));
    let var_1 = 0i;
    var var_2 = ~arg_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~(~u_input.c) << (_wgslsmith_add_vec3_u32(func_2(), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1, 139u), vec3<u32>(arg_1, u_input.c.x, 7047u))) % vec3<u32>(32u)), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1, 31u)], false, global3[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 31u)], true, global3[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(21380u, 31u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)], false, global3[_wgslsmith_index_u32(69116u, 31u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], true, true, false))), -firstTrailingBit(countOneBits(u_input.a)), Struct_1(arg_2, -u_input.a.x))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(~(i32(-1i) * -1i), var_0.b, -firstTrailingBit(var_1)), select(countOneBits(~countOneBits(vec3<i32>(937i, var_0.b, 24742i))), u_input.a.wxy, all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)] & true, global3[_wgslsmith_index_u32(1u, 31u)]))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> StorageBuffer {
    global3 = array<bool, 31>();
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-arg_1) > arg_0.a.x;
    var var_2 = _wgslsmith_div_i32(-1i, func_1(_wgslsmith_dot_vec4_i32(-u_input.a, abs(vec4<i32>(-1i, 2147483647i, 0i, -1i))), ~u_input.c.x, _wgslsmith_f_op_f32(min(2212f, _wgslsmith_f_op_f32(floor(-138f)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1611u, 1u), u_input.c), 1u), 38330u), 13u)]).x);
    return StorageBuffer(u_input.b, _wgslsmith_dot_vec4_u32(select(u_input.b, ~(~vec4<u32>(66046u, u_input.c.x, 16115u, 30111u)), global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<u32>(1u, 1750u, _wgslsmith_mult_u32(~u_input.c.x, ~u_input.b.x), u_input.c.x & ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(1270f - -725f)))))));
    global3 = array<bool, 31>();
    global3 = array<bool, 31>();
    var var_1 = ~u_input.b.xz;
    global1 = array<Struct_2, 13>();
    var var_2 = !all(!select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], false, global3[_wgslsmith_index_u32(0u, 31u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(37003u, 31u)], global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), !vec3<bool>(global3[_wgslsmith_index_u32(18891u, 31u)], global3[_wgslsmith_index_u32(u_input.b.x, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2413f, 1364f, -112f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -177f, 1014f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(452f, var_0.x, 596f, -425f))))))));
    global0 = array<vec2<f32>, 25>();
    global1 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3.a.a)) + var_3.a.a))), _wgslsmith_f_op_f32(-var_0.x), func_1(_wgslsmith_add_i32(-1i, i32(-1i) * -u_input.a.x), ~(~var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-904f, -622f))))), var_3.a));
}

