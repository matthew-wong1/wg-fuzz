struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_4;

var<private> global2: array<u32, 4> = array<u32, 4>(3346u, 4294967295u, 877u, 27995u);

var<private> global3: vec4<bool>;

var<private> global4: array<u32, 16> = array<u32, 16>(3510u, 22774u, 48236u, 4294967295u, 4294967295u, 6561u, 38367u, 29972u, 0u, 58516u, 41003u, 1u, 20591u, 0u, 4294967295u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(639f + global1.c.a.a), -427f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(494f, global1.c.a.a) * vec2<f32>(841f, 631f)) + vec2<f32>(global1.c.a.a, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(201f, -320f), vec2<f32>(1000f, 609f), false))))))), vec2<bool>(global1.e, global1.e)));
    let var_0 = global1.c.a.c;
    global4 = array<u32, 16>();
    global1 = Struct_4(Struct_3(~vec3<i32>(-u_input.b.x, arg_0.a.x, reverseBits(40115i)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 4u)], 20152u, u_input.e.x)), ~_wgslsmith_mod_vec3_u32(global1.b.b, arg_0.b))), Struct_3(vec3<i32>(firstTrailingBit(select(2147483647i, 1i, false)), u_input.d.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global1.c.a.b.x, global1.a.a.x, u_input.b.x)), reverseBits(global1.a.a))), ~vec3<u32>(4294967295u, arg_0.b.x, arg_0.b.x)), global1.c, ~(~_wgslsmith_sub_u32(arg_0.b.x, global1.d)) << (~global2[_wgslsmith_index_u32(~4294967295u | ~u_input.e.x, 4u)] % 32u), u_input.b.x >= -15210i);
    var var_1 = min(global4[_wgslsmith_index_u32(~firstTrailingBit(30333u), 16u)], ~(~arg_0.b.x));
    return 1i;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = global1.a.b;
    let var_1 = vec4<i32>(max(u_input.d.x, func_2(Struct_3(vec3<i32>(u_input.d.x, 7717i, global1.c.a.b.x), global1.b.b))), u_input.d.x, u_input.b.x, _wgslsmith_div_i32(select(1i, global1.b.a.x, global3.x), 0i));
    let var_2 = Struct_4(global1.a, Struct_3(vec3<i32>(31826i, _wgslsmith_div_i32(u_input.d.x, 1i), reverseBits(22913i)), min(global1.a.b, min(vec3<u32>(1u, 37869u, var_0.x), _wgslsmith_add_vec3_u32(global1.a.b, vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 4u)], var_0.x, arg_0))))), global1.c, 0u, any(!select(select(vec4<bool>(global1.c.a.c.x, false, true, global3.x), vec4<bool>(global1.e, global3.x, true, true), global1.c.a.c), !vec4<bool>(false, true, global3.x, false), vec4<bool>(false, false, global1.c.a.c.x, false))));
    let var_3 = global2[_wgslsmith_index_u32(~(~(~(~arg_0) | _wgslsmith_add_u32(~var_2.d, abs(var_0.x)))), 4u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -1396f)), _wgslsmith_f_op_f32(arg_1.x + -3041f)), _wgslsmith_f_op_f32(-global1.c.a.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(492f - 648f), -174f) + -973f))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x && !(_wgslsmith_dot_vec2_u32(vec2<u32>(96827u, 1u), vec2<u32>(0u, 1u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 40679u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], u_input.c)));
    let var_1 = Struct_5(global1.c.a.c);
    global4 = array<u32, 16>();
    let var_2 = func_1(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1029f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(2050f - 2565f)) + vec4<f32>(-1560f, _wgslsmith_f_op_f32(min(-1313f, -100f)), 1206f, global1.c.a.a))));
    global4 = array<u32, 16>();
    let var_3 = func_1(_wgslsmith_mod_u32(reverseBits(firstLeadingBit(1u << (global4[_wgslsmith_index_u32(u_input.a, 16u)] % 32u))), 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c.a.a, global1.c.a.a)) + global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_2.c.a.a), _wgslsmith_f_op_f32(-global1.c.a.a)), _wgslsmith_f_op_f32(step(-806f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.a)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.a))), global1.c.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1675f)));
    var var_5 = func_1(~var_3.a.b.x, vec4<f32>(-430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * var_4.x) * var_2.c.a.a)), 202f)).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.d, max(~11216u ^ ~global2[_wgslsmith_index_u32(var_3.a.b.x, 4u)], var_2.a.b.x)));
}

