struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec3<i32>, 13>;

var<private> global2: array<vec3<i32>, 16>;

var<private> global3: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, false, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2211f);
    let var_1 = max(-1i, 1i);
    global1 = array<vec3<i32>, 13>();
    global1 = array<vec3<i32>, 13>();
    global1 = array<vec3<i32>, 13>();
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.c.x))), abs(arg_3)), 16u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -430f));
    var var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(u_input.c), u_input.c)), 24839u ^ arg_2);
    let var_2 = arg_0.ww;
    global0 = vec2<bool>(false, !(u_input.b.x >= ~19050i));
    var_1 = firstLeadingBit(vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(firstLeadingBit(arg_2), 10024u)));
    return ~(~1u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = 575f;
    global2 = array<vec3<i32>, 16>();
    global3 = array<bool, 8>();
    global0 = vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(556f, 804f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(421f, -209f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 1309f));
    var var_1 = Struct_4(~firstLeadingBit(_wgslsmith_div_vec2_i32(reverseBits(u_input.e.yz), vec2<i32>(-25269i, u_input.e.x))));
    return Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f + 1312f) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f - 106f) + -835f)), !(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 8u)], global0.x, global3[_wgslsmith_index_u32(12734u, 8u)]))), Struct_4(vec2<i32>(var_1.a.x ^ var_1.a.x, -17683i)), ~abs(~vec4<u32>(571u, 4294967295u, u_input.c.x, arg_0.x))), vec4<u32>(_wgslsmith_add_u32(~select(arg_0.x, 32539u, true), 30429u), u_input.d, ~_wgslsmith_mod_u32(~1u, ~arg_0.x), ~func_3(!vec4<bool>(global3[_wgslsmith_index_u32(58656u, 8u)], global0.x, global3[_wgslsmith_index_u32(1u, 8u)], true), ~var_1.a.x, u_input.a)), ~u_input.c.xz, u_input.b.x, select(vec2<bool>(!all(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 8u)], false)), true), !vec2<bool>(true, !global3[_wgslsmith_index_u32(arg_0.x, 8u)]), select(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 8u)], false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(global0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(~12754u | ~u_input.c.x), 8u)] && any(vec3<bool>(!global3[_wgslsmith_index_u32(u_input.c.x, 8u)], true, global0.x)), !global0.x);
    let var_1 = select(u_input.c.x, u_input.d, global3[_wgslsmith_index_u32(~((42928u >> (u_input.d % 32u)) & max(0u, u_input.c.x)), 8u)]) ^ ~u_input.a;
    var var_2 = global3[_wgslsmith_index_u32(1u & (34976u & (~(17271u << (var_1 % 32u)) << (u_input.a % 32u))), 8u)];
    global3 = array<bool, 8>();
    let var_3 = (u_input.a & firstLeadingBit(_wgslsmith_div_u32(var_1 << (var_1 % 32u), u_input.a))) & u_input.d;
    let var_4 = 4294967295u;
    var var_5 = vec3<u32>(5424u, u_input.c.x ^ min(~(u_input.a ^ u_input.c.x), var_3), 34152u);
    var var_6 = Struct_3(func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3, u_input.a, var_3), ~u_input.c)), func_1(countOneBits(~_wgslsmith_div_vec3_u32(u_input.c, u_input.c))), func_1(u_input.c), global3[_wgslsmith_index_u32(var_3, 8u)], vec3<i32>(u_input.b.x, u_input.b.x, -_wgslsmith_mult_i32(u_input.e.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(950f * -1451f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1936f - -150f))), 1404f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1137f - -144f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1067f, 542f, -221f, 1595f) * vec4<f32>(-1339f, -593f, 407f, -1044f)))))));
}

