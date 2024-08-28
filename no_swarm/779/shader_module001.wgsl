struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(457f, -1000f), vec2<f32>(1464f, -1266f), vec2<f32>(-196f, 2160f), vec2<f32>(291f, -288f), vec2<f32>(760f, 717f), vec2<f32>(200f, 540f), vec2<f32>(1719f, 261f), vec2<f32>(-1101f, -181f), vec2<f32>(-793f, 1954f), vec2<f32>(-1127f, -1332f), vec2<f32>(-445f, -1000f), vec2<f32>(3108f, -354f), vec2<f32>(-1195f, 1534f), vec2<f32>(444f, 823f), vec2<f32>(-488f, -1227f), vec2<f32>(1546f, 1000f), vec2<f32>(-395f, 910f), vec2<f32>(-762f, 162f), vec2<f32>(-1726f, -2477f), vec2<f32>(-554f, 348f), vec2<f32>(320f, 298f), vec2<f32>(-1618f, -1149f), vec2<f32>(807f, -123f), vec2<f32>(136f, -1443f), vec2<f32>(984f, -593f), vec2<f32>(829f, -410f), vec2<f32>(-1009f, -803f), vec2<f32>(-237f, -340f), vec2<f32>(-844f, 1000f));

var<private> global1: vec4<u32> = vec4<u32>(1u, 10641u, 55789u, 65754u);

var<private> global2: vec4<u32> = vec4<u32>(29849u, 0u, 57074u, 30066u);

var<private> global3: Struct_3;

var<private> global4: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(12928i, i32(-2147483648), 1i, 23880i), vec4<i32>(-8132i, -7136i, i32(-2147483648), -36083i), vec4<i32>(-34165i, i32(-2147483648), -49237i, i32(-2147483648)), vec4<i32>(2147483647i, 13600i, -72781i, 1i), vec4<i32>(6229i, 28358i, -8313i, i32(-2147483648)), vec4<i32>(-1i, 0i, -25989i, 0i), vec4<i32>(4282i, -40310i, 31817i, 30564i), vec4<i32>(i32(-2147483648), -19305i, -1i, 70707i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<f32> {
    global2 = vec4<u32>(0u, global2.x, countOneBits(~u_input.c.x), ~1u >> (arg_1.b.x % 32u));
    global3 = Struct_3(arg_0.a, arg_1.a.x);
    let var_0 = -1297f;
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(-3415i, _wgslsmith_dot_vec2_i32(vec2<i32>(22868i, -1i), vec2<i32>(0i, -14629i))), min(min(_wgslsmith_div_i32(-29324i, -2730i), countOneBits(-2147483647i)), 0i), 1i, -25358i & _wgslsmith_sub_i32(_wgslsmith_add_i32(-61346i, 2147483647i), -2147483647i << (global2.x % 32u))), -vec4<i32>(-1i, i32(-1i) * -14906i, ~0i, 1i), _wgslsmith_sub_vec4_i32(global4[_wgslsmith_index_u32(global3.a.c ^ global2.x, 8u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(~arg_1.b.x), ~_wgslsmith_dot_vec2_u32(u_input.c, arg_1.b)), 8u)]));
    var_1 = firstLeadingBit(abs(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~9882u, ~49024u), 8u)]));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1112f, var_0, -341f, arg_1.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, 586f, 931f, global3.b) * vec4<f32>(global3.a.b.a.x, var_0, arg_0.a.b.a.x, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, arg_0.a.b.a.x, arg_1.a.x, 656f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(744f, arg_0.a.b.a.x, arg_1.a.x, -743f))), !all(vec2<bool>(true, arg_0.a.a)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 405f, global3.a.b.a.x, -862f)))), vec4<f32>(global3.b, _wgslsmith_f_op_f32(632f + var_0), -294f, _wgslsmith_f_op_f32(-arg_0.a.b.a.x))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<vec2<f32>, 29>();
    let var_0 = 24231u;
    var var_1 = !vec2<bool>(global3.a.a, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.b)), _wgslsmith_f_op_f32(1922f - 1075f), -589f, _wgslsmith_f_op_f32(-global3.a.b.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.b.a.x, -1304f, global3.a.b.a.x, global3.a.b.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(global3.a), global3.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, global3.b, global3.a.b.a.x, global3.b))))));
    var var_3 = -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(0i, countOneBits(643i))), vec2<i32>(~13291i, _wgslsmith_mod_i32(firstTrailingBit(12958i), 0i)));
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global3.a.b.a.x)), Struct_1(global3.a.b.a, arg_0.zz), global3.a.c & 41725u));
}

fn func_1() -> u32 {
    global4 = array<vec4<i32>, 8>();
    var var_0 = func_2(_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, _wgslsmith_add_u32(14582u, 26498u), ~77960u), ~(~global2.yyz)), ~countOneBits(_wgslsmith_add_vec3_u32(global2.xxx, global2.yxw))));
    let var_1 = !vec3<bool>(true, any(select(vec3<bool>(var_0.a.a, false, false), select(vec3<bool>(var_0.a.a, true, global3.a.a), vec3<bool>(var_0.a.a, global3.a.a, global3.a.a), global3.a.a), global3.a.a)), true);
    let var_2 = func_2(~(vec3<u32>(43949u, 4294967295u, 0u) << (~vec3<u32>(u_input.a, u_input.a, global3.a.b.b.x) % vec3<u32>(32u))) & global2.zzz).a.b;
    var var_3 = Struct_2(-1000f != var_2.a.x, global3.a.b, reverseBits(global3.a.c));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    global1 = vec4<u32>(global1.x, global3.a.b.b.x, reverseBits(func_1()) & 106479u, 79988u);
    var_0 = global3.a;
    global3 = Struct_3(Struct_2(true, Struct_1(var_0.b.a, select(~var_0.b.b, ~global2.yx, all(vec3<bool>(false, false, global3.a.a)))), _wgslsmith_mod_u32(~(~1u), u_input.c.x)), _wgslsmith_f_op_f32(select(-177f, var_0.b.a.x, ~(u_input.c.x << (var_0.c % 32u)) != global2.x)));
    let var_1 = Struct_1(var_0.b.a, global2.wx ^ reverseBits(_wgslsmith_clamp_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(25001u, 4294967295u), var_0.b.b), vec2<u32>(0u, global2.x))));
    let var_2 = vec2<u32>(global1.x, ~4294967295u);
    global1 = (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 55786u, var_1.b.x), vec4<u32>(75917u, 21040u, 1u, 4294967295u))) | reverseBits(select(~vec4<u32>(4294967295u, var_1.b.x, var_0.c, 0u), vec4<u32>(74856u, 1u, 4294967295u, 1u) & vec4<u32>(var_1.b.x, 4294967295u, 15110u, 62809u), !vec4<bool>(true, false, var_0.a, true)))) & ~vec4<u32>(30702u, 0u, firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.yyx, global2.xzx), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 47314u, 1u), vec3<u32>(global2.x, 4294967295u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b.a, vec3<f32>(global3.a.b.a.x, var_1.a.x, -221f), vec3<bool>(false, false, global3.a.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(662f, -288f, global3.a.b.a.x) * global3.a.b.a)))));
}

