struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(26622i, 2147483647i, 2292i, -5639i, -4371i, 25643i, 1i, 1i, 21720i, -2237i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = arg_0.zy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_3.a, arg_3.a)))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -498f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2564f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), vec2<i32>(1933i, 2147483647i), vec4<i32>(u_input.a, u_input.d.x, global0[_wgslsmith_index_u32(88309u, 10u)], 2147483647i), Struct_1(763f))))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = arg_0;
    let var_1 = vec3<bool>(any(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), select(true, true, true))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), any(vec3<bool>(true, false, false)))) & true);
    var var_2 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~4294967295u, _wgslsmith_div_u32(4294967295u, 31768u)), vec4<u32>(27252u << (1u % 32u), _wgslsmith_mod_u32(1u, 68940u), 1u, 4294967295u)) ^ ~65479u, 97090u);
    global0 = array<i32, 10>();
    var var_3 = ((var_1.x | !all(var_1)) != var_1.x) == var_1.x;
    return _wgslsmith_f_op_f32(max(834f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, var_1.x, false, true), vec2<i32>(global0[_wgslsmith_index_u32(73481u, 10u)], 20430i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2.x, 10u)], 1i, u_input.b), arg_0)) + _wgslsmith_f_op_f32(step(-1535f, arg_0.a))))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(round(arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1310f, -989f))))));
    var var_1 = var_0.x;
    var var_2 = 662f;
    var_2 = _wgslsmith_f_op_f32(648f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var_2 = 365f;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    let var_4 = _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(reverseBits(11113i) ^ _wgslsmith_mod_i32(u_input.c, -2147483647i))) | -2147483647i;
    var var_5 = firstTrailingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(abs(-168f))) + _wgslsmith_f_op_f32(-3203f - 1669f)), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_f32(851f, -1498f)), _wgslsmith_f_op_f32(trunc(var_0.x))))));
}

