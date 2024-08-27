struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: f32 = -962f;

var<private> global3: bool;

var<private> global4: array<Struct_2, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    global3 = !(!any(vec4<bool>(any(vec3<bool>(false, true, false)), true, all(vec3<bool>(arg_2, true, true)), arg_2)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1585f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-741f)))), -586f));
    let var_1 = select(~vec2<u32>(~(~29903u), arg_0), vec2<u32>(~_wgslsmith_add_u32(~arg_1.x, abs(10987u)), _wgslsmith_sub_u32(global1.a, arg_1.x)), false);
    let var_2 = Struct_1(u_input.c.x | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, 4294967295u, 0u, 26682u)), ~vec4<u32>(arg_1.x, 4294967295u, 68245u, arg_1.x)));
    var var_3 = Struct_1(arg_1.x);
    return _wgslsmith_sub_i32(2147483647i, -_wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(13269i, 96711i, global0.x)), vec3<i32>(1i, u_input.d, global0.x)), -vec3<i32>(u_input.d, global0.x, u_input.b)));
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) + _wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) - _wgslsmith_f_op_f32(-499f + -2032f)))));
    let var_0 = -(u_input.a ^ u_input.a);
    let var_1 = Struct_1(0u);
    let var_2 = vec4<bool>(true, -2147483647i <= func_3(739u, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, 24793u), vec2<u32>(var_1.a, u_input.c.x)), true), true, all(!vec3<bool>(any(vec2<bool>(false, false)), -1i < u_input.a.x, any(vec3<bool>(false, true, true)))));
    global0 = var_0;
    return ~(u_input.d >> (~(~_wgslsmith_div_u32(global1.a, global1.a)) % 32u));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<u32> {
    var var_0 = func_2() & select(-19383i, 61555i, (true || select(true, false, false)) & select(true, true, true));
    return _wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(11530u, _wgslsmith_mod_u32(arg_0.a.a, firstTrailingBit(u_input.c.x)))) | ~vec2<u32>(69104u, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(60405i, 2147483647i)), -u_input.a), max(1i, 9433i) >> (_wgslsmith_dot_vec2_u32(func_1(Struct_2(Struct_1(0u)), -27094i), abs(u_input.e.yz)) % 32u), 17013i) >> (u_input.c.wyx % vec3<u32>(32u));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.xwz, vec3<u32>(~1u, reverseBits(~global1.a), 0u)), u_input.e.x, u_input.c.x), 1u)];
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-675f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(194f - -1239f), _wgslsmith_f_op_f32(f32(-1f) * -1272f), true)))) - _wgslsmith_f_op_f32(ceil(-1069f)));
    let var_2 = Struct_1(4294967295u);
    global3 = _wgslsmith_add_u32(_wgslsmith_add_u32(~var_1.a.a, global1.a), _wgslsmith_mod_u32(76948u, u_input.e.x) << ((0u | _wgslsmith_div_u32(17141u, var_2.a)) % 32u)) > (func_1(Struct_2(var_2), -_wgslsmith_div_i32(u_input.a.x, 29884i)).x | ~1u);
    var var_3 = global4[_wgslsmith_index_u32(var_2.a, 1u)];
    let var_4 = vec2<f32>(_wgslsmith_div_f32(-518f, 276f), _wgslsmith_f_op_f32(-818f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - -565f)))));
    let var_5 = Struct_2(Struct_1(_wgslsmith_mod_u32(global1.a, var_1.a.a & var_1.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(var_0.x, abs(var_0.x), -u_input.d, _wgslsmith_sub_i32(0i, 0i))), 328f, _wgslsmith_clamp_i32(firstTrailingBit(u_input.d), ~func_2(), ~var_0.x), 1u);
}

