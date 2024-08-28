struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-845f, vec2<f32>(396f, -1004f), vec3<bool>(false, true, false), vec4<u32>(74931u, 4557u, 41651u, 1u)), Struct_1(-428f, vec2<f32>(740f, -1000f), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 9749u, 63377u, 1319u)), Struct_1(-2146f, vec2<f32>(531f, -901f), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 4294967295u, 56111u)), Struct_1(342f, vec2<f32>(1338f, 1637f), vec3<bool>(false, false, true), vec4<u32>(1u, 21000u, 5223u, 1u)), Struct_1(1288f, vec2<f32>(1136f, 1275f), vec3<bool>(true, false, false), vec4<u32>(36677u, 48670u, 11647u, 1u)), Struct_1(935f, vec2<f32>(-1410f, -308f), vec3<bool>(false, true, false), vec4<u32>(23094u, 27018u, 74817u, 0u)), Struct_1(-516f, vec2<f32>(-230f, -1000f), vec3<bool>(false, true, true), vec4<u32>(8625u, 56683u, 62355u, 59250u)), Struct_1(1000f, vec2<f32>(3299f, -954f), vec3<bool>(false, false, false), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(241f, vec2<f32>(-1258f, -331f), vec3<bool>(true, true, false), vec4<u32>(0u, 4294967295u, 28377u, 22689u)), Struct_1(1283f, vec2<f32>(-552f, -671f), vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 494u, 4294967295u)), Struct_1(1000f, vec2<f32>(-283f, 2059f), vec3<bool>(true, false, false), vec4<u32>(18358u, 6287u, 0u, 4294967295u)), Struct_1(-1161f, vec2<f32>(-200f, -371f), vec3<bool>(true, true, false), vec4<u32>(0u, 1u, 23060u, 38032u)), Struct_1(1109f, vec2<f32>(1245f, -171f), vec3<bool>(true, true, false), vec4<u32>(6688u, 49653u, 1u, 56645u)), Struct_1(222f, vec2<f32>(-1729f, -387f), vec3<bool>(false, false, false), vec4<u32>(0u, 85496u, 55678u, 0u)), Struct_1(141f, vec2<f32>(280f, -154f), vec3<bool>(false, true, true), vec4<u32>(11162u, 25588u, 4294967295u, 0u)), Struct_1(632f, vec2<f32>(1853f, -398f), vec3<bool>(true, false, false), vec4<u32>(0u, 37810u, 4294967295u, 23871u)), Struct_1(601f, vec2<f32>(-601f, -225f), vec3<bool>(false, false, true), vec4<u32>(35197u, 1u, 22860u, 33638u)), Struct_1(1407f, vec2<f32>(442f, -1973f), vec3<bool>(true, false, false), vec4<u32>(0u, 33077u, 5858u, 1u)), Struct_1(-2296f, vec2<f32>(550f, -622f), vec3<bool>(true, true, false), vec4<u32>(8050u, 25574u, 2745u, 0u)), Struct_1(244f, vec2<f32>(-1310f, 313f), vec3<bool>(false, false, true), vec4<u32>(30876u, 16045u, 1u, 4294967295u)), Struct_1(1092f, vec2<f32>(-2523f, 1113f), vec3<bool>(false, true, true), vec4<u32>(81333u, 22720u, 23409u, 10356u)), Struct_1(-916f, vec2<f32>(-429f, -124f), vec3<bool>(false, false, true), vec4<u32>(36629u, 1u, 69912u, 1u)), Struct_1(774f, vec2<f32>(224f, 384f), vec3<bool>(true, true, true), vec4<u32>(41902u, 49854u, 32481u, 0u)), Struct_1(1051f, vec2<f32>(-2024f, -259f), vec3<bool>(false, false, true), vec4<u32>(64706u, 27941u, 1u, 44203u)), Struct_1(-1613f, vec2<f32>(1000f, -445f), vec3<bool>(true, false, false), vec4<u32>(8156u, 19005u, 13041u, 34642u)), Struct_1(-625f, vec2<f32>(-1000f, -234f), vec3<bool>(false, false, false), vec4<u32>(5896u, 0u, 44509u, 10429u)), Struct_1(1483f, vec2<f32>(-1462f, 2230f), vec3<bool>(true, true, true), vec4<u32>(0u, 0u, 1u, 15678u)), Struct_1(-413f, vec2<f32>(-1184f, 1422f), vec3<bool>(false, true, false), vec4<u32>(15828u, 36384u, 0u, 4294967295u)), Struct_1(1482f, vec2<f32>(-1751f, -337f), vec3<bool>(true, false, false), vec4<u32>(0u, 0u, 0u, 0u)));

