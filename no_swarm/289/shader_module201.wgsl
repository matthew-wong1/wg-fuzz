struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-1261f, 1000f, -834f), vec3<f32>(-216f, -501f, 822f), vec3<f32>(-429f, 373f, 219f), vec3<f32>(-366f, -279f, -229f), vec3<f32>(-500f, 269f, -315f), vec3<f32>(-382f, -2005f, -196f), vec3<f32>(-1979f, 510f, 543f), vec3<f32>(238f, -1245f, 947f), vec3<f32>(423f, 885f, 678f), vec3<f32>(1000f, -1418f, 994f), vec3<f32>(-1000f, -314f, -1840f), vec3<f32>(-472f, -206f, 105f), vec3<f32>(111f, -1000f, -1884f), vec3<f32>(591f, 1377f, -499f), vec3<f32>(1203f, 609f, 350f), vec3<f32>(428f, 1000f, -455f), vec3<f32>(1000f, -309f, 857f), vec3<f32>(-612f, 1388f, -2006f), vec3<f32>(-287f, 1075f, 341f), vec3<f32>(-1621f, 913f, 719f), vec3<f32>(2261f, -634f, -844f), vec3<f32>(-1000f, -184f, -1000f), vec3<f32>(342f, -1343f, 452f), vec3<f32>(-820f, 2108f, -247f), vec3<f32>(-1775f, 1000f, 526f));

var<private> global1: bool = false;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(51325u, 0u, 0u, 28300u), vec4<u32>(0u, 1u, 33123u, 18351u), vec4<u32>(1u, 37213u, 4294967295u, 11983u), vec4<u32>(1u, 70287u, 0u, 5861u), vec4<u32>(40014u, 23104u, 79672u, 1u), vec4<u32>(0u, 29880u, 99275u, 974u), vec4<u32>(68519u, 0u, 97349u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(21822u, 19284u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(19493u, 136708u, 0u, 1u), vec4<u32>(16779u, 38664u, 59355u, 29743u), vec4<u32>(1u, 4294967295u, 13359u, 36845u));

var<private> global3: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1u, 1372u), vec2<u32>(22628u, 532u), vec2<u32>(1u, 0u), vec2<u32>(314u, 32808u), vec2<u32>(4294967295u, 0u), vec2<u32>(35600u, 4998u), vec2<u32>(4294967295u, 24560u), vec2<u32>(4294967295u, 0u), vec2<u32>(39017u, 4294967295u), vec2<u32>(0u, 12006u), vec2<u32>(0u, 1u), vec2<u32>(1u, 62479u), vec2<u32>(1u, 1u), vec2<u32>(26078u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4867u, 1u), vec2<u32>(5369u, 7541u), vec2<u32>(0u, 1u), vec2<u32>(26805u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(63889u, 62893u), vec2<u32>(67573u, 4294967295u), vec2<u32>(40546u, 51360u), vec2<u32>(35357u, 34743u), vec2<u32>(1u, 0u), vec2<u32>(0u, 38990u), vec2<u32>(1u, 63270u), vec2<u32>(0u, 6284u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global3 = array<vec2<u32>, 28>();
    var var_0 = Struct_5(~_wgslsmith_div_u32(4046u, _wgslsmith_mod_u32(4294967295u, u_input.b.x)), global3[_wgslsmith_index_u32(abs(countOneBits(~(~u_input.a.x))), 28u)], Struct_3(all(vec3<bool>(true, false, false)) || false));
    global3 = array<vec2<u32>, 28>();
    var var_1 = -10417i;
    var_1 = i32(-1i) * -2147483647i;
    return 0i;
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<vec3<f32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f * -1532f))))));
    let var_1 = func_3() < _wgslsmith_sub_i32(abs(~firstTrailingBit(-1i)), -3674i);
    let var_2 = vec3<i32>(~(-(-1580i >> (u_input.b.x % 32u))), -17362i, 3569i);
    let var_3 = !any(!select(!vec4<bool>(false, var_1, true, false), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1)));
    return ~func_3();
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> vec2<bool> {
    let var_0 = -1335f;
    var var_1 = Struct_3(!(arg_1.x & true));
    var_1 = arg_0;
    global0 = array<vec3<f32>, 25>();
    let var_2 = abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(arg_2), func_2(42615u)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -16204i, -1i), vec3<i32>(-3197i, arg_2, -2147483647i))))) == -_wgslsmith_add_i32(~(i32(-1i) * -34868i), ~1739i);
    return !(!(!arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, -1148f, -1000f, 974f) + vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_div_f32(894f, -507f), -388f, _wgslsmith_f_op_f32(1606f * -168f)), vec4<f32>(-2579f, _wgslsmith_f_op_f32(abs(2262f)), -996f, _wgslsmith_f_op_f32(trunc(-1373f))))));
    let var_1 = u_input.b & (vec3<u32>(reverseBits(firstTrailingBit(u_input.b.x)), ~(~1u), _wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)]))) | vec3<u32>(1u, u_input.a.x, ~1u));
    var var_2 = func_1(Struct_3(_wgslsmith_f_op_f32(-var_0.x) > var_0.x), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), 0i);
    global2 = array<vec4<u32>, 15>();
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    global2 = array<vec4<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(firstLeadingBit(1i), _wgslsmith_mult_i32(firstTrailingBit(15922i), abs(55642i)), -func_2(0u), _wgslsmith_dot_vec2_i32(vec2<i32>(-16227i, 4030i), -vec2<i32>(47688i, 4505i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(493f, 952f, false)), var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(1086f * var_0.x)))), firstLeadingBit(var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * 879f)))));
}

