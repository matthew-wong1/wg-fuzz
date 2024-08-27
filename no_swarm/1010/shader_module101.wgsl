struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-909f, 785f, -680f));

var<private> global1: Struct_1 = Struct_1(-1i, false, vec3<u32>(1u, 20221u, 64299u), -134i, vec3<bool>(false, true, true));

var<private> global2: array<u32, 4> = array<u32, 4>(55737u, 1u, 4294967295u, 21873u);

var<private> global3: array<i32, 29> = array<i32, 29>(22517i, 31113i, -34370i, 1i, 0i, i32(-2147483648), i32(-2147483648), 29466i, 0i, 1i, -1i, -29905i, -66401i, -2726i, -32483i, 1i, 1i, 21920i, 1i, -25353i, 0i, -25300i, -45013i, 1i, 1220i, 0i, 37018i, -1i, 23752i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = array<vec3<f32>, 1>();
    var var_0 = Struct_1(~(-33162i & global1.a), true, ~global1.c, global1.d, global1.e);
    global0 = array<vec3<f32>, 1>();
    global2 = array<u32, 4>();
    global0 = array<vec3<f32>, 1>();
    return vec2<u32>(24705u, var_0.c.x >> (select(1u, 0u, !(global2[_wgslsmith_index_u32(u_input.c, 4u)] <= 33105u)) % 32u));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = -42898i;
    global2 = array<u32, 4>();
    global3 = array<i32, 29>();
    var var_1 = ~(~_wgslsmith_div_vec2_u32(max(global1.c.xx, vec2<u32>(1u, 105537u)), func_3(reverseBits(vec3<i32>(1i, -1i, 2147483647i)))));
    let var_2 = Struct_1(var_0, true, _wgslsmith_mod_vec3_u32(global1.c, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global1.c, global1.c), ~(~vec3<u32>(10211u, 0u, 0u)))), var_0, !select(global1.e, global1.e, select(select(vec3<bool>(global1.e.x, global1.e.x, true), global1.e, vec3<bool>(global1.e.x, true, false)), vec3<bool>(false, global1.b, true), vec3<bool>(global1.e.x, global1.e.x, global1.b))));
    return ~(1u & var_1.x);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_2(arg_0, (vec3<i32>(firstLeadingBit(arg_0), global1.a << (u_input.e % 32u), global3[_wgslsmith_index_u32(func_2(16804i), 29u)]) << (global1.c % vec3<u32>(32u))) >> (~max(min(global1.c, global1.c), vec3<u32>(u_input.d, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9765u, 4u)], 4u)])) % vec3<u32>(32u)));
    global0 = array<vec3<f32>, 1>();
    var var_1 = false;
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32((vec4<i32>(var_0.b.x, -980i, 16571i, global1.a) | vec4<i32>(global1.d, global3[_wgslsmith_index_u32(16391u, 29u)], -15393i, -1i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 4294967295u, u_input.e, global1.c.x), vec4<u32>(u_input.e, 4294967295u, 31088u, 45143u)) % vec4<u32>(32u)), min(vec4<i32>(arg_0, global1.a, 30740i, -2147483647i), vec4<i32>(global1.d, global1.d, -10032i, var_0.b.x)) & _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -8521i, 47795i, var_0.a), vec4<i32>(var_0.a, -30296i, 0i, 13581i))), min(abs(var_0.b | vec3<i32>(var_0.a, var_0.a, 1i)), var_0.b)), !(!select(vec3<bool>(true, true, global1.e.x), select(global1.e, global1.e, vec3<bool>(true, true, true)), true)), _wgslsmith_div_vec3_i32(-countOneBits(firstTrailingBit(vec3<i32>(var_0.b.x, 16900i, -2147483647i))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.b.x, -50419i) >> (vec3<u32>(global2[_wgslsmith_index_u32(global1.c.x, 4u)], 68202u, 46302u) % vec3<u32>(32u)), ~var_0.b)), select(select(vec2<bool>(false, global1.e.x), vec2<bool>(global1.e.x, global1.e.x), true), !global1.e.zz, global1.e.xy));
    var var_3 = var_0.b.zx;
    return ~var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(611f)))), 2499f, _wgslsmith_div_f32(627f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2306f)))));
    var var_1 = firstLeadingBit(~(~(~vec3<u32>(u_input.e, u_input.c, 0u))) ^ max(vec3<u32>(global1.c.x, 65328u, ~global2[_wgslsmith_index_u32(u_input.d, 4u)]), global1.c));
    let var_2 = ~(~(vec2<i32>(16849i, global3[_wgslsmith_index_u32(u_input.e, 29u)]) >> (select(vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 4u)]), u_input.b, global1.e.yy) % vec2<u32>(32u)))) & (vec2<i32>(0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(39924i, 0i), vec2<i32>(global1.a, 0i))) ^ vec2<i32>(~firstLeadingBit(global1.d), -5956i));
    let var_3 = ~global1.c;
    var var_4 = func_1(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global1.c.x, 29u)], global1.d, global1.a), vec3<i32>(global3[_wgslsmith_index_u32(var_3.x, 29u)], var_2.x, var_2.x)), ~28630i) >> (var_3.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), var_0.x);
}