var<private> global1: array<u32, 17>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<i32>, 18>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1058f + -689f), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - arg_0))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global2.x, -832f, -3071f) * vec4<f32>(1216f, arg_0, global2.x, -1527f)) * vec4<f32>(147f, arg_0, arg_0, -1351f)))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-782f, global2.x, -773f, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.x, global2.x, global2.x))))))));
    var var_1 = any(!vec2<bool>(all(vec2<bool>(true, false)) != true, (u_input.c >> (16396u % 32u)) > (2147483647i ^ u_input.b)));
    var var_2 = Struct_3(vec3<bool>(!any(vec3<bool>(true, true, true)), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), true), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_mult_i32(u_input.c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.b), u_input.c), i32(-1i) * -680i)), vec4<i32>(-1i, u_input.c, u_input.b, -1i), Struct_2(_wgslsmith_sub_u32(firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 4294967295u), vec2<u32>(4294967295u, u_input.a)), 17u)]), u_input.a)));
    let var_3 = Struct_2(firstTrailingBit(~var_2.e.a));
    var var_4 = global2.wy;
    return var_2.d.x;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_3(vec3<bool>(arg_0, !arg_0, true), _wgslsmith_f_op_f32(463f - _wgslsmith_f_op_f32(floor(global2.x))), u_input.b, -vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -1i), -vec2<i32>(u_input.b, u_input.b)), (-30164i << (u_input.a % 32u)) | -23644i, 49401i, u_input.b), Struct_2(u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -685f) - _wgslsmith_f_op_f32(284f * global2.x)), _wgslsmith_f_op_f32(-arg_1.x), var_0.b))));
    let var_2 = vec4<i32>(var_0.d.x, func_3(var_0.b) & var_0.d.x, var_0.d.x, reverseBits(_wgslsmith_div_i32(u_input.c, var_0.d.x)) >> (~33584u % 32u));
    global2 = _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), arg_1.x, global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(960f - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -559f)), (1i != u_input.b) && true))));
    let var_3 = max(24964i, -_wgslsmith_add_i32(firstTrailingBit(-33316i), reverseBits(-28765i)) << (u_input.a % 32u));
    return 102881u;
}

fn func_1(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, func_2(all(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(212f, 761f, global2.x, -2329f) + vec4<f32>(global2.x, global2.x, 501f, 838f)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 57093u, global1[_wgslsmith_index_u32(70559u, 17u)], u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46489u, 17u)] | 1u, 17u)], func_2(false, vec4<f32>(global2.x, global2.x, -1443f, -862f)), ~u_input.a, global1[_wgslsmith_index_u32(~83280u, 17u)])), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, 25298u, global1[_wgslsmith_index_u32(0u, 17u)], 6170u)), _wgslsmith_mod_vec4_u32(vec4<u32>(18835u, global1[_wgslsmith_index_u32(u_input.a, 17u)], 1u, u_input.a), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(43731u, 17u)], u_input.a, 23258u)))));
    let var_1 = -(~arg_0 >> (~vec4<u32>(_wgslsmith_add_u32(11262u, 0u), u_input.a, abs(u_input.a), _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(1u, 17u)])) % vec4<u32>(32u)));
    let var_2 = min(_wgslsmith_mult_i32(-2147483647i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -111f)))), ~(-37726i));
    var var_3 = Struct_1(-421f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1506f, -717f)))) + vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x))), select(select(vec3<bool>(all(vec4<bool>(true, true, false, true)), select(false, true, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 17u)] > u_input.a, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true | (var_0.x < var_0.x))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 3247u, u_input.a, u_input.a)) << (~vec4<u32>(36467u, 37181u, 25513u, 81940u) % vec4<u32>(32u)), abs(vec4<u32>(0u, var_0.x, 0u, var_0.x))));
    global1 = array<u32, 17>();
    return firstLeadingBit(~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = vec2<u32>(global1[_wgslsmith_index_u32(1u, 17u)], ~(~42194u));
    let var_2 = -1000f;
    var var_3 = ~_wgslsmith_mult_vec4_i32(-select(func_1(vec4<i32>(u_input.c, u_input.b, u_input.c, 2147483647i)), select(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(u_input.c, u_input.b, 2147483647i, u_input.b), vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, true))), ~_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(45674i, u_input.c, 7187i, -2147483647i)), vec4<i32>(u_input.b, u_input.c, u_input.b, 1i)));
    var var_4 = global0[_wgslsmith_index_u32(var_1.x, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~vec4<i32>(var_3.x, 1i, u_input.c, -2147483647i), vec4<i32>(var_3.x, 28250i, firstLeadingBit(1i) | select(-7333i, -719i, true), 0i)), select(vec4<i32>(-(-1i ^ var_3.x), u_input.b, i32(-1i) * -13219i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, -2147483647i, u_input.b, u_input.b), -vec4<i32>(u_input.b, var_3.x, 41026i, var_3.x) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], global1[_wgslsmith_index_u32(var_4.d.x, 17u)], 51498u, 3592u) % vec4<u32>(32u))), true));
}

