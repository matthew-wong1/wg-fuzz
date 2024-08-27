struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<i32, 1> = array<i32, 1>(0i);

var<private> global2: array<i32, 28> = array<i32, 28>(-1i, i32(-2147483648), 2147483647i, 1i, i32(-2147483648), i32(-2147483648), -31776i, 0i, -41486i, 1i, i32(-2147483648), 1i, -5867i, 33812i, -2270i, -37085i, -20579i, -1i, 0i, 23340i, 1i, 1i, 0i, 5398i, 1i, -1i, 51115i, 1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = reverseBits(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, arg_1.c), abs(20802u)), reverseBits(1u), arg_1.c));
    var var_1 = ~min(~reverseBits(_wgslsmith_sub_u32(arg_1.c, 0u)), u_input.a);
    var_1 = _wgslsmith_sub_u32(53808u, arg_3);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875f * _wgslsmith_f_op_f32(-1f)));
    var var_3 = vec3<i32>(-1i) * -vec3<i32>(-2404i, 1i, global1[_wgslsmith_index_u32(60346u, 1u)] >> (u_input.a % 32u));
    return abs(1u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_1.x;
    var var_1 = arg_2;
    let var_2 = Struct_2(vec2<bool>(arg_0.x < _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(-1000f, arg_0.x), any(vec2<bool>(var_1.d, var_1.e)))), var_1.e));
    global0 = array<f32, 19>();
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~func_3(Struct_2(var_2.a), arg_2, arg_2.e, 48671u)), _wgslsmith_div_u32(1u, 1u)), _wgslsmith_add_u32(arg_2.c, ~_wgslsmith_div_u32(~4294967295u, ~arg_1.x))), 19u)];
    return -u_input.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(51571u, 19u)])) + -933f) <= global0[_wgslsmith_index_u32(~u_input.a, 19u)]));
    let var_1 = u_input.a;
    global1 = array<i32, 1>();
    let var_2 = min(~vec3<i32>(~1i, -34983i, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(var_1, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], -972f) * vec4<f32>(-617f, 187f, global0[_wgslsmith_index_u32(var_1, 19u)], 351f)), firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, var_1)), Struct_1(global0[_wgslsmith_index_u32(1u, 19u)], -1709f, var_1, var_0, var_0))), select(vec3<i32>(-abs(13793i), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 993f, -155f, global0[_wgslsmith_index_u32(var_1, 19u)]) * vec4<f32>(global0[_wgslsmith_index_u32(var_1, 19u)], -2486f, global0[_wgslsmith_index_u32(u_input.a, 19u)], 197f)), vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(var_1, var_1, 6515u), Struct_1(1000f, global0[_wgslsmith_index_u32(74515u, 19u)], 0u, var_0, true)), firstTrailingBit(global2[_wgslsmith_index_u32(1u, 28u)])), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 28u)]) << (vec2<u32>(62226u, 4294967295u) % vec2<u32>(32u)), -u_input.c.xz), 1831i, -4990i), select(vec3<bool>(!var_0, false, select(true, var_0, var_0)), vec3<bool>(var_0, var_0, true), var_0)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), global0[_wgslsmith_index_u32(934u, 19u)]);
    return StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 1135f, 1683f, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(0u, 48243u, u_input.a), Struct_1(2036f, global0[_wgslsmith_index_u32(u_input.a, 19u)], 48449u, false, var_0)), func_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 19u)], var_3.x, -1000f, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(u_input.a, 106621u, u_input.a), Struct_1(-820f, -1239f, u_input.a, var_0, false))), 48705i, ~var_2.x) & _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1, var_1), vec4<u32>(0u, 0u, var_1, var_1)), 1u)], 5251i, 0i), ~(vec3<i32>(3361i, 1i, 0i) << (vec3<u32>(19238u, 28979u, var_1) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

