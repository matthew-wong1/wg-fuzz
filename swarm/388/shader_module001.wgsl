struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
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

var<private> global0: array<f32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global0 = array<f32, 4>();
    var var_0 = !(!vec3<bool>(any(vec2<bool>(arg_0.c.b, false)), arg_0.c.b, true));
    var var_1 = arg_0;
    let var_2 = Struct_1(u_input.b.x >> ((u_input.c.x | ~u_input.c.x) % 32u), arg_0.c.a != -max(_wgslsmith_mult_i32(var_1.c.a, var_1.b.a), var_1.b.a), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(4294967295u >> (u_input.c.x % 32u)), 1u), 4u)]);
    let var_3 = var_2;
    return firstLeadingBit(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(52674i, u_input.b.x, -23476i), vec3<i32>(var_3.a, 0i, var_1.b.a)), vec3<i32>(var_3.a, arg_0.c.a, 0i)))) >> (u_input.a.x % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = vec2<i32>(-2147483647i, -9989i);
    var var_1 = arg_3;
    let var_2 = -min(abs(-arg_3.a.a), 2147483647i);
    var var_3 = true;
    var var_4 = -(u_input.b.xx ^ vec2<i32>(abs(_wgslsmith_add_i32(var_0.x, -12842i)), _wgslsmith_div_i32(arg_0.a & 1i, 0i)));
    return arg_0.b || (u_input.b.x > var_1.b.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    let var_0 = vec3<i32>(firstTrailingBit(~(~u_input.b.x)) << (firstTrailingBit(1u) % 32u), -u_input.b.x >> (1u % 32u), -firstTrailingBit(-43368i));
    var var_1 = select(vec3<bool>(func_2(Struct_2(Struct_1(var_0.x, false, global0[_wgslsmith_index_u32(69337u, 4u)]), Struct_1(var_0.x, false, -558f), Struct_1(-25196i, true, 1164f))) != u_input.b.x, !(func_3(Struct_1(-2147483647i, true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), 696f, vec2<u32>(arg_0, arg_0), Struct_2(Struct_1(-4781i, true, -1755f), Struct_1(1i, false, 440f), Struct_1(u_input.b.x, true, global0[_wgslsmith_index_u32(arg_0, 4u)]))) || all(vec2<bool>(true, true))), all(vec4<bool>(true, false, true, false)) == !all(vec4<bool>(true, true, true, false))), !vec3<bool>(true, reverseBits(u_input.c.x) == _wgslsmith_mult_u32(55232u, 44250u), true), vec3<bool>(false, _wgslsmith_f_op_f32(select(314f, 809f, false)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2212f * global0[_wgslsmith_index_u32(arg_0, 4u)])), var_0.x == max(9468i, var_0.x)));
    return Struct_1(-2168i, func_3(Struct_1(0i, var_1.x, global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 4u)] + global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f)))), u_input.c.yx, Struct_2(Struct_1(var_0.x, true, global0[_wgslsmith_index_u32(0u, 4u)]), Struct_1(countOneBits(25639i), var_1.x, _wgslsmith_f_op_f32(select(-1072f, global0[_wgslsmith_index_u32(0u, 4u)], var_1.x))), Struct_1(~0i, false, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 4294967295u), 4u)]))), 430f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11102u, 1u, u_input.a.x, 11000u), vec4<u32>(7275u, u_input.c.x, 4294967295u, u_input.c.x)), 4u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)])))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(select(4294967295u, 54966u, !all(vec4<bool>(false, true, false, false))), 4u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, u_input.c.x), 4u)] * global0[_wgslsmith_index_u32(4930u, 4u)])));
    let var_1 = false;
    global0 = array<f32, 4>();
    let var_2 = Struct_2(func_1(67509u >> (1u % 32u)), func_1(~u_input.a.x), func_1(u_input.c.x));
    let var_3 = var_2;
    var var_4 = func_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c, max(vec3<u32>(u_input.c.x, 4294967295u, 49846u), u_input.c)), u_input.a.x) & ~26056u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

