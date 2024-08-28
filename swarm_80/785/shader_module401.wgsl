struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(0u, 4200u, 4294967295u, 4294967295u));

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: array<vec3<f32>, 13>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    global0 = array<vec4<u32>, 1>();
    let var_0 = vec4<bool>(any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(select(vec3<bool>(true, false, any(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), false)));
    global1 = array<vec4<f32>, 14>();
    var var_1 = ~arg_2.a;
    let var_2 = var_0.x;
    return all(var_0.xyw);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-826f + 1965f), _wgslsmith_f_op_f32(985f + 634f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2025f, 157f) + _wgslsmith_f_op_f32(-284f - 404f)))));
    var var_1 = arg_0;
    let var_2 = true;
    var var_3 = Struct_1(countOneBits(~_wgslsmith_div_u32(abs(u_input.a), min(var_1.a, var_1.a))));
    var var_4 = ~select(~(~arg_0.a), 0u, func_3(abs(~vec2<u32>(var_3.a, 3417u)), reverseBits(12397i), Struct_1(33771u)));
    return ~arg_0.a;
}

fn func_1() -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(func_2(Struct_1(~22255u)));
    global1 = array<vec4<f32>, 14>();
    var var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(429f, _wgslsmith_f_op_f32(772f - -169f)))))), all(vec4<bool>(true, false || any(vec4<bool>(false, false, false, true)), func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 75674u), vec2<u32>(4294967295u, 11193u)), _wgslsmith_sub_i32(45379i, -28832i), var_1), ~u_input.a > ~var_1.a))));
    var var_3 = any(!vec3<bool>(true, ~4294967295u != ~u_input.a, min(u_input.a, u_input.a) == 31946u));
    return _wgslsmith_mult_i32(-49096i, _wgslsmith_mult_i32(0i, 48107i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_1(), -(~(~select(-22274i, 6511i, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -abs(vec4<i32>(0i, -1i, 1i, 10440i) >> (global0[_wgslsmith_index_u32(1u, 1u)] % vec4<u32>(32u)))), _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(43119i, 28627i)), min(vec2<i32>(-54220i, -6200i), vec2<i32>(-25497i, 14179i))), -_wgslsmith_sub_i32(0i, -36807i)));
    let var_1 = Struct_1(83789u);
    var_0 = ~((countOneBits(~vec4<i32>(var_0.x, 12876i, -16658i, 0i)) ^ vec4<i32>(_wgslsmith_mult_i32(var_0.x, 2147483647i), -16952i, -var_0.x, ~var_0.x)) << (abs(_wgslsmith_add_vec4_u32(~global0[_wgslsmith_index_u32(10233u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1620u), vec3<u32>(4294967295u, var_1.a, u_input.a)), 1u)])) % vec4<u32>(32u)));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, u_input.a), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1411f))))), 4294967295u);
}

