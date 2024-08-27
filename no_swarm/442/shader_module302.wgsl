struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, -392f, vec3<bool>(false, false, true), vec3<bool>(false, true, false), 30765i), Struct_1(4294967295u, -537f, vec3<bool>(true, true, true), vec3<bool>(true, true, false), i32(-2147483648)), Struct_1(70698u, -1259f, vec3<bool>(false, false, true), vec3<bool>(true, true, false), -45468i), Struct_1(0u, 336f, vec3<bool>(false, true, false), vec3<bool>(false, false, true), 27175i));

var<private> global1: bool;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: i32) -> bool {
    return select(all(global2.a.a.c.yy), select(global2.a.a.c.x, all(global2.a.a.c.yy), false), global2.a.a.c.x == ((global2.e.b == global2.d.x) || true)) || !any(select(vec4<bool>(global2.a.a.d.x, true, true, false), vec4<bool>(false, false, global2.e.d.x, global2.e.d.x), !vec4<bool>(global2.a.a.c.x, global2.a.a.d.x, false, true)));
}

fn func_2(arg_0: f32) -> bool {
    global0 = array<Struct_1, 4>();
    global1 = false;
    let var_0 = u_input.c.x;
    global1 = false;
    global1 = true;
    return ~(select(~32703u, min(4294967295u, 22200u), !global2.e.c.x) | ~abs(4294967295u)) >= u_input.a.x;
}

fn func_3() -> bool {
    var var_0 = ~(~vec3<i32>(global2.b, -1i, global2.b));
    global0 = array<Struct_1, 4>();
    global1 = !(!global2.a.a.c.x);
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<bool>(global2.a.a.d.x, all(vec2<bool>(true, true)), all(vec4<bool>(false, global2.a.a.d.x, true, false))), global2.e.c, -u_input.b), _wgslsmith_sub_u32(~71922u, select(u_input.a.x, u_input.a.x, true)) | 0u), u_input.c.x, vec3<i32>(-u_input.c.x, _wgslsmith_clamp_i32(-1i, var_0.x & select(5960i, 1i, global2.a.a.d.x), firstLeadingBit(var_0.x)), u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x + global2.e.b)) - global2.a.a.b), 127f, -1404f, -198f), Struct_1(4294967295u, -633f, global2.a.a.d, select(!(!vec3<bool>(true, global2.a.a.d.x, true)), select(vec3<bool>(false, global2.e.d.x, true), global2.a.a.d, global2.a.a.d), global2.e.c.x), u_input.b));
    return all(global2.a.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(global2.a.a.a, 7376u), ~_wgslsmith_add_u32(u_input.a.x, (0u >> (global2.a.a.a % 32u)) | abs(92257u)));
    global1 = true;
    let var_1 = !select(vec4<bool>(func_1(-1i) & any(vec4<bool>(global2.e.d.x, global2.a.a.d.x, global2.a.a.d.x, global2.e.c.x)), true, func_2(_wgslsmith_f_op_f32(global2.d.x + 527f)), false), select(select(!vec4<bool>(false, global2.a.a.d.x, true, false), select(vec4<bool>(global2.a.a.c.x, false, true, global2.e.c.x), vec4<bool>(true, true, global2.a.a.c.x, global2.e.d.x), vec4<bool>(false, global2.a.a.c.x, global2.a.a.d.x, false)), global2.e.c.x), select(vec4<bool>(true, true, global2.a.a.c.x, global2.a.a.c.x), select(vec4<bool>(false, true, global2.a.a.c.x, false), vec4<bool>(global2.e.c.x, false, global2.e.d.x, global2.e.d.x), vec4<bool>(global2.e.d.x, true, global2.e.d.x, global2.e.c.x)), global2.a.a.d.x), vec4<bool>(!global2.e.d.x, false, false, true)), vec4<bool>(!global2.a.a.d.x, true, false, !func_3()));
    global0 = array<Struct_1, 4>();
    global2 = Struct_3(global2.a, global2.c.x, select(u_input.c, ~(vec3<i32>(1i, global2.a.a.e, u_input.c.x) ^ select(vec3<i32>(u_input.c.x, 0i, global2.b), u_input.c, global2.e.d.x)), select(vec3<bool>(-23256i > global2.b, var_1.x, true), select(vec3<bool>(true, global2.e.c.x, true), !vec3<bool>(true, var_1.x, global2.a.a.d.x), !vec3<bool>(global2.e.c.x, var_1.x, false)), !var_1.xyz)), _wgslsmith_f_op_vec4_f32(global2.d - global2.d), global2.e);
    let var_2 = Struct_1(4294967295u, _wgslsmith_f_op_f32(global2.e.b - _wgslsmith_f_op_f32(floor(445f))), !vec3<bool>(global2.e.c.x, true | var_1.x, !any(vec4<bool>(true, false, true, false))), global2.e.c, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(21656u, u_input.a.x)), _wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.xz)), (var_0.x ^ ~global2.e.a) & ~abs(global2.a.b), _wgslsmith_sub_u32(var_0.x, global2.e.a) << (14543u % 32u), var_2.a), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(17988u, u_input.a.x, 21214u, 4294967295u), vec4<u32>(var_0.x, var_0.x, global2.a.b, 4294967295u)) >> (max(vec4<u32>(var_0.x, var_0.x, 12008u, var_0.x) & vec4<u32>(var_0.x, var_2.a, 27694u, 26883u), ~vec4<u32>(4294967295u, 1u, 57724u, global2.a.a.a)) % vec4<u32>(32u))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2.a.a.e, global2.b, 2529i), select(vec4<i32>(1i, 0i, global2.b, -2147483647i), vec4<i32>(global2.e.e, -2147483647i, global2.e.e, -2147483647i), global2.e.c.x), vec4<i32>(15241i, 1i, -49774i, var_2.e)), vec4<i32>(_wgslsmith_mult_i32(var_2.e, -41024i), global2.c.x, var_2.e & global2.c.x, u_input.c.x)));
}

