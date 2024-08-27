struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(75732u, 24879u), vec3<u32>(0u, 22005u, 0u), false);

var<private> global3: array<Struct_2, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = all(vec2<bool>(global2.c || false, false));
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    global1 = array<Struct_1, 7>();
    return vec2<u32>(9496u, u_input.b.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(57383u, 4294967295u), global2.a), u_input.a.wy), arg_1.b.xx), arg_1.b.xy), _wgslsmith_sub_u32(41601u, u_input.b.x)), 14u)];
    let var_1 = max(~(-15908i), _wgslsmith_div_i32(u_input.c.x, -2550i));
    let var_2 = _wgslsmith_sub_u32(~4294967295u, global2.b.x);
    global2 = Struct_1(global2.b.yz, global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))));
    global1 = array<Struct_1, 7>();
    return vec4<f32>(-1000f, arg_0, arg_0, -209f);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f * -939f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1229f)), _wgslsmith_f_op_f32(step(-749f, 453f)))))), Struct_1((global2.b.yz | vec2<u32>(2231u, 1u)) ^ func_2(select(vec3<bool>(global2.c, true, true), vec3<bool>(false, true, false), vec3<bool>(global2.c, global2.c, false)), i32(-1i) * -17662i, u_input.c ^ u_input.c), global2.b, true), true, false));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(var_0));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_2 = vec4<i32>(~max(i32(-1i) * -36609i, u_input.c.x), countOneBits(reverseBits(_wgslsmith_sub_i32(u_input.c.x, -u_input.c.x))), u_input.c.x ^ ~countOneBits(u_input.c.x), 0i);
    return global3[_wgslsmith_index_u32(u_input.b.x, 14u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yy))));
    return Struct_1(vec2<u32>(~abs(arg_0.a), _wgslsmith_dot_vec2_u32(min(u_input.b, global2.a), vec2<u32>(70272u, u_input.b.x))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.b, _wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(31824u, 6u)], vec3<u32>(u_input.b.x, global2.a.x, 88375u)), vec3<u32>(30499u, 6231u, arg_1.a)), global2.b, ~global2.b), all(!select(vec2<bool>(global2.c, true), select(vec2<bool>(global2.c, false), vec2<bool>(global2.c, global2.c), false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 14>();
    let var_0 = ~select(reverseBits(~u_input.a), u_input.a, select(select(!vec4<bool>(global2.c, true, true, false), vec4<bool>(global2.c, true, true, global2.c), true), select(select(vec4<bool>(true, global2.c, true, global2.c), vec4<bool>(false, global2.c, true, global2.c), false), !vec4<bool>(true, true, global2.c, global2.c), false), select(vec4<bool>(true, false, global2.c, true), !vec4<bool>(global2.c, global2.c, global2.c, false), any(vec4<bool>(global2.c, false, global2.c, global2.c)))));
    global2 = func_4(Struct_2(~(~firstLeadingBit(var_0.x))), func_1(), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-2513f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)), -1755f));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(sign(-1032f)), global1[_wgslsmith_index_u32(max(var_0.x, ~u_input.a.x | ~(var_0.x & 0u)), 7u)], true, true)).x;
    let var_2 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-713f + 1655f), _wgslsmith_f_op_f32(196f + var_1))))), ~abs(0u >> (u_input.b.x % 32u)));
}

