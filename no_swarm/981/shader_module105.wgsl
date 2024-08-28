struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(7399u, 1u, 1u, 16826u, 36427u, 1u, 4294967295u, 1u, 35626u, 61728u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = Struct_5(!(!var_0), vec4<i32>(-_wgslsmith_clamp_i32(u_input.d.x, 37070i, u_input.d.x), ~u_input.a.x, u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -82017i, -1i, u_input.c.x), u_input.d), -1i >> (u_input.e.x % 32u))) | u_input.d, ~32021i, _wgslsmith_clamp_u32(arg_1.x, ~4294967295u, ~u_input.e.x));
    let var_2 = -u_input.a.x;
    global0 = array<u32, 10>();
    return vec3<u32>(global0[_wgslsmith_index_u32(17281u, 10u)], ~_wgslsmith_div_u32(~(~u_input.e.x), ~(arg_1.x << (76171u % 32u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 2066u, var_1.d, 15631u) & vec4<u32>(0u, 9116u, 30019u, 11667u)), _wgslsmith_add_vec4_u32(arg_1, ~arg_1)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    var var_0 = ~arg_1.c;
    let var_1 = arg_1;
    var var_2 = false;
    global0 = array<u32, 10>();
    var_0 = u_input.e.x;
    return abs(_wgslsmith_div_u32(~(arg_3.x ^ global0[_wgslsmith_index_u32(arg_3.x, 10u)]), func_3(_wgslsmith_div_f32(-573f, arg_2.b), vec4<u32>(25083u, var_1.c, arg_1.c, global0[_wgslsmith_index_u32(arg_0, 10u)])).x >> (arg_0 % 32u)));
}

fn func_2() -> f32 {
    var var_0 = -(u_input.a.x | ~(~_wgslsmith_mult_i32(1i, 2262i)));
    var var_1 = Struct_1(4294967295u, -2011f);
    var_1 = Struct_1(u_input.e.x, 292f);
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), global0[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_clamp_vec2_u32(u_input.e, firstTrailingBit(u_input.e | vec2<u32>(global0[_wgslsmith_index_u32(9226u, 10u)], 15716u)), ~vec2<u32>(4294967295u, 1u))), func_4(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_1.a, 10u)], global0[_wgslsmith_index_u32(6079u, 10u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 1u, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 10u)], 10u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.e.x, 10u)], 30123u, 45782u))), ~u_input.e.x), Struct_3(-vec2<i32>(1i, 1755i) >> (~u_input.e % vec2<u32>(32u)), global0[_wgslsmith_index_u32(var_1.a, 10u)], select(~u_input.e.x, 1u, true), vec2<bool>(true, true)), Struct_1(7019u, var_1.b), func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.b, -849f)))), firstTrailingBit(vec4<u32>(1u, u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 10u)], 14473u)))), 4294967295u, ~64630u);
    var_0 = u_input.c.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-342f - var_1.b), 435f));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = vec3<bool>(false, true, any(vec4<bool>(!select(false, true, true), true, true, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)] > 4294967295u) == true)));
    let var_2 = vec3<u32>(608u, max(~1u, global0[_wgslsmith_index_u32((0u ^ u_input.e.x) ^ (u_input.e.x >> (19808u % 32u)), 10u)]), 24461u) << (~(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27625u, 10u)], 10u)], global0[_wgslsmith_index_u32(0u, 10u)], 64843u))) % vec3<u32>(32u));
    var_0 = -561f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-266f + 814f))))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - -499f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = func_1();
}

