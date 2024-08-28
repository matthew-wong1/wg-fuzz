struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<vec2<f32>, 16>();
    return vec4<bool>(849f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-641f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f))), true, select(true, false, all(vec3<bool>(all(vec2<bool>(arg_0.d, true)), true, true))), arg_0.b);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> Struct_4 {
    return Struct_4(Struct_1(u_input.c.xy, any(!func_1(arg_0.d)), 31953u, !(!(-2147483647i <= arg_1))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    let var_0 = select(!vec4<bool>(!arg_2.x, all(vec3<bool>(false, false, false)), select(func_2(Struct_2(arg_1.a.a, arg_0.a.d, 1543f, arg_0.a), u_input.a.x, vec2<f32>(292f, 362f)).a.b, arg_2.x, true), arg_2.x), vec4<bool>(!select(true, true, arg_1.a.b || false), true, true, any(select(arg_2, vec2<bool>(true, arg_1.a.d), !arg_1.a.d))), !(!all(arg_2)));
    global0 = array<vec2<f32>, 16>();
    let var_1 = func_2(Struct_2(u_input.c.zx, arg_0.a.b || arg_1.a.b, -324f, Struct_1(_wgslsmith_clamp_vec2_u32(u_input.c.yx, select(arg_1.a.a, vec2<u32>(u_input.c.x, u_input.c.x), var_0.x), vec2<u32>(4294967295u, 1u)), !arg_0.a.d, _wgslsmith_mult_u32(reverseBits(4294967295u), 0u), false)), u_input.a.x << (0u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1028f, -786f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 16u)])) - _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(0u, 16u)], vec2<f32>(785f, -810f), vec2<bool>(arg_2.x, false))))))).a;
    return any(func_1(arg_0.a).wx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 16>();
    let var_0 = select(func_1(Struct_1(_wgslsmith_clamp_vec2_u32(~u_input.c.xy, ~vec2<u32>(1u, u_input.c.x), vec2<u32>(57572u, 98803u)), _wgslsmith_f_op_f32(round(1000f)) <= _wgslsmith_f_op_f32(floor(1706f)), 50058u, _wgslsmith_mult_i32(-44056i, u_input.d) < u_input.d)), func_1(Struct_1(u_input.c.zx, true, ~u_input.c.x, func_3(Struct_4(Struct_1(u_input.c.xx, true, 25977u, true)), func_2(Struct_2(u_input.c.yx, true, 1739f, Struct_1(vec2<u32>(u_input.c.x, 0u), true, u_input.b, true)), -26178i, global0[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(true, false)))), all(vec2<bool>(false, true)));
    let var_1 = _wgslsmith_clamp_u32(select(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x) >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)), var_0.x), select(47497u, 4294967295u, all(!(!var_0.wx))), u_input.c.x);
    let var_2 = vec2<i32>(~u_input.a.x, firstTrailingBit(u_input.d) >> (~(u_input.c.x & func_2(Struct_2(vec2<u32>(77513u, var_1), var_0.x, 413f, Struct_1(vec2<u32>(var_1, 14151u), false, var_1, var_0.x)), 1i, vec2<f32>(801f, 849f)).a.a.x) % 32u));
    global0 = array<vec2<f32>, 16>();
    var var_3 = _wgslsmith_add_u32(abs(u_input.b), firstTrailingBit(var_1));
    global0 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(498f, ~u_input.b);
}

