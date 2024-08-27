struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<f32, 22> = array<f32, 22>(-1000f, -436f, 472f, -1000f, 1756f, -333f, -689f, 1134f, -1457f, 1301f, -298f, -988f, 1000f, -131f, -754f, 1000f, 637f, -917f, 2748f, -1348f, -1167f, 792f);

var<private> global1: vec4<u32> = vec4<u32>(64451u, 46769u, 53669u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(vec2<bool>(!(!(u_input.a > 4294967295u)), arg_3.a.x | !arg_3.a.x), vec3<i32>(-28817i, -(-20414i >> (countOneBits(1u) % 32u)), -30391i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> i32 {
    global0 = array<f32, 22>();
    return 72686i;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_2(func_2(countOneBits(_wgslsmith_mult_vec3_u32(~u_input.b.wwx, global1.wzz)), -1615f, vec2<i32>(_wgslsmith_mod_i32(-43815i, -1i), -18273i) << (global1.yw % vec2<u32>(32u)), Struct_1(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), _wgslsmith_sub_vec3_i32(vec3<i32>(-4203i, -1006i, 45720i), vec3<i32>(1i, 1i, 1i)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, u_input.a) ^ vec4<u32>(42941u, global1.x, global1.x, global1.x), ~u_input.b), _wgslsmith_add_vec4_u32(u_input.b, u_input.b) ^ reverseBits(u_input.b)), u_input.a, 16408u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.wy, global1.yw), 1u), 22u)]));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-4794i, var_0.a.b.x), var_0.a.b.zx), vec2<i32>(func_3(~vec3<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-318f, var_0.c, global0[_wgslsmith_index_u32(var_0.b, 22u)])))), func_2(vec3<u32>(4294967295u, var_0.b, 13141u), -1000f, var_0.a.b.xy, Struct_1(var_0.a.a, vec3<i32>(var_0.a.b.x, 33910i, var_0.a.b.x))).a.x, var_0.a.b.x), var_0.a.b.x));
    var_0 = Struct_2(var_0.a, max(~77156u >> (countOneBits(~29132u) % 32u), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(23775u, 4294967295u, 0u, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 40449u, u_input.a, 27122u), vec4<u32>(var_0.b, global1.x, u_input.b.x, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] + global0[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(815f + 237f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36511u, 22u)] + var_0.c))), true)) + var_0.c));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 22u)])) * 1540f), _wgslsmith_f_op_f32(abs(-391f)), var_0.c, 1162f);
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1000f + -1227f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_2.x)));
    return StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_0.b), ~4294967295u, u_input.a), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

