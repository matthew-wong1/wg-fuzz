struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec2<f32>;

var<private> global2: u32;

var<private> global3: Struct_2;

var<private> global4: array<u32, 23>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(global1.x)) >= global1.x;
    global4 = array<u32, 23>();
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(~1i, -36593i, any(vec4<bool>(false, arg_0.e.x, true, true))) << (_wgslsmith_div_u32(1u, max(global4[_wgslsmith_index_u32(arg_1, 23u)], 3320u)) % 32u), -20018i, _wgslsmith_dot_vec4_i32(-(arg_0.a & vec4<i32>(u_input.a, -1i, -2147483647i, -33337i)), firstLeadingBit(vec4<i32>(u_input.a, arg_0.b.a, arg_0.c.a, -263i))), ~global3.d), select(min(vec4<i32>(global3.c.a, ~17891i, -50283i, -47060i), min(firstTrailingBit(vec4<i32>(-23798i, 13803i, global3.a.a, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.a, -42904i, u_input.b.x, -6844i), vec4<i32>(u_input.b.x, global3.a.a, 0i, 1i)))), vec4<i32>(abs(-1i), global3.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global3.a.a, -2147483647i), -vec3<i32>(-1i, 51887i, 32569i)), 0i), !(arg_2 && false)));
    global0 = array<Struct_3, 5>();
    var var_2 = arg_0.b.a;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(min(vec3<i32>(u_input.a, u_input.a, 1i) >> (vec3<u32>(1u, 105337u, arg_1) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(22437i, arg_0.b.a, arg_0.d.c.a), vec3<i32>(3910i, u_input.b.x, 2147483647i)))), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(0i, global3.b.a, -1i)), -arg_0.a.zzw ^ -vec3<i32>(global3.d, arg_0.d.b.a, 33730i))), vec3<i32>(-1i) * -vec3<i32>(firstTrailingBit(1319i), -2147483647i, _wgslsmith_add_i32(2147483647i, u_input.a)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = vec3<i32>(abs(-31050i), arg_0, func_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(55484u << (global4[_wgslsmith_index_u32(0u, 23u)] % 32u), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 23u)]), 5u)], 42096u, all(select(vec4<bool>(true, arg_1, arg_1, false), !vec4<bool>(true, false, false, arg_1), !vec4<bool>(arg_3.x, false, true, arg_3.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1152f, -1142f, global1.x), vec3<f32>(-1126f, 1205f, global1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -471f) - vec3<f32>(global1.x, -566f, global1.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, global1.x, -228f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, global1.x)))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1815f)))), true & any(!(!arg_3.yx))));
    var var_2 = 1u;
    var var_3 = select(vec4<bool>(any(select(!vec4<bool>(false, false, arg_1, false), select(vec4<bool>(arg_3.x, false, false, arg_1), vec4<bool>(true, true, arg_1, arg_3.x), vec4<bool>(arg_3.x, false, arg_1, arg_1)), arg_3.x)), true, !(-44025i > arg_2), any(vec2<bool>(select(arg_1, arg_3.x, arg_1), false))), vec4<bool>((_wgslsmith_div_f32(-924f, 887f) != _wgslsmith_f_op_f32(-203f - var_1.x)) & any(!arg_3.xx), any(!select(vec3<bool>(arg_3.x, arg_1, arg_3.x), arg_3, false)), arg_3.x, true), !arg_3.x);
    global4 = array<u32, 23>();
    return select(countOneBits(vec4<u32>(4294967295u, 22863u, ~select(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], var_3.x), _wgslsmith_mult_u32(~90038u, abs(1u)))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(39447u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34546u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)]), ~vec4<u32>(global4[_wgslsmith_index_u32(81258u, 23u)], 17478u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 1000u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17002u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 81479u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32345u, 23u)], 23u)], 0u)))) ^ reverseBits(~firstLeadingBit(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(82096u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], 0u, 0u))), vec4<bool>(!(_wgslsmith_div_f32(-107f, -647f) != _wgslsmith_f_op_f32(var_1.x * global1.x)), select(true, 1773f >= _wgslsmith_f_op_f32(trunc(-1340f)), true), false, any(vec3<bool>(arg_1 && false, all(arg_3.zx), arg_1))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = global0[_wgslsmith_index_u32(13270u, 5u)];
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))) - -564f), !arg_1));
    var_2 = _wgslsmith_f_op_f32(-global1.x);
    let var_3 = !arg_3.yy;
    return vec3<bool>(!(0u < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 0u), func_2(2147483647i, false, u_input.a, arg_3))), all(select(!vec4<bool>(false, arg_1, true, arg_1), !select(vec4<bool>(false, arg_3.x, arg_1, true), vec4<bool>(arg_3.x, true, arg_1, true), false), true)), (true && !select(arg_1, var_1.e.x, var_1.e.x)) & (false & (arg_0 <= arg_0)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<f32> {
    global3 = Struct_2(Struct_1(_wgslsmith_mult_i32(0i, -2147483647i)), global3.c, Struct_1(_wgslsmith_dot_vec2_i32(u_input.b, max(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(11402i, global3.e.x)), u_input.b))), _wgslsmith_sub_i32(u_input.b.x, ~(~countOneBits(11007i))), vec2<i32>(1i, 1i) | select(u_input.b, -vec2<i32>(u_input.a, -8485i), vec2<bool>(arg_1.a, true)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -114f))), global1.x)));
    let var_1 = ~(~(-31648i));
    let var_2 = vec4<u32>(arg_0, global4[_wgslsmith_index_u32(arg_0, 23u)], ~countOneBits(~46192u), _wgslsmith_div_u32(arg_0, 1u));
    let var_3 = Struct_3(-max(reverseBits(vec4<i32>(global3.e.x, var_1, -6622i, 1i) ^ vec4<i32>(u_input.a, u_input.b.x, global3.a.a, 50476i)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, 8228i, var_1, var_1), vec4<i32>(47568i, -2147483647i, global3.a.a, global3.d)), min(vec4<i32>(var_1, var_1, -5401i, -37525i), vec4<i32>(u_input.b.x, -1i, 21497i, 54632i)))), Struct_1((reverseBits(var_1) & -2147483647i) >> (arg_0 % 32u)), global3.b, Struct_2(global3.a, global3.b, Struct_1(firstLeadingBit(u_input.b.x)), ~(12175i << (1u % 32u)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(var_1, global3.e.x))) | max(max(vec2<i32>(-2147483647i, var_1), u_input.b), vec2<i32>(var_1, global3.e.x) ^ global3.e)), !select(arg_2.xz, !select(vec2<bool>(true, true), vec2<bool>(false, arg_1.a), arg_2.xy), select(!arg_2.zy, select(vec2<bool>(arg_1.a, true), arg_2.zz, arg_2.xy), all(vec3<bool>(arg_1.a, arg_1.a, arg_2.x)))));
    return vec3<f32>(var_0.x, 1399f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)))), global1.x)));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    global2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_0 ^ 1u, ~78516u), 17036u, arg_0, firstTrailingBit(global4[_wgslsmith_index_u32(firstLeadingBit(84357u), 23u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0 ^ arg_0, global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(1u & arg_0, 23u)], 105633u), (vec4<u32>(1u, global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 12472u) << (vec4<u32>(0u, 50774u, 1u, 4294967295u) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(global4[_wgslsmith_index_u32(18215u, 23u)], arg_0, 23502u, 40655u)))), arg_0);
    return Struct_3(vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 2147483647i), min(arg_2.c.a, 1i), -2147483647i, u_input.b.x), Struct_1(1i), global3.a, Struct_2(global3.b, Struct_1(_wgslsmith_div_i32(countOneBits(global3.a.a), firstTrailingBit(global3.a.a))), global3.b, -arg_2.c.a, _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(global3.e, arg_2.a.yw)), ~vec2<i32>(23835i, 1i))), select(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(27639u, 44877u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20186u, 23u)], 23u)]), vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 23u)], 23u)], global4[_wgslsmith_index_u32(0u, 23u)])), any(!vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x, true)), _wgslsmith_f_op_vec2_f32(floor(arg_1.zx)), vec3<bool>(false, true, true)).yx, vec2<bool>(~arg_2.a.x > -46920i, !arg_2.e.x), arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, 1055f)), _wgslsmith_f_op_f32(-global1.x)), true))));
    var var_0 = true;
    var var_1 = func_5(global4[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(3672u, 23u)], 52558u) | _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1988u, 23u)] | 1u, 23u)], 1u)), 23u)], _wgslsmith_f_op_vec3_f32(func_4(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u)), reverseBits(vec3<u32>(4294967295u, 46514u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)]))), 23u)] & 1u, Struct_4(!all(vec4<bool>(true, true, false, false))), select(select(func_1(0u, false, vec2<f32>(-284f, global1.x), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1235u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)]), vec3<u32>(global4[_wgslsmith_index_u32(13822u, 23u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)])), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 225f)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))), Struct_3(vec4<i32>(u_input.b.x, -_wgslsmith_mult_i32(global3.e.x, u_input.a), _wgslsmith_sub_i32(u_input.a, 48602i), -global3.d), Struct_1(74511i), Struct_1(-31050i), Struct_2(Struct_1(1i), global3.b, Struct_1(-global3.a.a), -abs(global3.e.x), firstTrailingBit(max(vec2<i32>(u_input.b.x, 2147483647i), global3.e))), func_1(~35539u, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, 1490f)), vec3<bool>(select(true, true, false), all(vec4<bool>(true, true, true, true)), true)).yz));
    var_1 = Struct_3(min(vec4<i32>(u_input.a, -func_5(global4[_wgslsmith_index_u32(0u, 23u)], vec3<f32>(163f, 1977f, 488f), global0[_wgslsmith_index_u32(4294967295u, 5u)]).c.a, var_1.a.x, var_1.a.x), firstLeadingBit(var_1.a)), func_5(95839u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(293f, 504f, global1.x), vec3<f32>(457f, 1810f, global1.x)))), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-global1.x)))), func_5(global4[_wgslsmith_index_u32(min(26101u, func_2(global3.d, var_1.e.x, -73744i, vec3<bool>(true, false, true)).x), 23u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(global4[_wgslsmith_index_u32(1u, 23u)], Struct_4(true), vec3<bool>(false, false, true))))), Struct_3(countOneBits(vec4<i32>(u_input.b.x, global3.b.a, 0i, -1i)), Struct_1(global3.d), var_1.b, Struct_2(Struct_1(global3.b.a), Struct_1(var_1.d.a.a), Struct_1(0i), var_1.b.a, global3.e), var_1.e))).d.b, global3.c, func_5(~_wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(189u, 23u)], 23u)], max(global4[_wgslsmith_index_u32(34893u, 23u)], 4294967295u)), vec3<f32>(-797f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(154f)), _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-530f + -1020f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(17810u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)]), ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global4[_wgslsmith_index_u32(51317u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)]), abs(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]))), vec3<u32>(1u, ~1u, _wgslsmith_clamp_u32(23948u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 21369u))), 5u)]).d, !select(vec2<bool>(false, !var_1.e.x), var_1.e, false));
    global0 = array<Struct_3, 5>();
    let var_2 = ~_wgslsmith_sub_i32(global3.e.x, ~(~(~27886i)));
    var var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(0u, ~0u, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~38638u, 23u)], 23u)], reverseBits(29755u)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(0u, 23u)], 55456u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global4[_wgslsmith_index_u32(2247u, 23u)]), 23u)]), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(4u, 23u)], 1u, 4294967295u), vec3<u32>(43581u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36581u, 23u)], 23u)], 23u)], 23u)], 1u)), ~global4[_wgslsmith_index_u32(91214u, 23u)], _wgslsmith_div_u32(global4[_wgslsmith_index_u32(23871u, 23u)], global4[_wgslsmith_index_u32(50063u, 23u)]))) & vec4<u32>(0u, ~2896u, 3117u, 1u & global4[_wgslsmith_index_u32(1u, 23u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 133f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1491f, -2143f)))))))), abs(var_3.x));
}

