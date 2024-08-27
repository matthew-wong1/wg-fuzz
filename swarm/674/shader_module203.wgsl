struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<f32>(-463f, 1844f, 1012f), true, -445f, Struct_1(4294967295u, false)), Struct_2(vec3<f32>(-712f, 2977f, 796f), true, 1448f, Struct_1(49448u, true)), Struct_2(vec3<f32>(523f, -321f, 1779f), false, -496f, Struct_1(3556u, true)), Struct_2(vec3<f32>(275f, -114f, 103f), true, -315f, Struct_1(1u, true)), Struct_2(vec3<f32>(333f, -712f, -705f), false, -899f, Struct_1(1u, true)), Struct_2(vec3<f32>(372f, -839f, 903f), true, -1005f, Struct_1(1u, false)), Struct_2(vec3<f32>(735f, 370f, 456f), false, -1143f, Struct_1(4294967295u, false)), Struct_2(vec3<f32>(1060f, 1156f, 448f), false, 573f, Struct_1(48202u, true)), Struct_2(vec3<f32>(-1215f, 380f, 528f), false, -1236f, Struct_1(1u, true)), Struct_2(vec3<f32>(1689f, 2281f, -476f), true, 1836f, Struct_1(4294967295u, true)), Struct_2(vec3<f32>(-870f, -2151f, -523f), true, 586f, Struct_1(0u, false)), Struct_2(vec3<f32>(901f, -1148f, -1000f), true, -727f, Struct_1(25311u, true)), Struct_2(vec3<f32>(-1000f, -1693f, -106f), false, 500f, Struct_1(4294967295u, false)), Struct_2(vec3<f32>(-1022f, -1028f, 2226f), false, -804f, Struct_1(4583u, false)), Struct_2(vec3<f32>(361f, -1612f, -383f), true, -808f, Struct_1(1u, false)), Struct_2(vec3<f32>(-394f, 2432f, -1000f), false, -1347f, Struct_1(23662u, true)), Struct_2(vec3<f32>(360f, -1000f, -1846f), false, 609f, Struct_1(51341u, false)), Struct_2(vec3<f32>(-746f, 658f, -768f), false, 201f, Struct_1(1u, false)), Struct_2(vec3<f32>(864f, -295f, -480f), true, -1042f, Struct_1(65316u, false)), Struct_2(vec3<f32>(-556f, -1763f, 183f), true, 1116f, Struct_1(34519u, false)), Struct_2(vec3<f32>(560f, -252f, -1011f), false, 2138f, Struct_1(0u, true)), Struct_2(vec3<f32>(-658f, -210f, 166f), true, -134f, Struct_1(21887u, true)), Struct_2(vec3<f32>(-301f, -1547f, 191f), true, -566f, Struct_1(11183u, false)), Struct_2(vec3<f32>(-1314f, -130f, -1000f), true, 581f, Struct_1(13267u, false)), Struct_2(vec3<f32>(1054f, 859f, 631f), true, -1331f, Struct_1(1u, true)), Struct_2(vec3<f32>(-1569f, 1017f, 2037f), true, 308f, Struct_1(51519u, true)), Struct_2(vec3<f32>(-1365f, 165f, 1000f), true, 1466f, Struct_1(31146u, true)), Struct_2(vec3<f32>(1014f, 368f, 764f), false, -1054f, Struct_1(0u, false)), Struct_2(vec3<f32>(-100f, -510f, 556f), false, 559f, Struct_1(30268u, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 29>();
    let var_0 = firstLeadingBit(vec2<u32>(1u, _wgslsmith_clamp_u32(1u, ~15425u, ~81443u) & 4294967295u));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return 0i & _wgslsmith_mult_i32(u_input.a, -21856i);
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(961f, -2651f, -729f)), vec3<f32>(1000f, -860f, 2179f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1198f, 1378f, 736f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2364f, 808f, -115f)))), true, -794f, arg_0);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c, 551f, var_1.b)) + 500f)))), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(var_1.a.x + var_1.c))) + var_1.c));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_1.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_2.x) * var_1.a.x)), _wgslsmith_f_op_f32(780f + 806f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.x)), -1000f))), _wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, !((var_1.d.b && false) || all(vec3<bool>(arg_0.b, var_1.b, arg_0.b))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    global0 = array<Struct_2, 29>();
    var var_0 = vec2<bool>(~1u <= _wgslsmith_sub_u32(~(arg_0.d.a ^ arg_0.d.a), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(73740u, arg_0.d.a, arg_0.d.a)), vec3<u32>(arg_0.d.a, 13929u, 59713u))), false);
    var_0 = select(select(vec2<bool>(!arg_1, any(select(vec3<bool>(arg_1, false, false), vec3<bool>(true, false, true), vec3<bool>(false, arg_0.d.b, false)))), select(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_0.d.b)), !select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), false), var_0.x), (_wgslsmith_mod_i32(u_input.a, 0i) <= reverseBits(u_input.a)) | var_0.x), !select(vec2<bool>(true, false), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, false), select(vec2<bool>(arg_0.d.b, false), vec2<bool>(arg_1, arg_0.d.b), false)), true), arg_0.b == var_0.x);
    let var_1 = Struct_2(arg_0.a, false, 1870f, Struct_1(arg_0.d.a, var_0.x));
    let var_2 = ~(~(abs(vec4<i32>(0i, -2147483647i, u_input.a, 2147483647i) | vec4<i32>(12790i, u_input.a, u_input.a, 1380i)) & (~vec4<i32>(-11526i, -61288i, 1i, u_input.a) | max(vec4<i32>(25799i, u_input.a, u_input.a, 40542i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1721f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -39113i, -2147483647i), vec3<i32>(-2147483647i, u_input.a, -1i)), 0i, false), u_input.a, func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(57860i, -98659i, u_input.a), vec3<i32>(-1i, 1i, u_input.a)) | func_1()) >> (~max(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~(~(vec4<i32>(14761i, -1i, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))), _wgslsmith_div_vec4_i32(abs(min(vec4<i32>(46246i, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -19125i, 3929i, -2147483647i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-49227i, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(1u, false))), false, _wgslsmith_f_op_f32(f32(-1f) * -1228f), Struct_1(1u, false)), all(vec3<bool>(false, true, false)))) > _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1265f - -515f) * 1f)));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(0u), ~(firstTrailingBit(12004u) >> (4294967295u % 32u))), abs(max(~firstLeadingBit(vec2<u32>(1u, 4294967295u)), countOneBits(vec2<u32>(1u, 1u)))));
    var var_2 = global0[_wgslsmith_index_u32(~28406u | firstTrailingBit(4190u), 29u)];
    var_2 = Struct_2(var_2.a, var_2.d.b & true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-173f, var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(438f - -807f))))), var_2.d);
    let var_3 = firstLeadingBit(vec4<u32>(firstTrailingBit(var_1.x), ~var_1.x, var_1.x >> (~firstTrailingBit(75889u) % 32u), max(firstLeadingBit(~28654u), countOneBits(~var_2.d.a))));
    let var_4 = Struct_1(58865u, var_2.b);
    let var_5 = Struct_1(27451u, any(vec3<bool>(all(!vec3<bool>(false, var_4.b, var_4.b)), !all(vec2<bool>(false, false)), (-19204i >= u_input.a) != (var_2.c > var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-985f, var_2.a.x, 1044f, var_2.c), vec4<f32>(-1661f, -2112f, var_2.c, 1904f)) * vec4<f32>(191f, var_2.c, 1288f, var_2.a.x)))))), -firstTrailingBit(var_0.yy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1363f, _wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1690f), _wgslsmith_f_op_f32(-691f + -1502f))))));
}

