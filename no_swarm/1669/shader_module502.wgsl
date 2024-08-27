struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false));

var<private> global1: array<f32, 8> = array<f32, 8>(-696f, 884f, -367f, -495f, -896f, -1847f, -395f, 1105f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = arg_2.b != true;
    var var_1 = arg_2;
    global1 = array<f32, 8>();
    global0 = array<vec4<bool>, 27>();
    let var_2 = select(vec4<bool>(any(select(select(vec3<bool>(var_1.b, true, true), vec3<bool>(var_1.b, var_0, var_1.b), true), vec3<bool>(arg_2.b, var_1.b, var_0), true)), any(!vec4<bool>(arg_2.b, false, var_1.b, var_1.b)), 38089u < u_input.b, any(select(vec3<bool>(false, false, arg_2.b), !vec3<bool>(false, var_1.b, true), false))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(67947u, arg_0.b.x), 27u)], !select(global0[_wgslsmith_index_u32(countOneBits(select(27577u, 10070u, true)), 27u)], select(!vec4<bool>(false, true, arg_2.b, var_0), !vec4<bool>(arg_2.b, true, var_1.b, false), var_0), global0[_wgslsmith_index_u32(~107059u & u_input.b, 27u)]));
    return vec2<bool>(true, false);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = !(!vec2<bool>(true, all(vec2<bool>(false, true))));
    let var_1 = any(select(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.b, 8u)] < global1[_wgslsmith_index_u32(19814u, 8u)], var_0.x), vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b, 27u)]) || !var_0.x, true), !func_3(Struct_1(28152u, vec3<u32>(89642u, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(u_input.b, 8u)], Struct_2(Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 0u)), var_0.x, Struct_1(1u, vec3<u32>(8346u, u_input.b, u_input.b)), Struct_1(4294967295u, vec3<u32>(53138u, u_input.b, u_input.b)), Struct_1(67080u, vec3<u32>(39244u, u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(33276u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])))));
    var var_2 = Struct_2(Struct_1(u_input.b, ~(~vec3<u32>(0u, 47597u, 0u) << (~vec3<u32>(u_input.b, 1u, 63690u) % vec3<u32>(32u)))), select(any(func_3(Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 0u)), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])), Struct_2(Struct_1(0u, vec3<u32>(u_input.b, u_input.b, 4294967295u)), true, Struct_1(4294967295u, vec3<u32>(u_input.b, u_input.b, 0u)), Struct_1(u_input.b, vec3<u32>(u_input.b, 2167u, 95251u)), Struct_1(4294967295u, vec3<u32>(44427u, 0u, u_input.b))), _wgslsmith_div_vec3_f32(vec3<f32>(946f, -423f, -825f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])))), true, var_1), Struct_1(u_input.b << (_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b) % 32u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(45323u, 1u, 68645u), vec3<u32>(0u, 91040u, u_input.b), vec3<u32>(0u, 1u, 29698u))), Struct_1(_wgslsmith_sub_u32(max(u_input.b, u_input.b), u_input.b) & 1u, ~vec3<u32>(16715u, 5868u, u_input.b)), Struct_1(~_wgslsmith_clamp_u32(1u, u_input.b, 0u) | (41835u << (u_input.b % 32u)), ~(~(vec3<u32>(u_input.b, 1u, 72935u) & vec3<u32>(u_input.b, 0u, 0u)))));
    var_0 = !vec2<bool>(any(vec2<bool>(!var_0.x, var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(45918u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], true)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_2.c.b.x, 8u)]))) <= _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 8u)], -1290f)));
    let var_3 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-2012f - global1[_wgslsmith_index_u32(u_input.b, 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] * -1265f))))) - _wgslsmith_f_op_f32(f32(-1f) * -238f)));
    return !(!any(vec2<bool>(var_1, var_1)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global1 = array<f32, 8>();
    let var_0 = u_input.d.yy;
    var var_1 = Struct_1(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.a, 1u, firstTrailingBit(_wgslsmith_mod_u32(u_input.b, arg_2.e.a))), select(arg_2.e.b, select(select(arg_1.e.b, vec3<u32>(arg_2.d.a, 0u, 4294967295u), vec3<bool>(true, arg_2.b, false)), ~arg_2.e.b, true), arg_2.b)));
    var var_2 = vec4<bool>(!(any(select(vec3<bool>(true, arg_1.b, true), vec3<bool>(false, true, arg_2.b), arg_1.b)) || func_2(var_0.x)), arg_2.b, (-2147483647i >= ~(-var_0.x)) == false, false);
    var var_3 = ~(~abs(-vec2<i32>(-1i, var_0.x)));
    return -464f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(11201u, 8u)], 698f)) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 8u)]))) + -400f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(8733u, Struct_2(Struct_1(1u, vec3<u32>(u_input.b, 15996u, u_input.b)), true, Struct_1(40954u, vec3<u32>(56609u, u_input.b, u_input.b)), Struct_1(4294967295u, vec3<u32>(4305u, 4294967295u, 0u)), Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 0u))), Struct_2(Struct_1(34995u, vec3<u32>(u_input.b, u_input.b, u_input.b)), true, Struct_1(4294967295u, vec3<u32>(u_input.b, 4294967295u, u_input.b)), Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 16238u)), Struct_1(0u, vec3<u32>(u_input.b, u_input.b, 1u)))))) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 8u)]))));
    global0 = array<vec4<bool>, 27>();
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(~u_input.b >> (1u % 32u)) >> (firstTrailingBit(1u << (~max(u_input.b, u_input.b) % 32u)) % 32u), 8u)];
    let var_3 = -795f;
    global1 = array<f32, 8>();
    let var_4 = min(u_input.d, u_input.c) << (vec4<u32>(~abs(u_input.b), ~19680u, 1u, select(~(~u_input.b), 59009u, var_1)) % vec4<u32>(32u));
    var var_5 = Struct_1(reverseBits(25318u), ~(~(vec3<u32>(u_input.b, u_input.b, 4294967295u) & vec3<u32>(37171u, u_input.b, u_input.b))) & ~vec3<u32>(u_input.b, ~u_input.b, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_3 + 1000f), -135f, var_3), abs(max(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_5.b.x, var_5.a, var_5.a), vec4<u32>(u_input.b, 1u, 1u, u_input.b)), ~67708u), ~19623u)));
}

