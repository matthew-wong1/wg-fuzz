struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<bool, 14>;

var<private> global3: array<vec3<bool>, 4>;

var<private> global4: Struct_2 = Struct_2(vec2<i32>(-4003i, -55821i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = global0.d;
    global3 = array<vec3<bool>, 4>();
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    global2 = array<bool, 14>();
    return _wgslsmith_sub_u32(global0.a, 67206u);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    global0 = Struct_3(u_input.a, vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 17083u, u_input.a, u_input.a), vec4<u32>(42429u, u_input.a, global0.a, global0.a)), vec4<u32>(u_input.a, 0u, u_input.a, global0.a)), _wgslsmith_mod_u32(abs(global0.a), global0.a)), 14u)], !(-global4.a.x > (global0.e.a.x >> (global0.a % 32u)))), global0.c, ~global0.d, arg_1);
    var var_0 = arg_0;
    var var_1 = -13699i;
    global3 = array<vec3<bool>, 4>();
    var var_2 = reverseBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global0.a, u_input.a)) & ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 9984u), vec2<u32>(u_input.a, 0u)), vec2<u32>(49457u, func_3())));
    return Struct_3(u_input.a, !global0.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.c.a))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global0.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, global0.c.c, global0.c.a.x, -214f)), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 14u)], arg_0), vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 14u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(19445u, 14u)], global0.c.b, false))))), all(vec3<bool>(true, any(vec3<bool>(true, arg_0, true)), select(true, global0.b.x, false))), global0.c.c), abs(~abs(~global0.d)), arg_1);
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(~(~global0.a));
    global0 = func_2(false && global0.c.b, global0.e);
    var var_1 = global0.e;
    var var_2 = global0.c;
    global0 = func_2(true, Struct_2(max(min(global0.d.yz, global4.a), vec2<i32>(-2147483647i, max(28809i, 13742i)))));
    return func_2(true, global0.e);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    global1 = array<Struct_1, 24>();
    let var_0 = ~_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(5268u, global0.a, global0.a, arg_1.a)), ~(~vec4<u32>(1u, 1u, global0.a, u_input.a) >> (~vec4<u32>(6854u, 4294967295u, 4466u, global0.a) % vec4<u32>(32u))));
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - -198f)))) != global0.c.c, Struct_2(-max(-global0.d.xx, reverseBits(vec2<i32>(-14429i, 31758i)))));
    global2 = array<bool, 14>();
    let var_1 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.a.x * arg_1.c.a.x), -1265f)), _wgslsmith_f_op_f32(ceil(func_1().c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-2234f, func_1(), !select(vec4<bool>(false, global0.c.b, true, global2[_wgslsmith_index_u32(53031u, 14u)]), vec4<bool>(true, global0.b.x, global2[_wgslsmith_index_u32(4294967295u, 14u)], global0.c.b), global2[_wgslsmith_index_u32(global0.a, 14u)]))) * global0.c.a.x));
    let var_1 = Struct_3(_wgslsmith_sub_u32(51384u, func_1().a), !vec3<bool>(global0.b.x, (4294967295u | u_input.a) != ~45715u, true), Struct_1(global0.c.a, !global2[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1321f)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.e.a.x, -1i, min(u_input.b.x, ~global4.a.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global4.a.x, global0.d.x, 0i), -vec3<i32>(-1i, global0.e.a.x, global0.e.a.x)))), Struct_2(vec2<i32>(0i, -24135i)));
    var_0 = _wgslsmith_f_op_f32(global0.c.c * global0.c.a.x);
    global3 = array<vec3<bool>, 4>();
    global1 = array<Struct_1, 24>();
    let var_2 = var_1.e;
    global4 = Struct_2(-global0.e.a);
    global2 = array<bool, 14>();
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(global0.c.a, _wgslsmith_f_op_vec4_f32(-var_1.c.a)), !global2[_wgslsmith_index_u32(countOneBits(~(~u_input.a)), 14u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c >> (firstLeadingBit(vec3<u32>(4294967295u & global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_1.a, 30276u)), ~var_1.a)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.a.wyw * var_1.c.a.wyw))))), 1u);
}

