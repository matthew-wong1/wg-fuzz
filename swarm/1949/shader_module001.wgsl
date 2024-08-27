struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 23>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<i32, 27> = array<i32, 27>(-57862i, 2147483647i, -21706i, 2911i, 9456i, i32(-2147483648), -46167i, 2147483647i, -55103i, 4120i, i32(-2147483648), 822i, -663i, 0i, -1191i, 0i, i32(-2147483648), 23213i, -44673i, 1i, 2147483647i, 2147483647i, -60711i, -6927i, 12994i, -1i, -35048i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = 1i | global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_mod_u32(u_input.c, 44139u)), _wgslsmith_sub_u32(u_input.e, ~max(u_input.e, 4878u))), 27u)];
    var var_1 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec3<bool>(false, true, false)))));
    global4 = array<i32, 27>();
    global2 = array<vec3<f32>, 23>();
    var var_2 = Struct_1(var_1.a);
    return ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(58715u, u_input.e, u_input.e, 0u), vec4<u32>(0u, 51568u, u_input.c, 1u)), abs(vec4<u32>(57411u, u_input.e, 53618u, 0u))), ~firstTrailingBit(~vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u)));
}

fn func_2() -> f32 {
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-669f - -1607f), _wgslsmith_f_op_f32(f32(-1f) * -917f)))), _wgslsmith_div_f32(359f, -360f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1503f - -908f) * _wgslsmith_f_op_f32(select(-1779f, 1095f, true))), 418f))) + global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~firstTrailingBit(u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(6037u, 4294967295u), reverseBits(vec2<u32>(u_input.c, 0u)))), _wgslsmith_mult_u32(func_3(vec2<i32>(2147483647i, u_input.a) << (vec2<u32>(u_input.e, u_input.c) % vec2<u32>(32u)), vec3<f32>(406f, 1136f, -1220f)), u_input.e)), 23u)]);
    let var_1 = var_0.x;
    global4 = array<i32, 27>();
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1088f))), _wgslsmith_f_op_f32(step(-366f, _wgslsmith_f_op_f32(trunc(var_0.x)))), -1336f), ~min(7900u, ~reverseBits(u_input.e)), Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)), select(~(vec4<u32>(u_input.c, u_input.c, u_input.e, 1u) ^ vec4<u32>(5810u, 138613u, 4294967295u, 1295u)) | vec4<u32>(u_input.e, ~23924u, u_input.e, 1u), firstTrailingBit(select(vec4<u32>(u_input.e, 34022u, 1u, u_input.c), max(vec4<u32>(2192u, 4294967295u, u_input.e, 12213u), vec4<u32>(22277u, 0u, 57416u, u_input.e)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), select(vec4<bool>(any(vec2<bool>(false, true)), false, true, any(vec2<bool>(false, false))), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, true, true), true))));
    return _wgslsmith_f_op_f32(abs(1414f));
}

fn func_1() -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-673f)), _wgslsmith_f_op_f32(-534f + -1000f), any(vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1720f, _wgslsmith_f_op_f32(func_2())))));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_1 = Struct_1(vec2<bool>(select(!(1u > u_input.c), true, true), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), false))));
    let var_2 = var_1.a.x & !var_1.a.x;
    var var_3 = Struct_1(select(var_1.a, select(vec2<bool>(true, all(vec3<bool>(var_1.a.x, false, false))), !(!vec2<bool>(true, var_1.a.x)), select(select(var_1.a, vec2<bool>(true, true), var_2), !var_1.a, any(vec3<bool>(false, var_1.a.x, var_1.a.x)))), !var_1.a.x));
    return vec2<u32>(~u_input.c, ~(((u_input.e | 136411u) & (13407u | u_input.e)) >> (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16390i;
    var var_1 = Struct_2(Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-17104i, 1i, global4[_wgslsmith_index_u32(u_input.c, 27u)], u_input.d), vec4<i32>(7263i, -1i, 22775i, u_input.a) & vec4<i32>(u_input.d, u_input.a, u_input.d, 41237i)), -vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 27u)], global4[_wgslsmith_index_u32(23928u, 27u)], u_input.d, u_input.a) ^ -vec4<i32>(-47343i, 4891i, -2147483647i, 1i), true), reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -18229i, 3359i, global4[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(u_input.b.x, global4[_wgslsmith_index_u32(1u, 27u)], 44605i, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, global4[_wgslsmith_index_u32(11931u, 27u)], -1i)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 40121u), vec2<u32>(24186u, u_input.c)), vec2<u32>(4294967295u, u_input.c))) << (u_input.c % 32u), 23u)], Struct_1(vec2<bool>(true, true)));
    var var_2 = vec4<i32>(0i, min(countOneBits(-reverseBits(u_input.d)), var_1.b.x), var_1.b.x, (~7441i | ~var_1.b.x) >> (u_input.c % 32u));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c * vec3<f32>(-977f, var_1.c.x, var_1.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, var_1.c.x, -1100f))))), global2[_wgslsmith_index_u32(~(~(~u_input.e)), 23u)], u_input.c < ~abs(u_input.c))), ~(~u_input.c), var_1.d, vec4<u32>(~(~(~69423u)), 91872u, ~u_input.e, 0u));
    var var_4 = var_1.a.a;
    let var_5 = _wgslsmith_mod_u32(53714u, firstLeadingBit(countOneBits(var_3.b)) << (~var_3.d.x % 32u)) & _wgslsmith_div_u32(~(~(1u & u_input.c)), 1u);
    var var_6 = Struct_2(var_3.c, -firstLeadingBit(var_1.b) << (~reverseBits(~vec4<u32>(0u, var_5, var_3.b, 11008u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(3985u, 23u)], var_1.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x - -1022f), 1249f, _wgslsmith_div_f32(652f, var_3.a.x)))), select(select(vec3<bool>(true, var_3.c.a.x, var_3.c.a.x), !vec3<bool>(true, var_1.d.a.x, false), 1u >= u_input.e), !(!vec3<bool>(var_4.x, false, var_3.c.a.x)), !vec3<bool>(var_4.x, var_3.c.a.x, true)))), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d);
}

