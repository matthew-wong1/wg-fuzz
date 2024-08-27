struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, true, true, true, true, true, false, true, true, false, true, false, false, true, false, true, true, true, false, true, true, true, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, abs(select(u_input.a.x, u_input.d, global0[_wgslsmith_index_u32(~arg_0.a, 32u)])), -12737i, ~(~16348i)), ~vec4<i32>(_wgslsmith_sub_i32(u_input.d, i32(-1i) * -63946i), _wgslsmith_dot_vec3_i32(u_input.a.wzy, u_input.a.wyz) & _wgslsmith_mult_i32(-12700i, u_input.b.x), _wgslsmith_clamp_i32(0i, u_input.d, -7740i), u_input.a.x ^ 1i));
    var_0 = _wgslsmith_sub_i32(-39339i, u_input.b.x) & 1692i;
    global0 = array<bool, 32>();
    return Struct_1(u_input.c);
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<u32> {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) - -774f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 178f)))));
    global0 = array<bool, 32>();
    var var_1 = Struct_1(_wgslsmith_div_u32(~4294967295u >> (_wgslsmith_mult_u32(u_input.c, u_input.c << (97628u % 32u)) % 32u), ~11764u));
    return vec2<u32>(min(func_1(func_1(Struct_1(u_input.c))).a, 1u), min(_wgslsmith_sub_u32(1u, max(var_1.a, var_1.a)), var_1.a) & var_1.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(21152u, 32u)], !global0[_wgslsmith_index_u32(arg_1.a, 32u)]);
    var_0 = vec2<bool>(!var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(Struct_1(firstTrailingBit(arg_1.a))).a, 104425u), 32u)]);
    let var_1 = max(_wgslsmith_div_i32(u_input.a.x, 25894i), 19281i);
    return _wgslsmith_add_vec2_u32(func_3(!any(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a, 32u)], true)), !(!(u_input.d == 2147483647i))), vec2<u32>(abs(u_input.c), ~0u << (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(-53760i), _wgslsmith_mod_i32(u_input.a.x, u_input.d)) << ((firstTrailingBit(vec2<u32>(countOneBits(u_input.c), u_input.c | u_input.c)) & (countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 0u))) >> (func_2(Struct_1(u_input.c), func_1(Struct_1(u_input.c))) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_1 = -vec3<i32>(var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), 7541i), -2147483647i);
    var_1 = min(vec3<i32>(401i, u_input.b.x & -(var_1.x | var_1.x), -2147483647i), vec3<i32>(3955i, -max(u_input.b.x, -93687i), (_wgslsmith_clamp_i32(-2147483647i, 18794i, u_input.a.x) & _wgslsmith_mult_i32(var_0.x, 1i)) & -1i));
    var var_2 = vec3<f32>(-1266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1134f))));
    var var_3 = Struct_1(~(~4294967295u));
    let var_4 = _wgslsmith_sub_u32(~var_3.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a & func_1(func_1(func_1(Struct_1(u_input.c)))).a, ~_wgslsmith_add_vec3_u32(vec3<u32>(~3316u, 33062u, ~0u), ~vec3<u32>(var_3.a, 20731u, u_input.c)));
}

