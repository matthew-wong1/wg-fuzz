struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(302f + 1255f), _wgslsmith_f_op_f32(min(-2632f, -520f))) * _wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(383f - -1316f))))));
    global1 = array<Struct_1, 1>();
    var var_1 = Struct_2(~arg_0.a, ~vec2<u32>(arg_0.b.x >> (0u % 32u), 1u) | (~vec2<u32>(1u, arg_0.c.b.x) & ~(~arg_0.b)), arg_0.c);
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(var_1.c.b.x), 4u)];
    var_1 = Struct_2(abs(-firstTrailingBit(select(vec2<i32>(u_input.b, arg_0.c.a), vec2<i32>(1i, u_input.b), global0[_wgslsmith_index_u32(arg_0.c.b.x, 4u)]))), var_1.c.b, Struct_1(firstLeadingBit(-4803i), arg_0.c.b));
    return arg_0.a.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(min(-19656i, -1i), ~abs(~reverseBits(vec2<u32>(40026u, 0u))));
    let var_1 = func_3(Struct_2(vec2<i32>(var_0.a, 1i) & firstTrailingBit(vec2<i32>(2147483647i, 0i) << (vec2<u32>(var_0.b.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(var_0.b.x, _wgslsmith_mod_u32(~var_0.b.x, countOneBits(var_0.b.x))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(18661i, -2147483647i), max(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, var_0.a))), var_0.b)));
    var var_2 = Struct_1(-17223i, abs(vec2<u32>(_wgslsmith_mod_u32(0u | var_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, 40740u, 27313u)), abs(var_0.b.x))));
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    return !(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 321f))) < 149f) || true;
}

fn func_1(arg_0: f32) -> f32 {
    global1 = array<Struct_1, 1>();
    var var_0 = all(vec4<bool>(global0[_wgslsmith_index_u32(1u & select(13118u, _wgslsmith_div_u32(524u, 1u), global0[_wgslsmith_index_u32(70074u, 4u)]), 4u)], func_2(), false, true));
    var_0 = true;
    var var_1 = 1u;
    var_0 = all(!(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(5149u, 4u)], global0[_wgslsmith_index_u32(62774u, 4u)], false), vec4<bool>(global0[_wgslsmith_index_u32(518u, 4u)], false, global0[_wgslsmith_index_u32(56146u, 4u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false, true, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(29401u, 4u)]), global0[_wgslsmith_index_u32(4294967295u, 4u)]))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2395f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2635f - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f * -1148f)))))));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2206f * -942f)))) < _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + -539f))));
    let var_2 = Struct_1(648i, vec2<u32>(1u, 1u));
    var var_3 = Struct_2(vec2<i32>(_wgslsmith_add_i32(select(0i, var_2.a, false), _wgslsmith_clamp_i32(-2147483647i, var_2.a, -10198i)) & u_input.b, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(48201i, u_input.a), 24865i | u_input.b)), var_2.b, var_2);
    let var_4 = var_2.a;
    global1 = array<Struct_1, 1>();
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~var_3.b.x, 16120u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2547f, 1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 749f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1088f, -444f) * vec2<f32>(2050f, -997f)))), vec2<bool>(true & any(vec3<bool>(false, false, var_1)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(var_2.b.x, var_5.b.x), 0u), 4u)]))), var_3.a);
}

