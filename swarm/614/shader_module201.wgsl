struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u, vec4<f32>(-1425f, 2455f, -346f, -721f), Struct_1(false, vec2<bool>(true, true), -1i, 1000f), 53051u, Struct_1(false, vec2<bool>(false, true), 13591i, 209f)));

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    return Struct_3(u_input.b.x, 0i, arg_0.e);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 1u, u_input.a, 53962u), vec4<u32>(~u_input.a, reverseBits(abs(arg_2.x)), ~abs(1u), 0u)) >> (85080u % 32u);
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = u_input.a >= u_input.a;
    var var_0 = func_3(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 1u), 1u)]), u_input.b.x, abs(vec3<u32>(u_input.a, 1u, ~u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(9223u, 59475u), vec2<u32>(u_input.a, 1756u)) % 32u))), false);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, arg_0.d)), vec2<f32>(1000f, arg_0.d), false)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-288f, arg_0.d))))), vec2<bool>(all(arg_0.b), true || arg_0.a)))), 625f, arg_0, firstLeadingBit(~(vec4<u32>(0u, 4294967295u, 90489u, u_input.a) >> ((vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) << (vec4<u32>(53446u, u_input.a, u_input.a, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    global1 = true;
    var_0 = ~u_input.a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    global1 = true;
    global1 = any(vec3<bool>(func_1(Struct_1(true, vec2<bool>(true, true), abs(u_input.b.x), _wgslsmith_f_op_f32(-210f - 1735f))), any(vec2<bool>(true, true)), false));
    var var_0 = Struct_2(abs(_wgslsmith_add_u32(~(~u_input.a), _wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(590f, 1059f, -983f, 971f))), vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(513f, 2183f, 1221f, 576f)))), vec4<f32>(-1386f, _wgslsmith_div_f32(-665f, 2478f), 247f, _wgslsmith_div_f32(1000f, -544f)))), func_2(global0[_wgslsmith_index_u32(firstTrailingBit(60747u), 1u)]).c, 0u, func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a ^ 78885u, func_3(Struct_3(-2147483647i, u_input.b.x, Struct_1(true, vec2<bool>(false, true), 0i, -1371f)), u_input.b.x, vec3<u32>(4294967295u, u_input.a, 10500u), true)), u_input.a), 1u)]).c);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, max(1u, var_0.a), ~14344u), ~(~vec3<u32>(4294967295u, u_input.a, 62097u))), ~(~countOneBits(u_input.a)))), 1u)];
    var var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(~7478u, abs(4294967295u), var_0.d), ~vec3<u32>(var_0.d, var_0.d, u_input.a) ^ _wgslsmith_clamp_vec3_u32(max(vec3<u32>(57627u, var_0.a, u_input.a), vec3<u32>(var_0.a, u_input.a, var_0.d)), vec3<u32>(62638u, u_input.a, var_0.a), vec3<u32>(31066u, u_input.a, var_0.a) >> (vec3<u32>(u_input.a, u_input.a, 45471u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d) - _wgslsmith_f_op_f32(-1701f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.d), _wgslsmith_f_op_f32(-var_0.e.d))))), 4294967295u);
}

