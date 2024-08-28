struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<vec3<bool>, 21>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 21>();
    var var_0 = Struct_1(150f, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-640f)) + 1000f)));
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_1(var_0.c, u_input.b, _wgslsmith_f_op_f32(select(-297f, _wgslsmith_f_op_f32(-var_0.c), select(false, all(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) != true, !any(vec3<bool>(true, true, false))))));
    global0 = array<vec3<bool>, 21>();
    return var_2;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 21>();
    var var_0 = arg_3;
    global0 = array<vec3<bool>, 21>();
    let var_1 = -2147483647i;
    global0 = array<vec3<bool>, 21>();
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global0 = array<vec3<bool>, 21>();
    var var_0 = min(vec3<i32>(_wgslsmith_clamp_i32(40608i, arg_2.b, countOneBits(u_input.b)), select(func_2().b, func_2().b, true), _wgslsmith_clamp_i32(u_input.b, u_input.b, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(0i, -52522i)))), vec3<i32>(~(-(~arg_1.b)), -arg_2.b, arg_1.b));
    var var_1 = arg_2;
    return u_input.a.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var_0 = global0[_wgslsmith_index_u32(93806u, 21u)];
    let var_1 = ~(0i >> (func_4(1000f, func_3(min(vec3<u32>(81825u, 76734u, 0u), u_input.a), vec4<f32>(-661f, arg_0.x, arg_0.x, -1000f), func_2(), func_2()), Struct_1(func_2().a, -44806i, arg_0.x), vec2<i32>(-arg_1, 1i)) % 32u));
    var_0 = select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~(_wgslsmith_mod_u32(50092u, u_input.a.x) | u_input.a.x)), 21u)], !global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false);
    let var_2 = vec4<u32>(~0u, ~(~firstTrailingBit(u_input.a.x)) >> (~0u % 32u), 60301u, 0u);
    return func_3(var_2.yww, _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(exp2(arg_0))), Struct_1(arg_0.x, _wgslsmith_mod_i32(var_1 ^ -u_input.b, countOneBits(14675i)), arg_0.x), Struct_1(476f, _wgslsmith_mod_i32(-9774i, -1i), arg_0.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2474f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(456f)))))));
    var var_1 = reverseBits(u_input.a.x << (_wgslsmith_dot_vec3_u32(u_input.a, abs(min(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(40886u, 30785u, u_input.a.x)))) % 32u));
    global0 = array<vec3<bool>, 21>();
    let var_2 = vec3<i32>(~u_input.b, ~0i, func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-538f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 0i));
    let var_3 = select(vec2<u32>(u_input.a.x, (countOneBits(1u) | (u_input.a.x << (1u % 32u))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) % 32u)), u_input.a.zy, vec2<bool>((true && all(vec2<bool>(false, false))) && !all(global0[_wgslsmith_index_u32(43062u, 21u)]), any(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 21u)])));
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(17287i, var_2.x, var_2.x, _wgslsmith_add_i32(-16364i, reverseBits(var_2.x))), vec4<i32>(-func_3(vec3<u32>(var_3.x, var_3.x, 4287u), vec4<f32>(var_0.x, var_0.x, 110f, var_0.x), Struct_1(var_0.x, -10101i, 878f), Struct_1(-668f, -46134i, 772f)).b, 2147483647i, ~21820i, var_2.x)), select(48245i, var_2.x, !(!any(vec4<bool>(false, true, true, false)))));
    var_4 = _wgslsmith_sub_i32(func_3(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 979f, -1000f, var_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1209f, var_0.x, var_0.x, var_0.x), vec4<f32>(449f, 588f, -2066f, var_0.x), true)))), Struct_1(var_0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), var_2.zz), -879f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1939f - var_0.x)), -(~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-1023f + var_0.x)))).b, -48315i & var_2.x);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-377f + -989f) * 534f)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))))));
    let var_6 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

