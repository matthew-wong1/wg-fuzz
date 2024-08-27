struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1159f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1100f, 823f)), -388f, any(vec4<bool>(false, true, false, false)))))) + -1198f);
    return _wgslsmith_div_u32(58321u, u_input.a);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 2>();
    return 49157u;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1601f))))) + _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f), -1510f))));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_1 = Struct_1(true, 1000f);
    var var_2 = ~firstLeadingBit(~(~vec4<u32>(20781u, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(func_3(u_input.d), ~80686u, select(47077u, u_input.a, true), countOneBits(1u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) + _wgslsmith_div_f32(-2695f, var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 68721u, u_input.a, u_input.a)) & ~vec4<u32>(1u, u_input.a, 87455u, 1u), ~vec4<u32>(u_input.a, u_input.a, 60802u, 35233u) ^ vec4<u32>(u_input.a, u_input.a, 10679u, u_input.a)), 34138u, u_input.a, u_input.a);
    var_0 = vec4<u32>(u_input.a >> (_wgslsmith_clamp_u32(49544u, 0u, 0u) % 32u), ~(~4294967295u), 1u, max(func_1(), _wgslsmith_add_u32(var_0.x, abs(_wgslsmith_mod_u32(0u, 94820u)))));
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1879f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-204f * 1f)))));
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-77752i, u_input.c, u_input.b.x), vec3<i32>(-2147483647i, 2147483647i, 1i)) << (var_0.yzy % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, u_input.d), vec3<i32>(u_input.d, 2147483647i, u_input.c)), abs(30174i), select(u_input.e.x, u_input.e.x, var_1.a))), var_0.yy, reverseBits(u_input.a));
}

