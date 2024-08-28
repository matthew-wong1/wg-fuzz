struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = select(!vec3<bool>(false, any(vec3<bool>(true, true, true)), true), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true))), true, all(vec4<bool>(arg_0.x == arg_0.x, true, true, any(vec4<bool>(false, false, true, true))))), true);
    let var_1 = Struct_1(894f, var_0.x, u_input.b, -172f, _wgslsmith_div_vec2_u32(arg_0, vec2<u32>(_wgslsmith_sub_u32(~1u, ~arg_0.x), 4294967295u)));
    let var_2 = var_1.e;
    let var_3 = vec4<bool>(any(select(!(!vec4<bool>(var_1.b, var_0.x, var_0.x, false)), select(select(vec4<bool>(var_1.b, true, false, var_0.x), vec4<bool>(false, var_0.x, true, var_1.b), var_1.b), !vec4<bool>(true, true, true, var_0.x), !var_0.x), select(select(vec4<bool>(true, var_1.b, var_0.x, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, var_1.b)), vec4<bool>(false, true, var_0.x, false), !vec4<bool>(false, var_1.b, true, false)))), true, !(!(!(var_0.x || false))), any(vec3<bool>(false, any(vec3<bool>(var_1.b, var_1.b, var_0.x)), !var_0.x)) == var_1.b);
    let var_4 = u_input.b.ywz;
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 83257u, var_2.x)), vec3<u32>(arg_0.x, ~var_1.e.x & _wgslsmith_add_u32(1u, ~1u), ~(~1u)));
}

fn func_2() -> vec4<f32> {
    let var_0 = 55053u;
    var var_1 = ~(~_wgslsmith_clamp_u32(func_3(~vec2<u32>(19273u, 37380u), _wgslsmith_div_i32(17811i, 2147483647i)), ~(~12693u), firstTrailingBit(79734u)));
    var_1 = var_0;
    var_1 = _wgslsmith_mod_u32(var_0, 4294967295u);
    var_1 = ~(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 23920u), vec2<u32>(62070u, var_0)), vec2<u32>(var_0, var_0)), var_0 >> (_wgslsmith_mult_u32(84026u, 1u) % 32u), true) >> ((21560u & reverseBits(min(5437u, var_0))) % 32u));
    return vec4<f32>(_wgslsmith_f_op_f32(-925f + -1282f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -844f))), _wgslsmith_div_f32(159f, -1542f))) + 1074f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-280f, _wgslsmith_div_f32(343f, 948f)))) * _wgslsmith_f_op_f32(f32(-1f) * -657f)), _wgslsmith_f_op_f32(f32(-1f) * -198f));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))))));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -255f), all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -1i), u_input.b.x, select(66123i, u_input.b.x, all(vec3<bool>(false, false, false))), u_input.b.x), select(vec4<i32>(0i, u_input.b.x, -9915i, u_input.a), vec4<i32>(-1i, u_input.b.x, 0i, 7255i), true) >> (vec4<u32>(select(20253u, 18241u, true), 1u, 37272u, 1u) % vec4<u32>(32u)), u_input.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), vec2<u32>(func_3(vec2<u32>(countOneBits(84919u), 1u), select(u_input.a & 343i, -u_input.a, any(vec2<bool>(true, false)))), 0u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<f32> {
    var var_0 = 14227i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, arg_1.d, arg_1.a))), vec3<f32>(arg_1.a, 1216f, 634f)), vec3<f32>(arg_1.a, 2056f, _wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(485f, -1530f, 1513f), vec3<f32>(arg_1.a, arg_1.d, 517f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, 1282f, arg_1.d)), arg_2 <= 6867u)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -124f, -921f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(177f, arg_1.a, 648f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, arg_1.d, arg_1.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, arg_1.a) - vec3<f32>(792f, -1027f, -450f)), vec3<bool>(arg_3, arg_1.b, true))), !(!arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -1401f, -421f))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(536f, var_1.x, var_1.x), vec3<f32>(-850f, -1125f, 1361f)), vec3<f32>(arg_1.d, arg_1.d, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, -347f, arg_1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -773f, 1000f) + vec3<f32>(-107f, 790f, 284f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2018f, 211f, 1149f) + vec3<f32>(-693f, var_1.x, 1455f)))))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(686f, -1144f)))), -1100f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1897f, -259f)) + _wgslsmith_f_op_f32(f32(-1f) * -726f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-439f, -1068f, 328f) + vec3<f32>(-1456f, -430f, -878f))) * _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, true, true), func_1(), 109125u, true))) + vec3<f32>(1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(0u >> (~4294967295u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -668f), _wgslsmith_f_op_f32(f32(-1f) * -2195f))), _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_clamp_u32(~1u, 104163u, abs(1u)));
}

