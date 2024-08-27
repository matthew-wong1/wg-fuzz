struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, true, false, true, true, false, true, true, false, true, false, true, false, false, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_2(vec2<bool>(true, !arg_2));
    global0 = array<bool, 18>();
    let var_1 = -634f;
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    return reverseBits(select(~vec3<u32>(4294967295u, 40927u, ~1u), firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 39840u, u_input.c), vec4<u32>(10287u, u_input.c, u_input.c, 4294967295u)), u_input.c)), 36643u <= ~(~u_input.c)));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-556f))), func_2(min(41059i, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(554f, 558f, 493f) + vec3<f32>(-201f, 843f, 1198f)), global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.a) >> (vec3<u32>(49177u, u_input.c, u_input.c | 47460u) % vec3<u32>(32u))));
}

fn func_3() -> vec3<bool> {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = !vec4<bool>(all(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(56291u, 18u)], global0[_wgslsmith_index_u32(21062u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(29700u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], true, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(71538u, 18u)], global0[_wgslsmith_index_u32(31052u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], true, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 18u)], true, true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(82562u, 18u)]))), true, global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.c >= 0u);
    global0 = array<bool, 18>();
    var var_1 = func_1().a.a;
    return select(var_0.wyx, vec3<bool>(var_0.x, var_0.x, false), select(select(!(!var_0.xyw), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(!vec3<bool>(true, false, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], true, global0[_wgslsmith_index_u32(u_input.c, 18u)]), global0[_wgslsmith_index_u32(u_input.c, 18u)])), !select(var_0.zzz, !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], false), !var_0.zxw), !global0[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-_wgslsmith_sub_i32(firstLeadingBit(~37179i), -(47719i >> (0u % 32u))), -1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(25661i, u_input.e.x) & -u_input.e.wz, -(vec2<i32>(u_input.e.x, u_input.e.x) | vec2<i32>(2147483647i, 0i))), vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -52240i, ~u_input.a), u_input.b)), ~(-41060i));
    let var_1 = !(!(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(47857u, 18u)], true, global0[_wgslsmith_index_u32(100534u, 18u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 18u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false, global0[_wgslsmith_index_u32(1u, 18u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 18u)], false, global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(6715u, 18u)], false, true)), global0[_wgslsmith_index_u32(4294967295u, 18u)])));
    var var_2 = func_1();
    var_2 = func_1();
    let var_3 = select(select(vec3<bool>(~var_2.a.b.x < ~var_2.a.b.x, false, var_1.x), select(select(func_3(), vec3<bool>(false, true, true), all(vec2<bool>(false, true))), !vec3<bool>(false, false, var_1.x), true), vec3<bool>((var_2.a.b.x << (var_2.a.b.x % 32u)) < ~u_input.c, true, var_1.x && global0[_wgslsmith_index_u32(u_input.c, 18u)])), var_1.yxy, var_1.zyx);
    let var_4 = func_1();
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(var_4.a.b.yx >> (~var_4.a.b.xy % vec2<u32>(32u)), vec2<u32>(7310u, var_2.a.b.x >> ((var_4.a.b.x | u_input.c) % 32u))), ~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 80020u), ~u_input.c), 4294967295u), u_input.e.x, -86427i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1455f)) + var_4.a.a), _wgslsmith_f_op_f32(-var_4.a.a), global0[_wgslsmith_index_u32(u_input.c, 18u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a)))));
}

