struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(34930u, 0u, 0u, 1u, 6483u, 14008u, 1u, 24434u, 12907u, 4294967295u, 1u, 4294967295u, 4294967295u, 58779u, 0u, 16881u, 0u, 3006u, 1u, 58451u, 4294967295u, 0u, 0u, 33210u, 123869u, 66072u, 0u, 1u, 128126u, 1u, 33155u);

var<private> global1: i32 = -1i;

var<private> global2: array<i32, 3>;

var<private> global3: array<Struct_2, 1>;

var<private> global4: vec4<u32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(~(~vec2<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37228u, 31u)], 3u)], -23625i)), ~firstTrailingBit(vec2<i32>(38586i, 10288i))), -_wgslsmith_div_vec2_i32(vec2<i32>(0i, _wgslsmith_sub_i32(3762i, 43522i)), -vec2<i32>(0i, 25153i) ^ firstLeadingBit(vec2<i32>(0i, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]))));
    var var_0 = 32642i;
    var var_1 = Struct_1(~select((vec3<u32>(u_input.a.x, 14258u, global4.x) ^ vec3<u32>(4294967295u, 4294967295u, 1u)) & ~vec3<u32>(global0[_wgslsmith_index_u32(60734u, 31u)], u_input.a.x, 44166u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2787u, global0[_wgslsmith_index_u32(global4.x, 31u)], 61476u), vec3<u32>(0u, global4.x, u_input.a.x)), 4294967295u, _wgslsmith_mult_u32(1u, 55336u)), vec3<bool>(true, true, true)));
    var var_2 = global3[_wgslsmith_index_u32(0u, 1u)];
    let var_3 = _wgslsmith_sub_vec3_i32(-(select(vec3<i32>(13218i, -15928i, global2[_wgslsmith_index_u32(4294967295u, 3u)]) >> (vec3<u32>(0u, 23785u, 1u) % vec3<u32>(32u)), -vec3<i32>(-28044i, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)]), select(true, false, true)) << (var_2.a.a % vec3<u32>(32u))), reverseBits(~(-abs(vec3<i32>(4225i, 2147483647i, global2[_wgslsmith_index_u32(var_1.a.x, 3u)])))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(671f, 746f))) * _wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(f32(-1f) * -533f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-908f, 1557f)), _wgslsmith_f_op_f32(abs(147f)), true)))));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_4(vec3<bool>(false, false, !any(vec2<bool>(true, true))), -1i, _wgslsmith_sub_i32(2147483647i, 2147483647i), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 10716u, 0u), vec3<u32>(global4.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])) ^ 46518u));
    global3 = array<Struct_2, 1>();
    var var_1 = _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4.x) ^ vec2<u32>(34888u, var_0.d.x), _wgslsmith_div_vec2_u32(u_input.a.xx, global4.yw))), ~_wgslsmith_sub_u32(var_0.d.x, u_input.a.x >> (u_input.a.x % 32u)));
    var var_2 = Struct_1(global4.wwy);
    var var_3 = (!all(vec4<bool>(false, var_0.a.x, var_0.a.x, false)) & true) | !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2163f - arg_0) - _wgslsmith_f_op_f32(-arg_0)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(18877u, _wgslsmith_clamp_u32(u_input.a.x, 33162u, 52983u) << (~88704u % 32u), 0u)), firstLeadingBit(~global4.yxw)), 31u)];
}

fn func_1() -> Struct_3 {
    global2 = array<i32, 3>();
    global3 = array<Struct_2, 1>();
    var var_0 = ~(~vec4<u32>(u_input.a.x, u_input.a.x, ~func_2(333f), _wgslsmith_mult_u32(67585u, u_input.a.x) & 0u));
    global2 = array<i32, 3>();
    global1 = -1i;
    return Struct_3(Struct_1(var_0.yyx), vec3<i32>(global2[_wgslsmith_index_u32(1u, 3u)], -5325i | global2[_wgslsmith_index_u32(~18548u ^ firstTrailingBit(global4.x), 3u)], ~firstTrailingBit(_wgslsmith_mod_i32(0i, -23915i))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = u_input.a;
    global3 = array<Struct_2, 1>();
    global2 = array<i32, 3>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u << (max(~countOneBits(u_input.a.x), 7949u) % 32u), 1429u, firstLeadingBit(27346u)), 3u)];
    return Struct_1(global4.yyw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~vec4<u32>(global4.x, global0[_wgslsmith_index_u32(1u, 31u)], u_input.a.x, global4.x) & ~vec4<u32>(9130u, 36602u, global4.x, global4.x))));
    let var_1 = Struct_3(func_4(func_1()), max(vec3<i32>(-1i, min(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(329u, 4294967295u), 31u)], 3u)], 24125i), -29074i), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(16141i, global2[_wgslsmith_index_u32(80580u, 3u)], 27172i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 3u)])))));
    global0 = array<u32, 31>();
    let var_2 = 588f;
    var var_3 = ~(~29155u);
    global2 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2), 113f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -998f)))), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2, var_2)))), -792f)), ~30679u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1115f, var_2, var_2, -474f)))))), ~var_1.b.x, reverseBits(firstLeadingBit(-global2[_wgslsmith_index_u32(u_input.a.x, 3u)])));
}

