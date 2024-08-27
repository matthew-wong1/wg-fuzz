struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global1: i32;

var<private> global2: array<u32, 24> = array<u32, 24>(0u, 0u, 14563u, 1u, 38780u, 17086u, 20643u, 31105u, 19815u, 10668u, 49114u, 20657u, 112308u, 64936u, 29819u, 50339u, 56408u, 6293u, 0u, 42813u, 1u, 3092u, 0u, 52223u);

var<private> global3: array<u32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    var var_0 = max(min(global2[_wgslsmith_index_u32(~0u, 24u)], 38225u), _wgslsmith_sub_u32(~(~u_input.c.x), global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(40495u, 45583u), 24u)], min(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 0u))), 4u)]));
    let var_1 = u_input.d;
    var var_2 = Struct_1(u_input.c, vec2<f32>(1313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f))), vec4<f32>(_wgslsmith_f_op_f32(2430f * arg_1), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(floor(1324f)))) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(round(1000f))));
    let var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 2682u, var_2.a.x, var_2.a.x) | ~select(vec4<u32>(56265u, 37070u, global2[_wgslsmith_index_u32(1u, 24u)], 1u), vec4<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30782u, 4u)], 24u)], 47558u, var_2.a.x, 71074u), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 3u)]), _wgslsmith_div_vec4_u32(firstTrailingBit(abs(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 36678u, 11365u, 4294967295u))), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 24u)] | global3[_wgslsmith_index_u32(u_input.c.x, 4u)], ~32481u, reverseBits(global3[_wgslsmith_index_u32(4201u, 4u)]))));
    let var_4 = vec4<i32>(var_1.x, ~(select(_wgslsmith_div_i32(2147483647i, u_input.a.x), _wgslsmith_mod_i32(2147483647i, u_input.d.x), any(vec2<bool>(arg_0.x, arg_0.x))) | -(~(-42553i))), -1i, abs(_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_div_i32(~(-30086i), -7795i))));
    return -firstTrailingBit(u_input.d.x);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> u32 {
    global1 = -23105i << (~global3[_wgslsmith_index_u32(0u, 4u)] % 32u);
    global2 = array<u32, 24>();
    global1 = firstTrailingBit(1i);
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, (u_input.d.x ^ 6761i) ^ -arg_2.a), u_input.a.xz), arg_2.b, !(!arg_2.c));
    let var_1 = Struct_4(-select(func_3(select(vec4<bool>(global0[_wgslsmith_index_u32(6638u, 3u)], arg_2.c.x, true, global0[_wgslsmith_index_u32(var_0.b.x, 3u)]), vec4<bool>(arg_1, arg_1, global0[_wgslsmith_index_u32(0u, 3u)], arg_2.c.x), true), 1766f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-313f, arg_0, arg_0)))), var_0.a & _wgslsmith_add_i32(var_0.a, 7564i), !global0[_wgslsmith_index_u32(~u_input.c.x, 3u)]), any(vec4<bool>(~13612u <= var_0.b.x, _wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(1000f * 165f), true, !(!var_0.c.x))));
    return ~u_input.c.x;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    return StorageBuffer(1f, vec2<u32>(3392u, min(u_input.c.x, global2[_wgslsmith_index_u32(func_2(-1764f, u_input.a.x >= 2147483647i, Struct_2(2147483647i, vec3<u32>(global2[_wgslsmith_index_u32(1u, 24u)], 0u, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3937u, 4u)], 3u)], false, false))), 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 24>();
    let x = u_input.a;
    s_output = func_1((10803u << (_wgslsmith_div_u32(countOneBits(0u), u_input.c.x >> (global2[_wgslsmith_index_u32(25288u, 24u)] % 32u)) % 32u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(26094u, 4u)], u_input.c.x), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(global3[_wgslsmith_index_u32(35475u, 4u)], 38947u)))) % 32u));
}

