struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<i32, 9>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, -15153i, 1i), vec3<i32>(1i, 0i, 1i), vec3<i32>(2147483647i, i32(-2147483648), -2084i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(40710i, 6766i, 2147483647i), vec3<i32>(-1i, -3966i, 2147483647i), vec3<i32>(-1i, -5857i, i32(-2147483648)), vec3<i32>(26130i, -59993i, 14981i), vec3<i32>(1i, 1201i, 4701i), vec3<i32>(51338i, -67261i, 0i), vec3<i32>(-6213i, -1748i, 8130i), vec3<i32>(-4516i, -23933i, 35131i), vec3<i32>(8417i, -1i, -48623i), vec3<i32>(14705i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, -1i, -58290i), vec3<i32>(-1i, -35966i, -8287i), vec3<i32>(1i, -19288i, i32(-2147483648)), vec3<i32>(40994i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 20721i, 0i), vec3<i32>(5069i, 1i, 24737i), vec3<i32>(50891i, 6674i, -1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(-1439i, 29815i, -1i), vec3<i32>(0i, -38508i, 13238i));

var<private> global3: u32;

var<private> global4: array<bool, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-1777f + arg_0.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.b, -1174f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -299f)))), vec2<f32>(-587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1352f, _wgslsmith_f_op_f32(exp2(arg_0.b)), arg_0.b, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, arg_0.b, -1812f, -318f)))) - vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(465f * var_0.x))));
    let var_2 = global4[_wgslsmith_index_u32(52279u, 15u)];
    global1 = array<i32, 9>();
    return _wgslsmith_div_f32(1000f, var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec3<i32>) -> i32 {
    var var_0 = arg_1;
    global3 = arg_0.b;
    global2 = array<vec3<i32>, 24>();
    let var_1 = select(arg_2, arg_2, vec2<bool>(false, !all(arg_2)));
    global3 = 0u;
    return arg_0.c.x;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) * vec2<f32>(-964f, -1339f)))))), ~u_input.b.x, firstLeadingBit(vec2<i32>(-1i, -3275i)) ^ firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.a))), global2[_wgslsmith_index_u32(0u, 24u)]));
    let var_1 = Struct_3(vec3<u32>(10209u, ~((var_0.a.b | var_0.a.b) << (countOneBits(var_0.a.b) % 32u)), countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)) & min(abs(u_input.b.x), ~u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.x + -1000f), _wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.a.b, _wgslsmith_div_u32(u_input.b.x >> (var_0.a.b % 32u), 4294967295u >> (1u % 32u)), ~_wgslsmith_div_u32(29230u, u_input.b.x)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 17009u, u_input.b.x), vec3<u32>(var_0.a.b, 1u, 93969u)), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x))));
    var var_2 = var_0.a;
    var var_3 = global1[_wgslsmith_index_u32(select(u_input.b.x, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(~var_2.b, firstTrailingBit(85128u))), any(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.b, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(37235u, 3u)], global4[_wgslsmith_index_u32(var_0.a.b, 15u)]), vec2<bool>(global4[_wgslsmith_index_u32(var_0.a.b, 15u)], true), vec2<bool>(false, true)), all(vec2<bool>(false, true))), vec2<bool>(global4[_wgslsmith_index_u32(~4294967295u, 15u)], global4[_wgslsmith_index_u32(var_2.b, 15u)] & global4[_wgslsmith_index_u32(var_1.a.x, 15u)]), any(!vec4<bool>(false, global4[_wgslsmith_index_u32(var_2.b, 15u)], false, global4[_wgslsmith_index_u32(var_2.b, 15u)]))))), 9u)];
    let var_4 = ~(~(~var_2.b));
    return ~(~(~_wgslsmith_add_vec2_i32(var_2.c, var_0.a.c))) >> ((u_input.b >> (~max(vec2<u32>(var_2.b, 0u), u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = max(~reverseBits(reverseBits(vec4<u32>(arg_3.a.b, 44406u, u_input.b.x, arg_3.a.b))), ~firstTrailingBit(arg_0));
    return StorageBuffer(~1i, ~(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 29132i), ~u_input.c, global1[_wgslsmith_index_u32(1u, 9u)], abs(u_input.c)) >> (select(_wgslsmith_div_vec4_u32(var_0, arg_0), var_0, !arg_2) % vec4<u32>(32u))), firstLeadingBit(arg_0.x), arg_3.a.c.x, global1[_wgslsmith_index_u32(min(select(_wgslsmith_mod_u32(~28524u, 4294967295u), ~(~var_0.x), !arg_2), 4045u), 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-780f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(560f - 605f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(723f + _wgslsmith_div_f32(-463f, 224f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) + _wgslsmith_f_op_f32(abs(-175f)))), 990f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(1u, 92661u, u_input.b.x), -370f, vec3<u32>(4294967295u, u_input.b.x, 31934u)), countOneBits(vec3<u32>(u_input.b.x, 58622u, 1u)))) - _wgslsmith_f_op_f32(-914f * _wgslsmith_f_op_f32(f32(-1f) * -406f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(u_input.b.x, 91362u, u_input.b.x), -184f, vec3<u32>(u_input.b.x, 0u, 1u)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) - -304f)));
    global3 = _wgslsmith_mod_u32(0u, ~83799u);
    let x = u_input.a;
    s_output = func_4(vec4<u32>(1u, ~(~u_input.b.x), u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.b.x), 1u), u_input.b.x)), countOneBits(vec4<i32>(-global1[_wgslsmith_index_u32(reverseBits(19592u), 9u)], reverseBits(21799i), func_2(Struct_1(var_0.xz, u_input.b.x, vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], -985i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)])), Struct_4(vec4<i32>(u_input.a, 58850i, -22228i, -2147483647i)), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(7115u, 3u)]), global2[_wgslsmith_index_u32(u_input.b.x, 24u)]) << (~u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(22091i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)]))))), global4[_wgslsmith_index_u32(0u, 15u)], Struct_2(Struct_1(var_0.zx, abs(60882u), firstLeadingBit(func_3()), vec3<i32>(abs(0i), -2147483647i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)])))));
}

