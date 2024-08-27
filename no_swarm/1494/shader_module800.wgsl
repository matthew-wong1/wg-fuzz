struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<bool, 32>();
    var var_0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(44642i, 31312i), arg_1.a.x, arg_1.a.x), 2147483647i), arg_1.a);
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = arg_1.c.yw;
    return !vec3<bool>(!arg_0, !arg_0, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = vec2<bool>(any(select(select(arg_0, !vec3<bool>(true, arg_0.x, false), false), !select(arg_0, vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(false, false, true)), !select(arg_0, arg_0, vec3<bool>(arg_0.x, false, false)))), global0[_wgslsmith_index_u32(~u_input.b, 32u)]);
    global0 = array<bool, 32>();
    var var_1 = arg_1.c.x;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, ~reverseBits(u_input.b)), u_input.b, 4176u & ~u_input.a.x) <= 1u;
    global0 = array<bool, 32>();
    return vec2<bool>(select(var_0.x, !(!(!global0[_wgslsmith_index_u32(33025u, 32u)])), all(!vec2<bool>(arg_0.x, var_0.x)) && global0[_wgslsmith_index_u32((arg_2 | arg_1.b.x) << (~4294967295u % 32u), 32u)]), all(arg_0));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~arg_3.b.x, 32u)] && global0[_wgslsmith_index_u32(arg_3.b.x & 4294967295u, 32u)], _wgslsmith_f_op_f32(-arg_1.x) > -1763f);
    var var_1 = !(global0[_wgslsmith_index_u32(0u, 32u)] | select(_wgslsmith_div_f32(1442f, arg_3.c.x) < arg_1.x, !(!global0[_wgslsmith_index_u32(4294967295u, 32u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 61443u) << (u_input.a.x % 32u), 32u)]));
    var_1 = false;
    var var_2 = u_input.b;
    let var_3 = !func_4(func_3(arg_3.b.x >= ~u_input.b, arg_3), Struct_1(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(31875i, arg_2), vec2<i32>(-2147483647i, arg_0), vec2<i32>(-1i, arg_3.a.x)), ~arg_3.a, !global0[_wgslsmith_index_u32(arg_3.b.x, 32u)]), vec3<u32>(52780u, u_input.b >> (0u % 32u), min(arg_3.b.x, 103812u)), arg_3.c), min(_wgslsmith_div_u32(u_input.b, _wgslsmith_sub_u32(arg_3.b.x, 0u)), 35178u));
    return 0u;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> vec2<u32> {
    global0 = array<bool, 32>();
    let var_0 = Struct_1(~vec2<i32>(~reverseBits(2147483647i), 1i), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a ^ u_input.a), reverseBits(vec3<u32>(12822u, u_input.b, u_input.a.x) | vec3<u32>(0u, arg_1, 34940u)), vec3<u32>(arg_1, arg_1, arg_1) << (vec3<u32>(1u, 1u, 29240u) % vec3<u32>(32u))), ~firstLeadingBit(vec3<u32>(4294967295u, arg_1, 0u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, 656f, -1570f, arg_0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1610f, arg_0.x, arg_0.x, 697f), vec4<f32>(489f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -1131f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -618f)))))))));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    return ((u_input.a.xx ^ min(vec2<u32>(var_0.b.x, 0u), var_0.b.zz)) | u_input.a.xx) ^ reverseBits(var_0.b.xy);
}

fn func_1() -> Struct_1 {
    let var_0 = -1i;
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 970f, 996f))), vec3<f32>(_wgslsmith_f_op_f32(max(-932f, 3357f)), _wgslsmith_f_op_f32(floor(1252f)), _wgslsmith_f_op_f32(trunc(-1419f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-340f, -526f, 202f), vec3<f32>(937f, -1080f, 1000f)) - vec3<f32>(282f, -1307f, 267f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(109f, -1357f, 169f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1413f, -259f) + vec3<f32>(1345f, 553f, -797f)), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true, true), vec3<bool>(true, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 32u)], false))))))), _wgslsmith_mod_u32(0u, func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0, 1948i, -1i), select(vec3<i32>(34237i, var_0, 18262i), vec3<i32>(-2147483647i, 64260i, -15007i), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-516f, -1000f, 206f, -1000f), vec4<f32>(-290f, 115f, -1079f, -1000f), false))), var_0, Struct_1(abs(vec2<i32>(-26080i, 2147483647i)), u_input.a ^ u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1787f, 418f, -675f, -895f))))), vec3<bool>(false, false, false), !global0[_wgslsmith_index_u32(~(~u_input.b), 32u)]);
    return Struct_1(vec2<i32>(var_0, (var_0 >> (_wgslsmith_div_u32(60544u, var_1.x) % 32u)) ^ 0i), ~vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.b, u_input.b, 46576u)), ~39678u >> (~u_input.b % 32u), _wgslsmith_add_u32(0u, min(var_1.x, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-209f, -539f, 123f, 674f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(892f, 1228f, 622f, -341f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    let var_0 = func_1();
    global0 = array<bool, 32>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-377f, var_0.c.x)), _wgslsmith_f_op_f32(exp2(var_0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)))) * _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x) + _wgslsmith_f_op_f32(-1623f - _wgslsmith_f_op_f32(select(1140f, var_0.c.x, global0[_wgslsmith_index_u32(1887u, 32u)]))))));
    var_1 = -1352f;
    global0 = array<bool, 32>();
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f + _wgslsmith_f_op_f32(579f * 117f)) + _wgslsmith_f_op_f32(trunc(var_2.c.x)))));
}

