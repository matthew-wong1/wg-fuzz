struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: vec4<f32>;

var<private> global2: vec2<f32> = vec2<f32>(580f, -1000f);

var<private> global3: array<vec2<f32>, 16>;

var<private> global4: array<bool, 24> = array<bool, 24>(true, false, false, true, true, false, true, false, false, false, true, false, true, false, false, false, true, false, false, false, false, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    return countOneBits(~4294967295u);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = select(firstLeadingBit(abs(min(select(vec4<u32>(26108u, 25731u, 1u, 4294967295u), vec4<u32>(1u, 0u, 34664u, 63624u), vec4<bool>(true, true, false, false)), vec4<u32>(4294967295u, 4294967295u, 17367u, 0u)))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(false, max(~1u, ~1u) < (func_2() | 75317u), !(global1.x != _wgslsmith_div_f32(global1.x, -986f)), true));
    var var_1 = abs(_wgslsmith_add_u32(_wgslsmith_add_u32(~4294967295u, var_0.x << (var_0.x % 32u)), ~var_0.x));
    var var_2 = select(vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.wxz, var_0.xww), 24u)], false && (_wgslsmith_div_f32(global1.x, 1566f) < -207f)), vec2<bool>(true, any(!select(vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 24u)], true, global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(var_0.x, 24u)]), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(var_0.x, 24u)], global4[_wgslsmith_index_u32(var_0.x, 24u)], false), global4[_wgslsmith_index_u32(21014u, 24u)]))), false);
    return min(u_input.a, u_input.a & u_input.a);
}

fn func_1() -> vec4<u32> {
    global2 = global3[_wgslsmith_index_u32(abs(~5320u), 16u)];
    let var_0 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a) << (func_2() % 32u), select(func_3(2135i), _wgslsmith_sub_i32(u_input.a, u_input.a), true)), -vec2<i32>(0i, i32(-1i) * -16229i));
    let var_1 = select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(43343u, 24u)] || true), vec3<bool>(any(!vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 24u)])), global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~26762u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 7289u), vec3<u32>(0u, 4294967295u, 4294967295u))), 24u)], any(select(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], false, false, global4[_wgslsmith_index_u32(54925u, 24u)]), vec4<bool>(global4[_wgslsmith_index_u32(4638u, 24u)], true, false, global4[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(14928u, 24u)], global4[_wgslsmith_index_u32(1u, 24u)], false)))), select(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 24u)], true)), !select(!vec3<bool>(global4[_wgslsmith_index_u32(80613u, 24u)], global4[_wgslsmith_index_u32(1u, 24u)], true), select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(52609u, 24u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 24u)], false), global4[_wgslsmith_index_u32(41784u, 24u)]), global4[_wgslsmith_index_u32(15592u << (0u % 32u), 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~1u, 57486u), 24u)], select(true, any(vec4<bool>(global4[_wgslsmith_index_u32(10326u, 24u)], global4[_wgslsmith_index_u32(52025u, 24u)], false, true)), all(vec4<bool>(global4[_wgslsmith_index_u32(19184u, 24u)], true, false, global4[_wgslsmith_index_u32(4294967295u, 24u)]))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, global2.x, global1.x, global1.x) * vec4<f32>(global1.x, global2.x, global1.x, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(382f * -660f), _wgslsmith_f_op_f32(-1413f - global1.x), global2.x, -155f)))));
    global4 = array<bool, 24>();
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(~firstTrailingBit(vec4<u32>(17875u, 14991u, 1u, 47265u))), _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(12749u, 68201u, 76089u, 21880u)), ~vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, ~45345u, ~1u, _wgslsmith_add_u32(57104u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a), -51472i, u_input.a)), func_1(), -select(~vec4<i32>(11302i, u_input.a, -2147483647i, u_input.a) ^ ~vec4<i32>(u_input.a, -14304i, u_input.a, -2147483647i), abs(firstLeadingBit(vec4<i32>(-1i, 1i, u_input.a, -26734i))), global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 24u)] | true), vec4<i32>(_wgslsmith_mult_i32(7952i, _wgslsmith_mod_i32(-9004i, ~2147483647i)), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(0i, u_input.a, 2147483647i, u_input.a)), vec4<i32>(35984i, u_input.a, u_input.a, -20818i))), u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a) << (~(~34127u) % 32u)));
    global2 = vec2<f32>(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(f32(-1f) * -1936f))))));
    global3 = array<vec2<f32>, 16>();
    global2 = _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, reverseBits(~(~var_0.b.x))), 16u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -461f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(var_0.b.x, 16u)], global3[_wgslsmith_index_u32(59770u, 16u)], vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(var_0.b.x, 24u)]))))))));
    var var_1 = select(var_0.d.x, u_input.a, global4[_wgslsmith_index_u32(max(var_0.b.x, max(var_0.b.x, var_0.b.x) | var_0.b.x), 24u)]) >> (_wgslsmith_dot_vec3_u32(var_0.b.zwz ^ _wgslsmith_add_vec3_u32(max(var_0.b.xzz, vec3<u32>(50404u, 0u, 0u)), var_0.b.xyx), min(vec3<u32>(var_0.b.x, 4294967295u, 1u) >> (~vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(var_0.b.yxw, var_0.b.yyz))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(max(i32(-1i) * -1i, -var_0.d.x), vec4<u32>(_wgslsmith_sub_u32(~var_0.b.x, var_0.b.x), ~4294967295u, ~27157u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 1u, var_0.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 1856u, var_0.b.x), var_0.b)) >> (1u % 32u)));
}

