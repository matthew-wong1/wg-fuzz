struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 6> = array<u32, 6>(0u, 0u, 2752u, 4294967295u, 1u, 4294967295u);

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 50504u), vec2<u32>(60832u, 1u), vec2<u32>(27212u, 74576u), vec2<u32>(133104u, 7783u), vec2<u32>(1u, 49115u), vec2<u32>(37438u, 0u), vec2<u32>(0u, 5411u), vec2<u32>(1u, 37069u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4915u));

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global4.c > 4294967295u;
    global2 = array<u32, 6>();
    let var_1 = global4.d;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global4.c, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, global4.c) & vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 8112u, global2[_wgslsmith_index_u32(global4.c, 6u)], global2[_wgslsmith_index_u32(0u, 6u)])), (vec4<u32>(62541u, global2[_wgslsmith_index_u32(40005u, 6u)], 4294967295u, 4294967295u) | vec4<u32>(u_input.b.x, 0u, u_input.b.x, 45607u)) >> (~vec4<u32>(4294967295u, 46218u, u_input.b.x, global4.c) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.b.x), global2[_wgslsmith_index_u32(1u, 6u)], abs(select(1u, 34243u, true)), 4294967295u)), 22u)];
    global1 = array<Struct_1, 22>();
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(false == global4.a, false | !(!(!global4.a)));
    global2 = array<u32, 6>();
    var var_1 = global1[_wgslsmith_index_u32(global4.c, 22u)];
    global3 = array<vec2<u32>, 12>();
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~u_input.b, u_input.a | u_input.a), reverseBits(~global4.c) ^ func_3()) >> (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 69194u) >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(9572u, u_input.b.x, 53917u), u_input.b, vec3<bool>(false, var_1.a, true))), min(select(u_input.a, u_input.a, vec3<bool>(true, true, var_1.a)), _wgslsmith_add_vec3_u32(u_input.b, u_input.b))) % 32u), 12u)] % vec2<u32>(32u));
    return Struct_1(true, -1i, u_input.a.x, _wgslsmith_f_op_vec4_f32(exp2(global4.d)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    global4 = func_2();
    global2 = array<u32, 6>();
    return global4.c | ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.a.zy), 4294967295u << (global4.c % 32u)), ~arg_0.c), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(~global4.c) & _wgslsmith_dot_vec2_u32(vec2<u32>(~func_1(global1[_wgslsmith_index_u32(42668u, 22u)], 556f, global2[_wgslsmith_index_u32(global4.c, 6u)]), 0u), _wgslsmith_add_vec2_u32(abs(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 12u)]), u_input.b.xx) ^ u_input.b.xz), 12u)];
    var var_2 = ~abs(-1i);
    let var_3 = global2[_wgslsmith_index_u32(global4.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 69186u) ^ vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(30225u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), ~vec4<u32>(4294967295u, u_input.a.x, 1u, global4.c)), 1u, 43103u, _wgslsmith_sub_u32(85262u & u_input.b.x, ~var_1.x)), vec4<u32>(34552u, ~1107u, func_2().c, _wgslsmith_dot_vec2_u32(u_input.b.yy, global3[_wgslsmith_index_u32(1u, 12u)]))) % 32u), 6u)];
    var var_4 = func_3();
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f * 604f)), _wgslsmith_f_op_f32(835f - _wgslsmith_f_op_f32(exp2(var_5.d.x))), -411f))), ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_mod_i32(-1i, -1i)), _wgslsmith_div_vec2_f32(var_5.d.xy, global4.d.zw));
}

