struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec4<bool>(true, true, false, false), -2310f), Struct_4(vec4<bool>(true, true, true, false), -233f), Struct_4(vec4<bool>(false, false, false, true), 141f), Struct_4(vec4<bool>(true, true, false, true), 615f), Struct_4(vec4<bool>(true, true, true, true), -325f), Struct_4(vec4<bool>(true, false, false, false), 142f), Struct_4(vec4<bool>(true, false, false, true), 996f), Struct_4(vec4<bool>(false, false, true, true), 164f), Struct_4(vec4<bool>(false, true, false, false), 341f), Struct_4(vec4<bool>(false, true, false, false), -1000f), Struct_4(vec4<bool>(true, false, true, true), 508f), Struct_4(vec4<bool>(false, false, false, false), -708f), Struct_4(vec4<bool>(true, false, false, false), -533f), Struct_4(vec4<bool>(false, false, false, false), -232f), Struct_4(vec4<bool>(false, true, true, true), 471f), Struct_4(vec4<bool>(true, true, false, false), 278f));

var<private> global1: Struct_5;

var<private> global2: array<vec3<bool>, 25>;

var<private> global3: array<vec2<i32>, 22>;

var<private> global4: array<f32, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    return !vec2<bool>(!(any(vec2<bool>(true, true)) && true), true);
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(vec4<bool>(all(!func_3()), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), select(all(vec2<bool>(true, true)), false & func_3().x, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 27u)] - global4[_wgslsmith_index_u32(u_input.b, 27u)]))) * global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(44108u, 1u, 22705u, 36196u) ^ vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(30776u, global1.a, global1.a, global1.a) ^ vec4<u32>(1u, 34188u, u_input.c.x, u_input.c.x)), vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.b, 5531u), u_input.b >> (u_input.c.x % 32u), _wgslsmith_mod_u32(1u, u_input.c.x))), 27u)]));
    global4 = array<f32, 27>();
    global4 = array<f32, 27>();
    global3 = array<vec2<i32>, 22>();
    let var_1 = 50979u;
    return Struct_5(firstLeadingBit(u_input.b), _wgslsmith_div_i32(u_input.a, -74509i));
}

fn func_1() -> u32 {
    global1 = func_2();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(global1.a, 27u)], -427f, 1832f, 2104f), vec4<f32>(-835f, 1248f, 1551f, -581f), false)))))), Struct_1(vec4<i32>(global1.b, _wgslsmith_div_i32(0i, global1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 57840i), global3[_wgslsmith_index_u32(0u, 22u)] >> (u_input.c % vec2<u32>(32u))), global1.b), min(-reverseBits(vec2<i32>(global1.b, global1.b)), max(vec2<i32>(-18650i, -16227i), global3[_wgslsmith_index_u32(u_input.c.x, 22u)]))), vec3<bool>(true, true, false), select(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), all(vec4<bool>(false, true, true, false))), vec2<bool>(~62686u != func_2().a, func_3().x), true));
    var var_1 = true;
    var var_2 = var_0.a.wzz;
    global3 = array<vec2<i32>, 22>();
    return _wgslsmith_div_u32(firstTrailingBit(func_2().a), ~50873u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits((vec4<u32>(global1.a, global1.a, global1.a, 1u) >> (min(vec4<u32>(1u, global1.a, global1.a, u_input.b), vec4<u32>(global1.a, global1.a, u_input.c.x, u_input.b)) % vec4<u32>(32u))) & ~(vec4<u32>(23498u, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(45588u, 37893u, global1.a, u_input.c.x) % vec4<u32>(32u)))) << (vec4<u32>(func_1(), ~(~global1.a), min(_wgslsmith_mult_u32(~u_input.b, ~4294967295u), firstTrailingBit(global1.a << (global1.a % 32u))), ~(~u_input.c.x)) % vec4<u32>(32u));
    global2 = array<vec3<bool>, 25>();
    var var_1 = 34905u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2535f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 27u)] * global4[_wgslsmith_index_u32(4294967295u, 27u)])))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global1.a, var_0.x), select(u_input.b, 9249u, true)), 27u)] * _wgslsmith_f_op_f32(f32(-1f) * -323f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    var var_3 = Struct_4(vec4<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)), select(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, all(vec3<bool>(false, false, false))), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c.x, 27u)] + -1000f)))), _wgslsmith_f_op_f32(floor(827f)))));
    var var_4 = vec2<u32>(23388u, 120491u & _wgslsmith_mod_u32(global1.a, ~global1.a)) ^ abs(u_input.c);
    global4 = array<f32, 27>();
    var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, global1.a), firstLeadingBit(48950u), var_0.x, u_input.b & var_4.x), vec4<u32>(~0u, 90540u, var_4.x, 14570u)) >> (vec4<u32>(var_4.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, global1.a), vec4<u32>(7866u, u_input.b, 1u, 4294967295u)) << (~4294967295u % 32u), 24616u, ~1u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, global1.b, u_input.a);
}

