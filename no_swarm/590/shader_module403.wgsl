struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<i32>(49139i, 0i, -78213i, 1i), 801f, Struct_1(vec2<u32>(27241u, 27015u)), Struct_1(vec2<u32>(1u, 0u))), Struct_3(vec4<i32>(-1i, 2147483647i, 1i, -7738i), -814f, Struct_1(vec2<u32>(1u, 4221u)), Struct_1(vec2<u32>(0u, 56226u))), Struct_3(vec4<i32>(1i, 1i, 1i, 2147483647i), 1875f, Struct_1(vec2<u32>(28818u, 5547u)), Struct_1(vec2<u32>(0u, 19090u))), Struct_3(vec4<i32>(-1i, 55322i, 0i, 20136i), -303f, Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(34526u, 54678u))));

var<private> global2: array<bool, 19>;

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(17497u, 4294967295u, 35537u, 0u), vec4<u32>(0u, 51675u, 0u, 4728u), vec4<u32>(5590u, 71952u, 4294967295u, 13714u), vec4<u32>(109739u, 1761u, 71475u, 1u), vec4<u32>(0u, 24140u, 30973u, 49666u), vec4<u32>(9682u, 1u, 1u, 85590u), vec4<u32>(28220u, 0u, 1u, 61810u), vec4<u32>(17404u, 0u, 13277u, 99176u), vec4<u32>(24573u, 1u, 77849u, 0u), vec4<u32>(42784u, 1u, 19691u, 16580u), vec4<u32>(4294967295u, 0u, 36068u, 41605u), vec4<u32>(0u, 4294967295u, 25295u, 26066u), vec4<u32>(25133u, 24134u, 33219u, 25106u), vec4<u32>(4294967295u, 75192u, 52352u, 4080u), vec4<u32>(4294967295u, 20974u, 7968u, 4294967295u), vec4<u32>(4294967295u, 1u, 66643u, 1u), vec4<u32>(0u, 54286u, 0u, 63696u), vec4<u32>(0u, 11499u, 63079u, 18830u), vec4<u32>(4294967295u, 122627u, 151341u, 4294967295u), vec4<u32>(1u, 93006u, 0u, 4294967295u), vec4<u32>(1u, 8052u, 257u, 0u), vec4<u32>(0u, 19425u, 7183u, 4294967295u), vec4<u32>(534u, 17437u, 3122u, 0u), vec4<u32>(27397u, 1u, 43424u, 1u), vec4<u32>(40741u, 8343u, 2032u, 76409u), vec4<u32>(4294967295u, 76983u, 1u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(82292u, 0u, 0u, 68997u), vec4<u32>(45207u, 75769u, 4294967295u, 77008u), vec4<u32>(52052u, 37115u, 92091u, 23325u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-992f)), _wgslsmith_f_op_f32(abs(-272f))));
    global0 = array<vec3<i32>, 21>();
    global2 = array<bool, 19>();
    var var_2 = -2147483647i;
    return abs(arg_2);
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = arg_0.b;
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, ~(~arg_0.a.x)), ~26341i));
    let var_2 = vec2<u32>(arg_0.d.a.x, ~_wgslsmith_dot_vec3_u32(select(func_3(u_input.b, Struct_4(vec4<i32>(arg_0.a.x, -15435i, 1i, 36482i), arg_0.b), vec3<u32>(36158u, 1u, 0u), Struct_2(Struct_1(u_input.a), var_1, 2147483647i, u_input.c, Struct_1(arg_0.c.a))), func_3(25920u, Struct_4(vec4<i32>(var_1, var_1, -3466i, arg_0.a.x), arg_0.b), vec3<u32>(u_input.e, 4294967295u, u_input.a.x), Struct_2(Struct_1(vec2<u32>(0u, 3615u)), -10427i, 0i, 11494i, arg_0.d)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.e, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(1u, 19u)])), firstLeadingBit(~vec3<u32>(0u, 4294967295u, 1u))));
    global3 = array<vec4<u32>, 30>();
    let var_3 = Struct_4(firstTrailingBit(max(_wgslsmith_sub_vec4_i32(arg_0.a, vec4<i32>(-50007i, var_1, arg_0.a.x, var_1)) | _wgslsmith_div_vec4_i32(arg_0.a, arg_0.a), arg_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(864f, arg_0.b))))))));
    return vec2<bool>(global2[_wgslsmith_index_u32(11529u, 19u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -138f))) <= -1751f);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = !all(select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(55896u, 19u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 19u)], global2[_wgslsmith_index_u32(arg_0.a.x, 19u)]), vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(56257u, 19u)], true)), func_2(Struct_3(vec4<i32>(2147483647i, u_input.c, u_input.d, u_input.c), 2247f, arg_0, arg_0))), vec2<bool>(false, global2[_wgslsmith_index_u32(~u_input.e, 19u)]), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 19u)]))));
    return ~vec2<u32>(min(_wgslsmith_mod_u32(u_input.b, 0u & u_input.a.x), 0u), 1u >> (u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(min(_wgslsmith_mod_vec2_u32(~vec2<u32>(35999u, 5565u), ~max(u_input.a, vec2<u32>(93906u, u_input.a.x))), func_1(Struct_1(u_input.a))));
    global1 = array<Struct_3, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-207f, -1791f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1264f, -289f)), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, 509f)))));
    var var_3 = ~(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-firstTrailingBit(vec2<i32>(u_input.d, u_input.d))), var_2.x);
}

