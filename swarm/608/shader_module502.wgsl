struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23>;

var<private> global1: array<u32, 23>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(226u, vec2<bool>(false, false), vec4<bool>(true, false, false, true), false)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), vec4<bool>(false, false, false, true), true)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, false, false, false), false)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(false, true, true, true), true)), Struct_2(Struct_1(1u, vec2<bool>(true, false), vec4<bool>(false, true, false, false), true)), Struct_2(Struct_1(3943u, vec2<bool>(true, true), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, true), vec4<bool>(true, false, false, false), true)), Struct_2(Struct_1(31001u, vec2<bool>(true, true), vec4<bool>(true, true, true, true), true)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(false, false, false, true), true)), Struct_2(Struct_1(15811u, vec2<bool>(true, true), vec4<bool>(true, false, false, false), true)), Struct_2(Struct_1(1u, vec2<bool>(false, false), vec4<bool>(false, true, false, true), false)), Struct_2(Struct_1(0u, vec2<bool>(false, true), vec4<bool>(false, false, true, true), true)), Struct_2(Struct_1(1u, vec2<bool>(false, true), vec4<bool>(true, false, false, true), false)), Struct_2(Struct_1(16760u, vec2<bool>(true, true), vec4<bool>(false, false, true, true), false)), Struct_2(Struct_1(1u, vec2<bool>(true, false), vec4<bool>(false, false, false, false), false)));

var<private> global3: bool;

var<private> global4: array<vec2<bool>, 21>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec2<bool> {
    global0 = array<vec2<f32>, 23>();
    global4 = array<vec2<bool>, 21>();
    return global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 21u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    global0 = array<vec2<f32>, 23>();
    var var_0 = arg_1;
    var var_1 = global2[_wgslsmith_index_u32(67948u, 15u)];
    var var_2 = -2147483647i;
    var var_3 = arg_1;
    return any(vec4<bool>(!(!var_0.c.x), !arg_1.d, false, any(!(!vec4<bool>(true, true, arg_1.b.x, true)))));
}

fn func_1() -> vec4<u32> {
    var var_0 = any(func_2());
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(min(~max(59067u, global1[_wgslsmith_index_u32(4294967295u, 23u)]), 4294967295u) << (0u % 32u), 23u)], global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(26605u, global1[_wgslsmith_index_u32(50631u, 23u)]), 23u)], 21u)], select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), !vec4<bool>(func_3(vec4<bool>(true, true, false, true), Struct_1(41670u, global4[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(false, false, false, false), true)), true, false, true), select(vec4<bool>(true, false, false, 4089i > u_input.a.x), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, false))), true);
    global4 = array<vec2<bool>, 21>();
    let var_2 = global2[_wgslsmith_index_u32(max(min(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u) << (vec2<u32>(global1[_wgslsmith_index_u32(var_1.a, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)]) % vec2<u32>(32u)), abs(vec2<u32>(1u, var_1.a))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, var_1.a), ~vec2<u32>(259u, var_1.a), vec2<u32>(var_1.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a, 23u)], 23u)]) | vec2<u32>(8676u, var_1.a)))), 7563u << (var_1.a % 32u)), 15u)];
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1703f) - _wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1119f, -891f, true)))))));
    return vec4<u32>(var_2.a.a, var_1.a | 1u, var_2.a.a, ~21242u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    let var_0 = ~(~(~func_1()));
    let var_1 = abs(abs(~(~(~var_0))));
    let var_2 = true;
    global4 = array<vec2<bool>, 21>();
    var var_3 = Struct_1(0u, !(!global4[_wgslsmith_index_u32(0u, 21u)]), !(!(!select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, false, false, var_2), vec4<bool>(true, var_2, false, var_2)))), !any(!vec3<bool>(var_2, true, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, ~_wgslsmith_add_i32(~(u_input.b & u_input.b), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(-1i, 82613i)), -u_input.a.x, select(true, var_2, true))), ~vec2<u32>(_wgslsmith_add_u32(func_1().x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, var_3.a, 88733u), var_0)), ~0u << (firstTrailingBit(var_1.x) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)])), vec2<f32>(1545f, 1071f), vec2<bool>(true, var_3.d))))));
}

