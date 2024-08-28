struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    return vec2<f32>(-1251f, -573f);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(Struct_1(vec4<bool>(all(!vec3<bool>(true, arg_1.x, false)), select(select(arg_1.x, arg_2.a, true), any(vec4<bool>(arg_2.a, false, true, false)), !arg_1.x), false, arg_2.a)), arg_1, -17860i, arg_0.x, ~select(~vec3<u32>(68211u, 60341u, u_input.a) ^ select(vec3<u32>(u_input.c.x, 1642u, u_input.a), vec3<u32>(25792u, u_input.c.x, 4294967295u), vec3<bool>(false, arg_1.x, arg_1.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(59604u, 4294967295u, u_input.a), vec3<u32>(u_input.c.x, 0u, u_input.a)), ~vec3<u32>(7248u, 43908u, 0u)), true));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec2<i32>, 22>();
    let var_0 = -_wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(0i, 1i, arg_1.c, arg_1.d) | vec4<i32>(1i, 0i, -2211i, u_input.b))), vec4<i32>(_wgslsmith_add_i32(max(arg_1.d, u_input.b), ~arg_1.d), _wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(97969u, 22u)]), min(~u_input.b, firstLeadingBit(u_input.b)), u_input.b));
    global0 = array<vec2<i32>, 22>();
    let var_1 = Struct_4(vec2<i32>(min(19111i, var_0), _wgslsmith_clamp_i32(~(u_input.b ^ -3546i), _wgslsmith_dot_vec2_i32(vec2<i32>(-8079i, 49886i) ^ vec2<i32>(-6825i, u_input.b), select(global0[_wgslsmith_index_u32(16548u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)], vec2<bool>(arg_1.b.x, arg_1.a.a.x))), ~select(var_0, 33742i, true))), Struct_3(false));
    global1 = array<Struct_1, 21>();
    return global1[_wgslsmith_index_u32(arg_0, 21u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0.yzw;
    var_0 = ~vec3<u32>(1u, ~4294967295u, ~0u);
    var var_1 = true;
    var var_2 = !(!all(!arg_1.a.xw));
    let var_3 = 0u;
    return Struct_2(func_3(1u, Struct_2(Struct_1(vec4<bool>(true, arg_3, arg_1.a.x, arg_1.a.x)), !arg_1.a.xy, -2147483647i, min(abs(2147483647i), 2147483647i), vec3<u32>(~u_input.a, u_input.a, _wgslsmith_sub_u32(arg_0.x, 27202u)))), vec2<bool>(arg_1.a.x || (true || !arg_3), arg_3), 2147483647i, arg_2, ~(~(~countOneBits(arg_0.xxw))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> Struct_5 {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_3(!all(!select(vec2<bool>(false, false), arg_2.c.b, true)));
    let var_1 = arg_2;
    global1 = array<Struct_1, 21>();
    var var_2 = func_3(var_1.c.e.x, func_2(vec3<i32>(~(~23514i), var_1.a.c, arg_0), !var_1.a.a.a.zx, Struct_3(arg_2.c.b.x))).a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = -u_input.b;
    let var_2 = firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 22u)]);
    global0 = array<vec2<i32>, 22>();
    var var_3 = func_5(min(~u_input.b, u_input.b), _wgslsmith_clamp_i32(var_2.x, -var_0 ^ min(-var_2.x, 0i), 0i), Struct_5(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec2<bool>(true, true), _wgslsmith_sub_i32(-var_0, ~2147483647i), 0i, vec3<u32>(63433u, u_input.c.x, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.c)))), func_4(~vec4<u32>(58530u, 4294967295u, 0u, 4294967295u), func_3(u_input.c.x, func_2(vec3<i32>(var_2.x, var_0, 0i), vec2<bool>(true, false), Struct_3(true))), var_0, func_2(vec3<i32>(-5848i, 2147483647i, 1i), vec2<bool>(true, false), Struct_3(true)).b.x == true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec4<u32>(firstLeadingBit(var_3.c.e.x), _wgslsmith_clamp_u32(var_3.a.e.x, u_input.a, 1u), ~0u, 1u), func_4(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 51511u), Struct_1(vec4<bool>(var_3.c.b.x, false, var_3.a.a.a.x, var_3.a.a.a.x)), -var_0, func_3(34578u, var_3.c).a.x).a, -(~var_2.x), false).d & -2147483647i);
}

