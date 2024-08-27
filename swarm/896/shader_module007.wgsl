struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = 1f;
    global0 = Struct_2(Struct_1(false, countOneBits(_wgslsmith_div_vec3_u32(arg_2.b.b, ~u_input.c.wyx)), max(101068u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, u_input.d), reverseBits(u_input.a.x)))), arg_2.b);
    let var_1 = _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(54829u, _wgslsmith_mult_u32(~47314u, ~(arg_2.a.b.x << (0u % 32u)))));
    global0 = Struct_2(arg_2.b, global0.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))));
    return 24303i;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.e.x & func_2(-vec4<i32>(~u_input.e.x, ~u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(44454i, u_input.e.x)), u_input.e.x), abs(27626i), Struct_2(Struct_1(!global0.a.a, u_input.c.zxz, 20000u << (global0.a.b.x % 32u)), global0.a));
    global0 = Struct_2(global0.b, global0.a);
    global0 = Struct_2(global0.b, Struct_1(!global0.a.a, ~global0.a.b, 4294967295u));
    let var_1 = -514f;
    return Struct_2(Struct_1(true, vec3<u32>(1u, global0.b.c, 0u | firstTrailingBit(u_input.c.x)), global0.b.c), global0.a);
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = !global0.a.a;
    global0 = Struct_2(global0.b, global0.a);
    global0 = func_1();
    global0 = Struct_2(Struct_1(false, global0.b.b, ~global0.b.b.x), Struct_1(_wgslsmith_add_i32(65896i, u_input.e.x) >= -87443i, u_input.c.zyz, global0.b.c));
    var var_1 = Struct_2(func_1().a, func_1().a);
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = all(select(select(vec4<bool>(arg_1, false, u_input.e.x >= -2147483647i, all(vec4<bool>(arg_2.a, true, false, arg_3.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, arg_2.a, false, arg_1), vec4<bool>(true, true, true, true)), true), true), !(!select(vec4<bool>(false, arg_3.x, true, arg_3.x), vec4<bool>(global0.b.a, arg_1, arg_1, global0.a.a), vec4<bool>(true, false, arg_3.x, arg_1))), vec4<bool>(func_3(vec3<i32>(u_input.e.x, -55450i, 1673i)).a, true, !any(vec4<bool>(arg_3.x, false, arg_1, arg_3.x)), arg_1)));
    var var_1 = func_1().b;
    var var_2 = arg_2;
    var var_3 = arg_2;
    let var_4 = _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_2.c, 1u, ~1u, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.a.b.x, ~global0.b.b.x, ~40586u, 10447u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_3.b.x, arg_0, 4294967295u), vec4<u32>(4294967295u, 64878u, arg_0, arg_2.c)), ~vec4<u32>(var_2.c, u_input.c.x, 1u, var_2.c))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(46394u, 13802u, 0u >> (u_input.b.x % 32u), 47947u)), u_input.c);
    global0 = Struct_2(func_1().b, global0.a);
    let var_1 = func_1();
    var var_2 = var_0.x;
    let var_3 = !vec3<bool>(all(vec4<bool>(global0.a.a, u_input.e.x > u_input.e.x, !var_1.b.a, global0.b.a)), select(!global0.a.a, !var_1.a.a, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 25453u), var_0.wzw), !var_1.a.a, func_3(u_input.e), !vec3<bool>(global0.b.a, false, true))), !var_1.b.a);
    global0 = Struct_2(Struct_1(all(vec4<bool>(global0.a.a, global0.b.a, true, true)), abs(~vec3<u32>(0u, 1u, global0.a.b.x)), ~countOneBits(5669u)), Struct_1(false, vec3<u32>(102460u, _wgslsmith_sub_u32(func_3(vec3<i32>(u_input.e.x, u_input.e.x, -25552i)).b.x, _wgslsmith_mult_u32(1u, u_input.d)), 4294967295u), 0u));
    var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2063f)) + _wgslsmith_f_op_f32(-790f - -865f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1366f, 1697f, u_input.a.x != var_0.x)))), ~(~vec3<u32>(1u, 29402u, u_input.c.x) >> (var_1.b.b % vec3<u32>(32u))));
}

