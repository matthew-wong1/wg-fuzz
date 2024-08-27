struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, -2044f, 0u), Struct_1(45067u, 480f, 4294967295u), Struct_1(0u, 1295f, 0u), Struct_1(1u, -2258f, 1u), Struct_1(25283u, 693f, 9180u), Struct_1(22821u, 704f, 55016u), Struct_1(0u, -1436f, 50115u), Struct_1(33006u, -1706f, 4294967295u), Struct_1(52026u, 934f, 0u), Struct_1(4294967295u, 721f, 1u), Struct_1(0u, 282f, 75385u), Struct_1(4294967295u, 135f, 4294967295u), Struct_1(4294967295u, -1000f, 1u), Struct_1(33917u, -1067f, 86204u), Struct_1(1u, -224f, 1u), Struct_1(1u, -165f, 6761u), Struct_1(49649u, -1293f, 71342u), Struct_1(15870u, -1187f, 12222u), Struct_1(0u, 844f, 1u));

var<private> global1: vec4<i32> = vec4<i32>(1i, -21297i, 2650i, 6146i);

var<private> global2: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false));

var<private> global3: array<u32, 29> = array<u32, 29>(4294967295u, 26263u, 21950u, 0u, 13381u, 1u, 1u, 51790u, 22978u, 28446u, 1u, 69494u, 34146u, 4294967295u, 57452u, 68225u, 16576u, 1u, 38178u, 0u, 48615u, 4294967295u, 22906u, 4294967295u, 4294967295u, 4294967295u, 38954u, 4294967295u, 71349u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + -114f) + 502f));
    global2 = array<vec4<bool>, 17>();
    var var_1 = Struct_1(~(~(~(~u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(3881u, 18547u), 61355u)));
    var var_2 = Struct_1(~(~(~(~3445u))), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_add_u32(u_input.b, global3[_wgslsmith_index_u32(0u, 29u)]));
    global2 = array<vec4<bool>, 17>();
    return StorageBuffer(~_wgslsmith_mod_vec4_u32((vec4<u32>(arg_0.a, 0u, 4294967295u, global3[_wgslsmith_index_u32(1u, 29u)]) << (vec4<u32>(0u, var_2.a, 0u, var_1.a) % vec4<u32>(32u))) | ~vec4<u32>(0u, 11886u, var_2.a, global3[_wgslsmith_index_u32(19720u, 29u)]), abs(~vec4<u32>(4294967295u, var_2.c, 4294967295u, global3[_wgslsmith_index_u32(var_1.c, 29u)]))), u_input.c.x);
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.b), u_input.b), 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~vec4<u32>(_wgslsmith_mult_u32(u_input.b, ~global3[_wgslsmith_index_u32(9336u, 29u)]), 0u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 57911u), vec3<u32>(global3[_wgslsmith_index_u32(18917u, 29u)], 28859u, 60880u))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 4294967295u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 29u)], 29u)], global3[_wgslsmith_index_u32(30194u, 29u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(101702u, 29u)], 29u)], 0u, 1u, global3[_wgslsmith_index_u32(33310u, 29u)])))));
}

