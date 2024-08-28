struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, true, false, true, false, false, false, true, true);

var<private> global1: array<u32, 31> = array<u32, 31>(4294967295u, 1u, 4294967295u, 972u, 26117u, 4294967295u, 66559u, 1u, 35655u, 0u, 1u, 1u, 81965u, 96540u, 48780u, 4294967295u, 19629u, 1u, 995u, 21849u, 60938u, 49312u, 50434u, 1u, 43068u, 4294967295u, 59596u, 3771u, 0u, 4294967295u, 45437u);

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = select(_wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i)), vec4<i32>(-31708i, u_input.a, 2147483647i, -37499i) ^ firstTrailingBit(vec4<i32>(4615i, u_input.a, u_input.a, 7247i))), -(~(~vec4<i32>(u_input.a, -24567i, -2147483647i, -42411i))), !global0[_wgslsmith_index_u32(u_input.b, 10u)]) ^ (vec4<i32>(u_input.a | _wgslsmith_mult_i32(0i, 1i), reverseBits(u_input.a), 2147483647i, u_input.a) | vec4<i32>(abs(u_input.a), 2147483647i, u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-37365i, -1i, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 958f, arg_1.c.x, arg_1.c.x), vec4<f32>(arg_0, arg_0, -1299f, arg_0))))))));
    let var_2 = arg_1;
    var_1 = vec4<f32>(-1447f, var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) + _wgslsmith_f_op_f32(arg_1.c.x * 1109f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1064f + arg_0))), ~58819i != _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, var_0.x), var_0.zzy)))), _wgslsmith_f_op_f32(-var_2.c.x));
    let var_3 = 1444f;
    return reverseBits(abs(u_input.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.a;
    let var_1 = u_input.c;
    var var_2 = 4294967295u;
    let var_3 = Struct_1(u_input.c.yzy, arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_1.c));
    let var_4 = false;
    return ~(abs(u_input.a) & select(func_3(_wgslsmith_f_op_f32(trunc(-1573f)), var_3, arg_1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0), select(vec2<i32>(u_input.a, 34775i), vec2<i32>(-2147483647i, 7994i), false)), true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(934f, global2[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(u_input.d)), 25u)]);
    var var_1 = global2[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.c.x, 212f))));
    let var_3 = min(vec4<i32>(~(-9886i), u_input.a, -2147483647i, -1i), vec4<i32>(-1i, -max(var_0 & -2147483647i, ~(-1i)), 3006i, 14120i));
    var var_4 = global2[_wgslsmith_index_u32(abs(var_1.a.x), 25u)];
    return Struct_1(var_1.a | (var_1.a << (abs(~var_1.a) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(989f, -1547f, 778f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c.x, var_2, var_4.c.x) * vec3<f32>(-1481f, var_1.c.x, -222f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.c - vec3<f32>(453f, -720f, 1497f)) - var_1.c)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(all(vec3<bool>(any(vec2<bool>(arg_0.b, true)), arg_1, arg_0.b)), !arg_1));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 31u)], arg_0.a.x), select(firstTrailingBit(u_input.c), select(vec4<u32>(u_input.d, u_input.d, arg_0.a.x, 0u), vec4<u32>(0u, u_input.d, arg_0.a.x, 1u), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], arg_0.b, true, arg_0.b)), !vec4<bool>(true, arg_0.b, true, true)) >> (~u_input.c % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 0u, 1u, 0u), ~u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.yxw, arg_0.a), vec3<u32>(u_input.b, 8654u, global1[_wgslsmith_index_u32(4294967295u, 31u)])), ~u_input.e, _wgslsmith_dot_vec3_u32(u_input.c.wwz, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 31u)], u_input.b, 0u)) ^ 4294967295u), firstLeadingBit(u_input.c)));
    var_0 = !arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f * arg_0.c.x));
    let var_3 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8139u;
    let var_1 = func_4(func_1(), global0[_wgslsmith_index_u32(1u, 10u)], ~21792i);
    global2 = array<Struct_1, 25>();
    let var_2 = Struct_1(var_1.a, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), -1210f)));
    global1 = array<u32, 31>();
    var var_3 = u_input.a;
    let var_4 = var_1.b;
    var_3 = u_input.a;
    global1 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

