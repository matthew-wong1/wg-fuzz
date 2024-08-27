struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(637f, 2341f);

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(vec4<u32>(53962u, 78170u, 4294967295u, 84730u)));

var<private> global2: u32 = 46508u;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global1 = array<Struct_5, 1>();
    var var_0 = 4294967295u;
    global0 = array<f32, 2>();
    var var_1 = (vec3<i32>(-1i) * -u_input.b.xwy) & u_input.b.xzy;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)])) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 947f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(34925u, 2u)]), vec2<f32>(446f, 351f), true))))) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1555f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(33921u, 2u)])), 2372f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -1214f), vec2<f32>(-168f, global0[_wgslsmith_index_u32(5252u, 2u)]))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 2u)], 1394f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - global0[_wgslsmith_index_u32(1u, 2u)]), -583f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, global0[_wgslsmith_index_u32(4294967295u, 2u)])))));
    return u_input.c.x ^ u_input.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_3) -> i32 {
    var var_0 = global3.yx;
    global3 = select(vec3<bool>(1592f <= _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1.a << (arg_1.a % 32u), 2u)])), false, arg_3.b.b.x), arg_0, arg_3.b.b.x);
    let var_1 = Struct_4(vec4<bool>(all(!vec2<bool>(true, arg_0.x)), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1276f)))) <= global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.a.x, arg_3.c), firstTrailingBit(1u)), 2u)], true));
    let var_2 = arg_1;
    global3 = vec3<bool>(any(vec2<bool>(all(!global3.yx), true)), global0[_wgslsmith_index_u32(~max(max(66293u, 33458u), ~3305u), 2u)] > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-494f - arg_3.a), _wgslsmith_f_op_f32(f32(-1f) * -953f), false)), 512f)), all(vec2<bool>((0u == arg_1.a) && global3.x, select(!var_1.a.x, any(vec2<bool>(false, false)), global3.x))));
    return -36537i;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> StorageBuffer {
    let var_0 = arg_1.x;
    let var_1 = select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.c.x, arg_0.c.x, 36336u), vec4<u32>(1u, u_input.c.x, 146744u, u_input.d), vec4<u32>(108293u, 4294967295u, 4294967295u, u_input.d)) & vec4<u32>(countOneBits(arg_0.a.a), 17484u, arg_0.c.x, ~arg_0.e), ~(vec4<u32>(u_input.d, 22768u, u_input.d, u_input.a) >> (vec4<u32>(arg_0.d.x, 23279u, 1u, 4294967295u) % vec4<u32>(32u))) & ~select(vec4<u32>(1u, 0u, arg_0.e, 20851u), vec4<u32>(45190u, 3160u, arg_0.c.x, 18126u), vec4<bool>(false, arg_0.b.x, arg_2, arg_1.x)), all(select(vec4<bool>(global3.x, var_0, arg_0.b.x, var_0), arg_1, global3.x)) && all(!vec2<bool>(arg_0.b.x, true))) << (vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(~abs(arg_0.e), ~(~arg_0.c.x)), ~arg_0.a.a ^ arg_0.a.a, u_input.c.x) % vec4<u32>(32u));
    global0 = array<f32, 2>();
    global2 = var_1.x;
    var var_2 = Struct_4(arg_1);
    return StorageBuffer(firstTrailingBit(vec4<i32>(i32(-1i) * -50052i, func_3(vec3<bool>(var_0, true, false), Struct_1(19408u), global1[_wgslsmith_index_u32(~35749u, 1u)], Struct_3(175f, arg_0, arg_0.e)), select(u_input.b.x, select(-1i, -1i, true), global3.x), 0i)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1863u);
    var var_1 = ~(firstLeadingBit(~u_input.d) | (func_1() | countOneBits(var_0.a))) ^ 1u;
    global0 = array<f32, 2>();
    var var_2 = vec2<bool>(~31528i != -firstLeadingBit(u_input.b.x & u_input.b.x), !(!global3.x));
    global3 = vec3<bool>(true, global3.x, var_2.x);
    var var_3 = ~u_input.b.xwx;
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = func_2(Struct_2(Struct_1(13258u), select(global3.yx, vec2<bool>(global3.x, var_2.x), any(vec4<bool>(global3.x, false, true, var_2.x))), vec3<u32>(u_input.c.x, ~_wgslsmith_mod_u32(74219u, u_input.a), max(~1u, ~27949u)), ~_wgslsmith_mult_vec2_u32(u_input.c.yz >> (vec2<u32>(53249u, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.c.x, 44416u))), _wgslsmith_dot_vec3_u32(u_input.c << (~vec3<u32>(1u, u_input.c.x, 1u) % vec3<u32>(32u)), countOneBits(~vec3<u32>(var_0.a, u_input.a, 0u)))), vec4<bool>(var_2.x, false, true, var_3.x >= abs(12027i >> (var_0.a % 32u))), false);
}

