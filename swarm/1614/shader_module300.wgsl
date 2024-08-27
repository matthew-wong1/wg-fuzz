struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    global2 = array<i32, 8>();
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(481f)));
    var var_2 = var_0.c;
    let var_3 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33478i, 0i) ^ vec2<i32>(arg_1, global2[_wgslsmith_index_u32(36723u, 8u)]), -vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~(~(-2147483647i)), 27857i, ~_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(71122u, 8u)], 12615i, global2[_wgslsmith_index_u32(0u, 8u)])) >> (vec4<u32>(firstLeadingBit(0u & u_input.b.x), u_input.b.x, max(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(92663u, 37225u, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 16092u))), ~u_input.b.x & ~u_input.b.x) % vec4<u32>(32u)));
    return var_3;
}

fn func_2() -> Struct_1 {
    var var_0 = !any(vec3<bool>(true, select(true, -240f == global1.a, true), !(global2[_wgslsmith_index_u32(1u, 8u)] != u_input.a)));
    var var_1 = func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) + _wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_mod_i32(~(i32(-1i) * -1i), 1i), Struct_2(Struct_1(_wgslsmith_div_f32(global1.a, -171f)), Struct_1(200f), Struct_1(_wgslsmith_f_op_f32(sign(1665f))))) & _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.a, global2[_wgslsmith_index_u32(59047u, 8u)], 1i)), max(vec4<i32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(63839u, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<i32>(global2[_wgslsmith_index_u32(19338u, 8u)], -2147483647i, global2[_wgslsmith_index_u32(65190u, 8u)], -1i)) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, 1i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<i32>(-16762i, 12772i, 7579i, u_input.a)));
    var var_2 = Struct_3(vec3<bool>(!(var_1.x >= u_input.a), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(124f + global1.a))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a - global1.a)))));
    var var_3 = u_input.b.x ^ u_input.b.x;
    let var_4 = true;
    return global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.a)), 3067f)) * _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global1.a)))), global1.a, -1497f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f * global1.a) - _wgslsmith_f_op_f32(ceil(-747f))), -280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    global1 = var_0;
    global1 = Struct_1(-478f);
    let var_2 = Struct_3(select(!vec3<bool>(true, true, any(vec4<bool>(false, false, false, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), arg_0.x != arg_1), !all(vec4<bool>(false, true, false, true))), vec3<bool>(!all(vec3<bool>(false, false, false)), true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)))));
    return -min(abs(2147483647i ^ u_input.a), ~(-min(-9301i, 14487i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (4294967295u << (~_wgslsmith_mod_u32(u_input.b.x, 1u) % 32u)) | _wgslsmith_sub_u32(~4294967295u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0, u_input.b.x), ~vec3<u32>(1u, u_input.b.x, var_0), ~select(vec2<i32>(global2[_wgslsmith_index_u32(0u, 8u)], -47672i), countOneBits(vec2<i32>(0i, -3613i)), false) << ((select(_wgslsmith_mult_vec2_u32(vec2<u32>(5956u, 75651u), u_input.b), u_input.b | u_input.b, vec2<bool>(true, true)) << (vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 68259u)) % vec2<u32>(32u))) % vec2<u32>(32u)), select(select(vec3<i32>(func_1(u_input.b, 0u), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 880i), firstTrailingBit(-14499i)), vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 8u)], ~u_input.a, 55972i), true), -(max(vec3<i32>(u_input.a, -2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<i32>(u_input.a, 1i, global2[_wgslsmith_index_u32(var_0, 8u)])) << (vec3<u32>(var_0, 4294967295u, 134271u) % vec3<u32>(32u))), select(vec3<bool>(any(vec4<bool>(false, false, true, false)), 4294967295u < var_0, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))))));
}

