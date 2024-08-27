struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: array<f32, 8> = array<f32, 8>(-701f, 1238f, 2311f, 1130f, 146f, -772f, 1015f, 1278f);

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec4<f32>(1179f, 1039f, 1269f, -1491f)), Struct_4(vec4<f32>(-1356f, 1401f, 1334f, -1000f)), Struct_4(vec4<f32>(386f, 913f, -333f, -804f)), Struct_4(vec4<f32>(274f, 1000f, 1186f, -483f)), Struct_4(vec4<f32>(-176f, -1530f, -2284f, -1087f)), Struct_4(vec4<f32>(-353f, -1700f, -107f, -1000f)), Struct_4(vec4<f32>(1255f, 811f, -1000f, 1966f)), Struct_4(vec4<f32>(1208f, 986f, -423f, -949f)), Struct_4(vec4<f32>(-114f, 376f, 1415f, 1253f)), Struct_4(vec4<f32>(-240f, 514f, -394f, -963f)), Struct_4(vec4<f32>(1561f, 775f, 479f, -1000f)), Struct_4(vec4<f32>(207f, 1868f, 2051f, 1000f)), Struct_4(vec4<f32>(1566f, -234f, 973f, -937f)), Struct_4(vec4<f32>(-546f, -964f, -1641f, 1602f)), Struct_4(vec4<f32>(318f, -1346f, -859f, -537f)), Struct_4(vec4<f32>(-846f, -648f, 1019f, -500f)), Struct_4(vec4<f32>(649f, -777f, 678f, -116f)), Struct_4(vec4<f32>(-178f, 368f, -167f, -1000f)), Struct_4(vec4<f32>(882f, -237f, 612f, 702f)), Struct_4(vec4<f32>(-1011f, 929f, 1908f, 412f)), Struct_4(vec4<f32>(-980f, -868f, -1000f, 1978f)), Struct_4(vec4<f32>(-909f, 559f, -1027f, 281f)), Struct_4(vec4<f32>(664f, 982f, 109f, -269f)), Struct_4(vec4<f32>(403f, 1932f, 393f, -567f)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2, arg_3: f32) -> bool {
    global2 = true;
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(2268u, firstTrailingBit(0u | arg_1.a))), _wgslsmith_clamp_u32(arg_1.a, 39241u, countOneBits(1u)), arg_1.a, 4294967295u);
    global0 = array<Struct_3, 21>();
    let var_1 = !select(!vec2<bool>(!arg_0, arg_2.a), !(!select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), false)), !vec2<bool>(46400u > arg_1.a, arg_0));
    global0 = array<Struct_3, 21>();
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_5(~4294967295u);
    global1 = array<f32, 8>();
    var var_1 = !select(select(vec3<bool>(any(vec3<bool>(false, false, arg_0.x)), func_3(arg_0.x, Struct_5(var_0.a), Struct_2(arg_0.x), global1[_wgslsmith_index_u32(16454u, 8u)]), false & arg_0.x), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, true), vec3<bool>(true, true, arg_0.x)), !(!vec3<bool>(false, true, arg_0.x))), !(!(!vec3<bool>(arg_0.x, true, arg_0.x))), !(!arg_0.x));
    var_0 = Struct_5(_wgslsmith_clamp_u32(~4294967295u, 89476u, ~(~(~u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, global1[_wgslsmith_index_u32(44472u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) - _wgslsmith_div_vec3_f32(vec3<f32>(-2135f, global1[_wgslsmith_index_u32(4294967295u, 8u)], 2211f), vec3<f32>(250f, 935f, global1[_wgslsmith_index_u32(52576u, 8u)])))))));
    return !(!select(vec4<bool>(var_1.x, true, arg_0.x | var_1.x, select(var_1.x, arg_0.x, true)), vec4<bool>(global1[_wgslsmith_index_u32(45060u, 8u)] != var_2.x, true, var_1.x, any(vec4<bool>(var_1.x, arg_0.x, false, var_1.x))), var_1.x));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    global0 = array<Struct_3, 21>();
    var var_0 = !(!func_2(select(vec2<bool>(arg_1, false), select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1), true), vec4<u32>(_wgslsmith_mult_u32(arg_3, arg_3), u_input.a.x, select(u_input.a.x, 37968u, false), 7038u), vec4<i32>(arg_0, 0i, arg_0, arg_0) | vec4<i32>(-35014i, 1i, 0i, 0i), (arg_3 << (0u % 32u)) | u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1268f * 1223f), global1[_wgslsmith_index_u32(16508u, 8u)]) + global1[_wgslsmith_index_u32(~0u, 8u)]);
    var var_2 = vec3<i32>(arg_0, -2147483647i, firstTrailingBit(-5502i));
    var var_3 = Struct_2(!(arg_2.x | ((arg_3 | u_input.a.x) < 1u)));
    return -var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(func_1(-61192i, false, vec3<bool>(true, true, false), u_input.a.x), firstLeadingBit(4363i), -35425i), ~vec3<i32>(1i, 1i, 1i))), 1i);
    let var_1 = !select(any(vec2<bool>(any(vec3<bool>(true, true, false)), true)), 0u == u_input.a.x, !(!(var_0 == -11549i)));
    global0 = array<Struct_3, 21>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x >> (_wgslsmith_div_u32(0u, u_input.a.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u & u_input.a.x, u_input.a.x), ~1u))), 24u)];
    var var_3 = Struct_1(1u | ~u_input.a.x, vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(57733u, 4294967295u)), u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(72354u, u_input.a.x, u_input.a.x) ^ vec3<u32>(64774u, u_input.a.x, u_input.a.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 25961u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 11777u))), u_input.a.x), 54812i);
    var var_4 = vec2<bool>(var_1, false);
    let var_5 = reverseBits(35021i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2365f, _wgslsmith_f_op_f32(f32(-1f) * -710f), -1567f, _wgslsmith_f_op_f32(sign(547f)))))), -61484i, _wgslsmith_f_op_f32(1323f - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_2.a.wz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -856f) - var_2.a.zy)))))));
}

