struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_4, 5>;

var<private> global3: vec3<i32> = vec3<i32>(-47220i, 422i, 10033i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global3 = countOneBits(select(_wgslsmith_mod_vec3_i32(vec3<i32>(20804i, global3.x, u_input.c.x & u_input.c.x), vec3<i32>(_wgslsmith_mod_i32(global3.x, u_input.c.x), 0i, ~global3.x)), abs(countOneBits(u_input.c ^ u_input.c)), true));
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = !all(vec2<bool>(true, true));
    global1 = array<u32, 20>();
    global2 = array<Struct_4, 5>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    return Struct_3(-global3.x ^ 34163i, Struct_1(vec2<u32>(~arg_3, arg_3), ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b), 20u)], ~53827u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - -1345f))), arg_0)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(589f)) * 529f)), _wgslsmith_sub_vec2_i32(abs(u_input.c.zy), -vec2<i32>(4466i, -2584i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(select(-2231f, -385f, false))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.b, -282f, true, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(1u, 20u)], u_input.a.x), global1[_wgslsmith_index_u32(u_input.b, 20u)]))), _wgslsmith_f_op_f32(1000f + 765f)))), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1545f)), -355f))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-146f))), -218f), global3.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1234f, 351f, true)) * 1265f)), ~(~(~global1[_wgslsmith_index_u32(4294967295u, 20u)]))).b, !vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true, true, !all(vec2<bool>(true, false))));
    let var_1 = var_0.a.c.a;
    var var_2 = !(!vec4<bool>(_wgslsmith_mod_u32(var_0.c.a.x, 0u) <= 1u, -1365f == _wgslsmith_f_op_f32(round(var_0.a.c.a)), true, true));
    return Struct_1(select(abs(~countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], 23713u))), u_input.a, !(!(!vec2<bool>(false, var_2.x)))), ~global1[_wgslsmith_index_u32(var_0.c.a.x >> (firstTrailingBit(u_input.b ^ 1u) % 32u), 20u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = ~(~(~firstTrailingBit(79449u)));
    global2 = array<Struct_4, 5>();
    var var_1 = 911f;
    global2 = array<Struct_4, 5>();
    global2 = array<Struct_4, 5>();
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + -745f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(u_input.a.x, arg_3.x, arg_2, Struct_1(arg_1.a, 10755u))))), arg_3.x))), u_input.c.yz, _wgslsmith_div_f32(arg_3.x, -1521f), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(44681u, arg_0.b), 20u)]).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1i, Struct_1(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], 15889u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(39614u, global1[_wgslsmith_index_u32(u_input.b, 20u)])), vec2<u32>(19159u, 4613u)), abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]))), func_4(func_1(), func_3(1f, ~u_input.c.yz, -1450f, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(32996u, 20u)], u_input.b, global1[_wgslsmith_index_u32(14497u, 20u)]), select(vec4<u32>(28002u, global1[_wgslsmith_index_u32(11687u, 20u)], u_input.b, 21537u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, global1[_wgslsmith_index_u32(21583u, 20u)]), vec4<bool>(true, true, true, true)))).b, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 141f), _wgslsmith_f_op_f32(sign(263f)), _wgslsmith_f_op_f32(1164f + 1170f), _wgslsmith_f_op_f32(571f * 665f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -724f, -2474f, 183f), vec4<f32>(361f, 1843f, -131f, -860f))))))));
    global2 = array<Struct_4, 5>();
    global0 = array<Struct_4, 7>();
    let var_1 = var_0.c.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_0.b, var_0.b, false, vec4<f32>(-169f, var_0.c.a, -1099f, var_1)).a - _wgslsmith_f_op_f32(-var_0.c.a)), -470f))));
    let var_3 = ~1i;
    global2 = array<Struct_4, 5>();
    let var_4 = 1350f;
    let x = u_input.a;
    s_output = StorageBuffer(0i << (global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-831f * -1297f), global3.xz, _wgslsmith_f_op_f32(sign(218f)), global1[_wgslsmith_index_u32(1u, 20u)]).b.a.x & func_1().a.x, 20u)] % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-255f)) + var_1), abs(global3.xz));
}

