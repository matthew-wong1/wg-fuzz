struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1611f, 104f, 473f);

var<private> global1: array<f32, 19>;

var<private> global2: f32 = 1665f;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<f32, 19>();
    let var_0 = ~reverseBits(_wgslsmith_mod_u32(min(~4294967295u, 4294967295u), ~0u));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(77731u, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f + global3.x)), global1[_wgslsmith_index_u32(var_0, 19u)]) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 377f, global0.x, global0.x) - vec4<f32>(global3.x, 367f, -194f, global3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, global1[_wgslsmith_index_u32(4294967295u, 19u)], global0.x, 220f))))))));
    var var_3 = 0i;
    return select(vec3<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(1u, 0u)) <= min(var_0, var_0)) && !any(vec3<bool>(false, true, false)), 1i != reverseBits(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), select(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, false)), true)), global1[_wgslsmith_index_u32(min(var_0, var_0), 19u)] <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(-304f - global1[_wgslsmith_index_u32(var_0, 19u)]))), true));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, 1841f, global0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(3892f, 1850f), -1478f, _wgslsmith_f_op_f32(ceil(-417f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(419f, global3.x, global3.x), vec3<f32>(global3.x, global1[_wgslsmith_index_u32(0u, 19u)], global0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(455f, global3.x, -1238f))), 2147483647i != arg_2)))))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = global0.x;
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    var var_1 = arg_3;
    var var_2 = abs(vec4<u32>(66963u, 1u, ~1u, min(abs(~81647u), ~0u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1166f)) + _wgslsmith_f_op_f32(trunc(arg_2.x))), arg_2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.a, arg_0, var_1.a)))))), 57968u < min(max(var_2.x, 1u), 4294967295u)));
}

fn func_2() -> vec3<i32> {
    global1 = array<f32, 19>();
    var var_0 = global0.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -715f));
    let var_1 = ((_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31275u, 38971u, 1u, 60881u), vec4<u32>(27380u, 0u, 45391u, 70621u)), 38985u) >> (_wgslsmith_clamp_u32(firstTrailingBit(1u), 4294967295u, _wgslsmith_mod_u32(0u, 43346u)) % 32u)) <= 4294967295u) || true;
    global2 = -324f;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(func_4(-2147483647i, all(func_3()), 0i)), 1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - _wgslsmith_div_f32(-886f, 323f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~2214u, 19u)] + global3.x), global0.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 19u)]) * _wgslsmith_div_f32(global0.x, global3.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), 1012f, global0.x), vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global1[_wgslsmith_index_u32(countOneBits(9973u), 19u)], _wgslsmith_f_op_f32(global0.x - global1[_wgslsmith_index_u32(0u, 19u)])), vec3<bool>(var_1, u_input.a.x != u_input.a.x, var_1))) * vec3<f32>(411f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 382f), _wgslsmith_f_op_f32(sign(2237f))), 478f)));
    return max(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), 8157i, _wgslsmith_dot_vec2_i32(vec2<i32>(-11104i, u_input.a.x), u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(12517i, u_input.a.x, u_input.a.x) & vec3<i32>(2147483647i, -34484i, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(firstTrailingBit(2253i), countOneBits(u_input.a.x), -2147483647i)), (_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 14799i, -2147483647i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2120i)) << (firstTrailingBit(vec3<u32>(0u, 83312u, 1u)) % vec3<u32>(32u))) ^ vec3<i32>(-1i, -1i >> (1u % 32u), abs(-1i))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    global3 = _wgslsmith_f_op_vec2_f32(-global0.xz);
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, -1i) | vec3<i32>(-5152i, u_input.a.x, 34854i), _wgslsmith_sub_vec3_i32(func_2(), -vec3<i32>(u_input.a.x, -20459i, u_input.a.x)), func_2()), ~firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -12022i), vec3<i32>(15179i, 32982i, u_input.a.x))), -_wgslsmith_clamp_i32(abs(1i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(-29674i, u_input.a.x, -1i))), 30589i << (arg_1.x % 32u), select(_wgslsmith_mod_i32(1i, u_input.a.x), ~(-_wgslsmith_mod_i32(u_input.a.x, 1i)), true | func_3().x));
    let var_1 = !vec3<bool>(~var_0.x <= u_input.a.x, !all(vec3<bool>(false, true, false)), !(!select(false, true, false)));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(877f * arg_0) * -845f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, 1729f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 19u)]))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-364f - 1325f))), global0.x), var_1.x);
    var var_3 = firstLeadingBit(arg_1.x);
    return abs(vec4<u32>(~14915u, ~arg_1.x, ~(~(~arg_1.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u | arg_1.x, ~arg_1.x), firstLeadingBit(~45719u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.x), global1[_wgslsmith_index_u32(41280u, 19u)], 1838f));
    var var_0 = Struct_1(func_1(global3.x, countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 79244u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u)))), min(~(~0u), ~_wgslsmith_sub_u32(1u, 0u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1095f, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(27993u, 19u)], global3.x), vec4<f32>(531f, global3.x, global1[_wgslsmith_index_u32(1u, 19u)], global3.x), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, global1[_wgslsmith_index_u32(4294967295u, 19u)], 742f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(49067u, 19u)], -1508f, -688f, global1[_wgslsmith_index_u32(12514u, 19u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global3.x, 465f, 298f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -396f, global0.x, global3.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(226f, -1000f, global0.x, -554f), vec4<f32>(global3.x, global1[_wgslsmith_index_u32(1u, 19u)], -518f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(75981u, 19u)], 1000f, -442f, global3.x) - vec4<f32>(global3.x, global3.x, -598f, -942f))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))), true && select(all(vec2<bool>(true, true)), func_3().x, true));
    let var_1 = Struct_2(-591f);
    let var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(40867u, var_0.a.x), firstTrailingBit(16669u)), firstLeadingBit(var_0.a.x), ~abs(0u)));
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, 0i, -15936i)), _wgslsmith_mult_vec3_i32(vec3<i32>(32564i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, 20957i)))), vec3<i32>(~u_input.a.x, u_input.a.x << (15695u % 32u), -u_input.a.x) | vec3<i32>(countOneBits(u_input.a.x), -2147483647i | u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), vec3<i32>(reverseBits((u_input.a.x & u_input.a.x) >> (34944u % 32u)), -2781i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~var_0.a, select(~vec4<u32>(5543u, var_2.x, var_0.b, 28326u), ~vec4<u32>(var_0.a.x, 1u, var_0.b, 0u), !vec4<bool>(false, true, var_0.d, var_0.d))) << (18690u % 32u), _wgslsmith_sub_vec4_i32(max(~(vec4<i32>(-2147483647i, u_input.a.x, var_3.x, 2147483647i) & vec4<i32>(-59248i, -2147483647i, 0i, 0i)), ~(~vec4<i32>(-1i, 793i, -7454i, -2147483647i))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_3.x, var_3.x, u_input.a.x, u_input.a.x) | vec4<i32>(-1i, 2147483647i, u_input.a.x, 2147483647i)), -vec4<i32>(u_input.a.x, var_3.x, 1i, var_3.x))), abs(countOneBits(~var_2)) ^ (var_0.a.xwy >> (var_0.a.ywy % vec3<u32>(32u))), vec3<i32>(~max(firstLeadingBit(-11284i), -1i >> (var_0.a.x % 32u)), _wgslsmith_mult_i32(-10402i, min(-1i, -2147483647i ^ var_3.x)), var_3.x << (0u % 32u)), vec2<i32>(u_input.a.x, var_3.x >> (~1u % 32u)));
}

