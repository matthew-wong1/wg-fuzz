struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_mod_i32(-53758i, _wgslsmith_sub_i32(-u_input.e.x, u_input.a.x));
    var_0 = -23237i;
    var var_1 = ~(-25237i) | u_input.a.x;
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_3 = !(u_input.d != u_input.b.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-646f, _wgslsmith_f_op_f32(max(-396f, -766f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> bool {
    var var_0 = true;
    var var_1 = Struct_1(select(arg_2, arg_2, arg_2));
    let var_2 = global0[_wgslsmith_index_u32(1u ^ countOneBits(~(~u_input.b.x)), 8u)];
    var var_3 = Struct_1(select(select(arg_2, !(!vec4<bool>(var_1.a.x, false, false, arg_2.x)), arg_2.x), var_2.a, select(all(var_1.a) || select(false, var_2.a.x, arg_2.x), all(vec2<bool>(false, var_1.a.x)) && var_1.a.x, true)));
    let var_4 = false;
    return any(vec2<bool>(var_2.a.x || true, true));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 8>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 398f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_1(!vec4<bool>(select(func_3(u_input.e, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, false, false, true)), true, u_input.d != 0u), true, ~0u <= u_input.d, true));
    let var_2 = ~vec2<u32>(u_input.d, u_input.d);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(firstTrailingBit(75102u), u_input.b.x) & ~u_input.d), 8u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-242f * -1039f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-369f, 535f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) - -781f));
    var var_2 = firstLeadingBit(~(~(reverseBits(u_input.a.x) ^ _wgslsmith_sub_i32(8482i, 18455i))));
    let var_3 = vec3<i32>(u_input.a.x, 17822i, u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(91780u, min(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(52428u, u_input.c.x, 589u, 1u), vec4<u32>(u_input.b.x, 35020u, 1u, u_input.b.x)), 1u, ~4294967295u, 6585u), reverseBits(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 16943u), ~u_input.c.x, ~0u, u_input.b.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, -515f)), var_1.x, var_1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(536f, var_1.x, -250f), vec3<f32>(1563f, var_1.x, 850f))))))), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), u_input.a);
}

