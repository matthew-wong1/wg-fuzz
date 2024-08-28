struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<Struct_2, 9>;

var<private> global3: bool;

var<private> global4: array<vec3<bool>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = 121074u;
    var var_0 = min(countOneBits(reverseBits(vec3<u32>(abs(25892u), firstTrailingBit(43393u), 4294967295u))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 35507u, 1u), false))));
    let var_1 = abs(1u);
    let var_2 = u_input.a;
    global0 = ~var_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_1), 1u) | select(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_1), var_0.xx), abs(var_0.zx), true), var_0.yz);
    return select(~_wgslsmith_add_u32(1u, var_1), var_1, any(vec2<bool>(true, !any(vec3<bool>(false, true, false)))));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(-1038f), true, _wgslsmith_f_op_f32(sign(arg_0.c)), true);
    let var_1 = ~_wgslsmith_clamp_u32(~(~1u), ~func_3(), 40394u);
    global3 = all(select(global4[_wgslsmith_index_u32(~29108u, 11u)], vec3<bool>(!(!var_0.d), ~4294967295u <= ~var_1, all(select(vec2<bool>(true, var_0.d), vec2<bool>(true, arg_0.d), vec2<bool>(true, true)))), global4[_wgslsmith_index_u32(0u, 11u)]));
    global2 = array<Struct_2, 9>();
    global1 = array<vec4<i32>, 23>();
    return !all(vec3<bool>(true, 0i >= u_input.a, all(vec3<bool>(var_0.b, true, arg_0.d))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = arg_0.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(step(-907f, arg_3.x))), arg_3.x) * arg_3.x));
    var_0 = any(vec3<bool>(func_2(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, 1u), 9u)]), false, true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) + _wgslsmith_f_op_f32(-arg_0.c)) - _wgslsmith_f_op_f32(f32(-1f) * -840f)))));
    let var_3 = ~(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(4294967295u), ~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 47831u), vec2<u32>(1u, 1u)), 0u) >> (1u % 32u));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-173f, arg_3.x), 1000f)))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a - 487f), var_1.a, !arg_0.b)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    global2 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(4932u, 82893u, 43743u))), vec3<u32>(firstLeadingBit(abs(1u)), max(select(7683u, 1u, true), 4294967295u), countOneBits(reverseBits(43043u)))) <= ~_wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16875u), vec2<u32>(4294967295u, 18407u)));
    global2 = array<Struct_2, 9>();
    let var_1 = Struct_3(!vec4<bool>(all(select(vec2<bool>(var_0, arg_0.b), vec2<bool>(var_0, false), vec2<bool>(false, var_0))), !(!arg_0.b), !var_0, all(!vec4<bool>(false, false, var_0, true))), global2[_wgslsmith_index_u32(~0u, 9u)], vec3<u32>(_wgslsmith_clamp_u32(1u, ~0u, min(28279u, 4294967295u)) << (1u % 32u), ~99874u, 0u));
    global2 = array<Struct_2, 9>();
    return !(!select(var_1.a.yz, !vec2<bool>(false, arg_0.d), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 9>();
    var var_0 = select(func_4(Struct_2(Struct_1(-136f), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-455f)))), true), vec4<i32>(u_input.a, ~_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1808f, -587f, 353f), vec3<f32>(174f, 1000f, 1094f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(117f), false, 768f, true), vec4<i32>(25129i, u_input.a, 41081i, u_input.a), Struct_1(-788f), vec4<f32>(-537f, -452f, -1000f, 2364f)))))), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(any(vec4<bool>(false, false, false, false)) & true, true));
    var var_1 = Struct_1(1945f);
    global0 = ~abs(_wgslsmith_clamp_u32(10220u, ~(~6796u), ~(~71547u)));
    let var_2 = ~abs(min(~vec3<i32>(u_input.a, u_input.a, u_input.a), max(abs(vec3<i32>(0i, u_input.a, u_input.a)), abs(vec3<i32>(11553i, 3684i, u_input.a)))));
    global2 = array<Struct_2, 9>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(555f + var_1.a), 1921f), 1000f, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(var_3.a), !var_0.x, var_1.a, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, u_input.a, 0i, u_input.a), _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(0u, 23u)], vec4<i32>(-50607i, var_2.x, 1i, var_2.x)), firstTrailingBit(global1[_wgslsmith_index_u32(22451u, 23u)])), Struct_1(var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(349f, -174f, -776f, 963f) + vec4<f32>(var_1.a, 122f, -252f, 231f))))).x * var_3.a));
}

