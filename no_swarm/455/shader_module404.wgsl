struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), Struct_1(vec3<f32>(-787f, -801f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(reverseBits(0u), 31u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 1288f), any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-690f, -287f)))))), Struct_3(Struct_2(!select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, false, arg_0, arg_0)), ~(vec3<u32>(0u, 0u, 4294967295u) >> (vec3<u32>(0u, u_input.a.x, 0u) % vec3<u32>(32u))), u_input.b), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 61768u)));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = ~abs(_wgslsmith_add_u32(4294967295u, firstLeadingBit(firstLeadingBit(u_input.a.x))));
    return 53307i;
}

fn func_2() -> vec3<u32> {
    global0 = array<f32, 31>();
    var var_0 = func_3(true & all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 31u)]))) | ~(~(~u_input.b.x));
    let var_1 = _wgslsmith_div_u32(~reverseBits(u_input.a.x), 75484u);
    var var_2 = ~abs(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) << (45144u % 32u), countOneBits(u_input.a.x) | u_input.a.x, ~var_1));
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(33808u, var_1), u_input.a.x, ~(~17505u) ^ ~var_1);
    return _wgslsmith_mod_vec3_u32(~(~abs(~vec3<u32>(u_input.a.x, 4294967295u, var_1))), ~var_3);
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global0 = array<f32, 31>();
    var var_0 = Struct_5(~func_2() >> (vec3<u32>(u_input.a.x << (~u_input.a.x % 32u), ~(u_input.a.x ^ 8481u), u_input.a.x) % vec3<u32>(32u)), func_2(), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_add_i32(min(-1i, u_input.b.x), firstTrailingBit(abs(-2147483647i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)])))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] + -416f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) + vec2<f32>(792f, global0[_wgslsmith_index_u32(4294967295u, 31u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(abs(43492u), 31u)])) * global0[_wgslsmith_index_u32(func_2().x, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 97233u ^ u_input.a.x, u_input.a.x)), 31u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1648f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 31u)])))), global0[_wgslsmith_index_u32(0u >> ((u_input.a.x & 9240u) % 32u), 31u)], true | arg_0))));
    var_0 = Struct_5(var_0.a, vec3<u32>(var_0.b.x, 0u, var_0.a.x), ~(firstTrailingBit(_wgslsmith_clamp_i32(-48808i, var_0.c, u_input.b.x)) | 1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, global0[_wgslsmith_index_u32(var_0.b.x, 31u)])) - vec2<f32>(845f, -661f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-var_0.e.yz)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_0.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(6583u, 31u)], 314f) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 31u)], -354f, global0[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_vec3_f32(-var_0.e))));
    let var_1 = ~var_0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-354f, 389f, var_0.e.x, -292f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e.x, var_0.d.x, -770f, var_0.d.x)))))))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, global0[_wgslsmith_index_u32(34726u, 31u)]) * vec2<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 31u)], -1103f))) * _wgslsmith_div_vec2_f32(vec2<f32>(809f, -1000f), vec2<f32>(396f, 675f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false);
}

