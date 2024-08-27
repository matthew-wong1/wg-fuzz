struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(13369u, 4625u, 18569u, 1u), vec4<u32>(4294967295u, 1u, 25971u, 0u), vec4<u32>(54949u, 4294967295u, 32017u, 4294967295u), vec4<u32>(67366u, 86150u, 12276u, 31579u), vec4<u32>(0u, 62700u, 41724u, 1u), vec4<u32>(1u, 38006u, 13045u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 37792u, 78488u), vec4<u32>(3439u, 1u, 1u, 19534u), vec4<u32>(4294967295u, 4294967295u, 0u, 7993u), vec4<u32>(74114u, 0u, 0u, 0u), vec4<u32>(4294967295u, 0u, 57174u, 68742u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, 76580u), vec4<u32>(4294967295u, 55820u, 1u, 11510u), vec4<u32>(4294967295u, 53937u, 4294967295u, 1u), vec4<u32>(60312u, 32129u, 35696u, 44586u), vec4<u32>(21784u, 4294967295u, 39392u, 16922u), vec4<u32>(0u, 71076u, 1u, 18757u), vec4<u32>(1u, 29158u, 6587u, 22897u), vec4<u32>(0u, 16563u, 0u, 1u), vec4<u32>(5792u, 1u, 22150u, 4294967295u));

var<private> global2: i32;

var<private> global3: array<i32, 20>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1531f), Struct_1(336f), Struct_1(863f), Struct_1(-278f), Struct_1(-1000f), Struct_1(-872f), Struct_1(-173f), Struct_1(421f), Struct_1(-350f), Struct_1(899f), Struct_1(2424f), Struct_1(321f), Struct_1(-1367f), Struct_1(1218f), Struct_1(713f), Struct_1(-487f), Struct_1(678f), Struct_1(755f), Struct_1(1000f), Struct_1(-253f), Struct_1(2339f), Struct_1(885f), Struct_1(1000f), Struct_1(1959f), Struct_1(-763f), Struct_1(1851f), Struct_1(683f), Struct_1(791f), Struct_1(-1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = select(select(vec3<bool>(global0.c.x, !global0.c.x, any(!vec2<bool>(global0.c.x, global0.c.x))), !select(select(vec3<bool>(true, global0.c.x, true), global0.c.yyx, vec3<bool>(global0.c.x, true, global0.c.x)), global0.c.www, any(global0.c.yyz)), all(global0.c)), vec3<bool>(!global0.c.x, all(!vec3<bool>(true, true, global0.c.x)) & global0.c.x, true), global0.c.x && global0.c.x);
    global1 = array<vec4<u32>, 22>();
    var var_1 = any(global0.c.wyy);
    global4 = array<Struct_1, 29>();
    global1 = array<vec4<u32>, 22>();
    return Struct_2(global0.a, global0.d, global0.c, global0.a.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) - arg_0.a.a))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)))));
    let var_3 = _wgslsmith_f_op_f32(round(global0.d));
    var var_4 = var_0;
    return vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 37614u, 1u, 4939u), vec4<u32>(u_input.b.x, u_input.b.x, 9577u, u_input.b.x))), u_input.b.x) & _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(countOneBits(u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), _wgslsmith_add_u32(11383u, u_input.b.x) | ~u_input.b.x), u_input.b);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    global1 = array<vec4<u32>, 22>();
    let var_1 = u_input.b.x ^ (4294967295u & _wgslsmith_dot_vec2_u32(func_3(func_2(), vec3<f32>(542f, var_0.d, 327f)), vec2<u32>(u_input.b.x, u_input.b.x)));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-743f, 636f, _wgslsmith_f_op_f32(round(var_0.a.a)), _wgslsmith_f_op_f32(trunc(var_0.d)))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(~(~((_wgslsmith_div_u32(u_input.b.x, u_input.b.x) << ((13476u ^ u_input.b.x) % 32u)) << (~firstLeadingBit(4294967295u) % 32u))), 29u)];
    global4 = array<Struct_1, 29>();
    global4 = array<Struct_1, 29>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    var var_2 = func_1();
    let var_3 = vec3<i32>(_wgslsmith_add_i32(abs(global3[_wgslsmith_index_u32(1u << (u_input.b.x % 32u), 20u)]), _wgslsmith_div_i32(~reverseBits(u_input.a), -7803i)), -_wgslsmith_div_i32(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(59404u, 4599u, 13932u, 4294967295u))), 20u)], ~(~(-14620i))), _wgslsmith_dot_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 20u)], u_input.a), vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)])));
    var var_4 = abs(max(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_add_i32(-1i, u_input.a)));
    let var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 41994i, 0i)), vec4<i32>(-2147483647i, select(var_3.x, var_3.x, global0.c.x), global3[_wgslsmith_index_u32(abs(u_input.b.x), 20u)], i32(-1i) * -2147483647i)) << (countOneBits((global1[_wgslsmith_index_u32(1u, 22u)] | vec4<u32>(u_input.b.x, 3736u, u_input.b.x, u_input.b.x)) & global1[_wgslsmith_index_u32(firstLeadingBit(4432u), 22u)]) % vec4<u32>(32u)));
}

