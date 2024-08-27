struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(2147483647i, 1i, 2147483647i, 2147483647i, 1i, 45800i, -7112i, 81458i, -85457i, -1i, 65304i, -7054i, -50123i, -14154i, 22091i);

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1322i, i32(-2147483648), 1i, 26068i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 0i));

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1i, 1000f, vec3<f32>(-1039f, 751f, -445f), vec2<bool>(true, false), false), Struct_1(2147483647i, 991f, vec3<f32>(806f, 537f, -1883f), vec2<bool>(true, true), true), Struct_1(-25611i, -1371f, vec3<f32>(-251f, -615f, 1515f), vec2<bool>(false, false), false), Struct_1(-1i, 211f, vec3<f32>(738f, 222f, 130f), vec2<bool>(false, false), false), Struct_1(0i, 1937f, vec3<f32>(-918f, -2678f, -973f), vec2<bool>(true, true), true), Struct_1(2147483647i, -438f, vec3<f32>(436f, 330f, -627f), vec2<bool>(false, false), false), Struct_1(2147483647i, -813f, vec3<f32>(-427f, -1371f, 252f), vec2<bool>(false, true), false), Struct_1(-17401i, -704f, vec3<f32>(280f, 651f, 1071f), vec2<bool>(false, false), false), Struct_1(-45706i, -1000f, vec3<f32>(-526f, -948f, -171f), vec2<bool>(false, true), true), Struct_1(2147483647i, -1000f, vec3<f32>(-557f, -574f, -1000f), vec2<bool>(true, true), true), Struct_1(0i, -269f, vec3<f32>(923f, -1000f, -1195f), vec2<bool>(true, true), false), Struct_1(-81490i, 1105f, vec3<f32>(-138f, -1649f, 784f), vec2<bool>(true, false), true), Struct_1(1i, 512f, vec3<f32>(196f, -804f, 203f), vec2<bool>(true, false), false), Struct_1(0i, 916f, vec3<f32>(1054f, -764f, 162f), vec2<bool>(false, true), true), Struct_1(27394i, 121f, vec3<f32>(-1210f, 312f, -421f), vec2<bool>(false, true), true), Struct_1(2147483647i, -2027f, vec3<f32>(1976f, -623f, -1000f), vec2<bool>(false, true), true), Struct_1(i32(-2147483648), -1000f, vec3<f32>(-1672f, -1915f, -750f), vec2<bool>(false, false), false), Struct_1(-25521i, 1418f, vec3<f32>(1000f, -1148f, 1000f), vec2<bool>(false, true), true), Struct_1(18068i, 745f, vec3<f32>(-261f, 318f, 1349f), vec2<bool>(false, true), false), Struct_1(i32(-2147483648), -1340f, vec3<f32>(-1000f, 1000f, -1516f), vec2<bool>(true, false), true), Struct_1(29500i, 384f, vec3<f32>(-1390f, -1669f, -457f), vec2<bool>(true, true), false), Struct_1(121228i, 210f, vec3<f32>(-286f, 1402f, -687f), vec2<bool>(true, true), true), Struct_1(1i, -1021f, vec3<f32>(376f, 243f, 804f), vec2<bool>(false, true), true), Struct_1(i32(-2147483648), 518f, vec3<f32>(-148f, 2537f, 628f), vec2<bool>(true, true), true), Struct_1(1i, -660f, vec3<f32>(-1000f, 869f, -1614f), vec2<bool>(true, false), false), Struct_1(2147483647i, 384f, vec3<f32>(-2191f, -294f, 1735f), vec2<bool>(true, true), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    let var_0 = true;
    global2 = array<vec4<f32>, 28>();
    var var_1 = vec3<u32>(~4294967295u, u_input.d, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, max(75359u, u_input.d), 0u, 1u)), select(~firstTrailingBit(vec4<u32>(51527u, 0u, u_input.d, u_input.d)), ~(vec4<u32>(u_input.d, 42337u, 57922u, 4294967295u) ^ vec4<u32>(u_input.d, 17963u, 76993u, u_input.d)), vec4<bool>(true, var_0, select(var_0, var_0, var_0), var_0))));
    global3 = array<Struct_1, 26>();
    var var_2 = u_input.b;
    return var_0;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    global3 = array<Struct_1, 26>();
    var var_0 = arg_0.x;
    let var_1 = global2[_wgslsmith_index_u32(~max(select(~arg_2.x, u_input.d, true), 0u), 28u)];
    global1 = array<vec4<i32>, 2>();
    let var_2 = 0u;
    return reverseBits(firstTrailingBit(1u));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = any(!vec3<bool>(true || all(vec4<bool>(false, true, false, false)), true && (arg_0 <= arg_0), _wgslsmith_sub_u32(5919u, u_input.d) <= arg_1));
    global1 = array<vec4<i32>, 2>();
    var var_1 = Struct_2(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.a, -54161i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 15u)], u_input.c)), vec3<i32>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 15u)], _wgslsmith_add_i32(10146i, u_input.c), ~global0[_wgslsmith_index_u32(0u, 15u)]), vec3<i32>(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.d, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), u_input.b & -7868i, _wgslsmith_div_i32(-4529i, global0[_wgslsmith_index_u32(u_input.d, 15u)]))), vec4<u32>(4294967295u, firstLeadingBit(select(~u_input.d, 1u, false)), _wgslsmith_clamp_u32(min(~779u, 30138u), arg_1, ~(~1u)), arg_1), all(vec4<bool>(true, all(vec4<bool>(false, true, false, false)) | true, true, !select(false, true, false))), Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1364f - 1981f)) + arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1099f, -2170f, -510f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, arg_0))))), vec2<bool>(true, true), true), arg_1);
    let var_2 = Struct_1(110430i >> (~min(arg_1, 49907u) % 32u), arg_0, vec3<f32>(-581f, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.d.b)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 + var_1.d.c.x))))), !var_1.d.d, _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(2147483647i, -44113i)), u_input.a) <= _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_1, 15u)], var_1.a.x), -global0[_wgslsmith_index_u32(u_input.d, 15u)]), 1i));
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(~(~arg_1), 15u)], vec3<bool>(func_1(), ((arg_1 != u_input.d) == var_1.c) || false, all(select(vec3<bool>(true, true, true), !vec3<bool>(var_2.d.x, var_1.c, var_2.e), !vec3<bool>(true, false, var_1.c)))), Struct_3(arg_0, var_1.a.x), arg_1);
    return max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~42388u), ~var_1.e ^ 1u), 15u)] & -7649i, global0[_wgslsmith_index_u32(~var_1.b.x, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-abs(0i)) == (2147483647i & u_input.c);
    let var_1 = !vec3<bool>(func_1(), !any(!vec4<bool>(var_0, var_0, false, false)), func_1());
    global0 = array<i32, 15>();
    var var_2 = firstLeadingBit(_wgslsmith_mult_i32(-(u_input.a << (func_2(vec3<i32>(-2147483647i, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.d, 15u)], vec3<u32>(u_input.d, u_input.d, 18972u), Struct_3(-822f, 31448i)) % 32u)), select(-(-1i & global0[_wgslsmith_index_u32(u_input.d, 15u)]), abs(func_3(-1086f, 18989u)), !(!var_0))));
    let var_3 = Struct_3(703f, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(21306u, 15u)], global0[_wgslsmith_index_u32(49855u, 15u)] >> (u_input.d % 32u)));
    let var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d, 69650u, var_4) << (~vec3<u32>(0u, 24600u, 79842u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_clamp_u32(var_4, 42954u, 1u), ~0u), select(vec3<u32>(var_4, 1u, var_4) << (vec3<u32>(1u, 1u, u_input.d) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_4, 110345u, u_input.d), vec3<u32>(u_input.d, u_input.d, var_4)), var_1))));
}

