struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_3(vec4<i32>(0i, ~2754i, 1i, arg_0.a.x), arg_0, true, vec4<bool>(all(vec2<bool>(false, false)) | true, arg_0.c >= u_input.c, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(arg_0.b - arg_0.b)) <= _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.b)), true));
    var var_1 = vec3<u32>(var_0.b.c, abs(_wgslsmith_add_u32(u_input.a, 17423u)), firstLeadingBit(~0u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b, -608f, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -650f, 1758f))))) - vec4<f32>(-1268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.b, 593f)) * var_0.b.b), var_0.b.b, var_0.b.b)));
    var var_3 = _wgslsmith_f_op_f32(-626f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, 701f)), var_0.c))));
    var var_4 = arg_0;
    return vec3<u32>(_wgslsmith_sub_u32(var_0.b.c, var_0.b.c) ^ firstTrailingBit(25003u), select(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(39736u, u_input.a, 1u)), ~vec3<u32>(39164u, var_0.b.c, 41549u)), 42502u, !(!var_0.c)), u_input.b.x);
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = func_3(Struct_1(min(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(i32(-1i) * -37652i, i32(-1i) * -1i, 52035i, select(-29630i, -1i, false))), -408f, ~select(~0u, 4294967295u & u_input.b.x, true)));
    var var_1 = _wgslsmith_clamp_i32(-2147483647i, 46302i, max(~6460i, -2147483647i));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f)), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(752f * _wgslsmith_f_op_f32(f32(-1f) * -475f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-692f, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -268f), arg_0.a), vec4<f32>(arg_0.a, 1184f, _wgslsmith_f_op_f32(ceil(350f)), _wgslsmith_f_op_f32(arg_0.a - arg_0.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, -792f, arg_0.a, arg_0.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-824f, arg_0.a, arg_0.a, 441f) + vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1802f, -1579f, 849f, arg_0.a))))));
    var_1 = ~firstTrailingBit(1i) | _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9352i, -38581i, -7666i), vec3<i32>(-17605i, 19562i, 5853i)), _wgslsmith_mod_i32(-2147483647i, -33144i)), ~vec4<i32>(-1i, -1i, 0i, 1i)));
    return 36532i;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(~vec4<i32>(firstTrailingBit(1i), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -11455i, 51658i) >> (vec4<u32>(1u, 4294967295u, u_input.c, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -8717i, 13142i, 67494i)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-163f)), -628f)))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(select(37343u, u_input.b.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.b.x), vec3<u32>(5933u, 45714u, 1403u)), abs(1u)), ~(vec3<u32>(30714u, u_input.b.x, u_input.c) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))));
    let var_1 = 430f;
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(func_2(Struct_2(-1049f)), -var_0.a.x), -2147483647i, var_0.a.x, ~var_0.a.x);
    let var_3 = -2147483647i;
    var var_4 = Struct_1(~(~var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -469f) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -141f))), _wgslsmith_sub_u32(reverseBits(~(~u_input.a)), ~1u));
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1143f - -407f) * -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 1019f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(215f, 1000f))) + 217f)));
    var var_1 = 2147483647i;
    var_1 = reverseBits(-func_1());
    let var_2 = vec4<bool>(all(select(vec4<bool>(true, false, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(false, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))), false, all(!vec2<bool>(any(vec4<bool>(false, true, false, true)), true)), true & ((_wgslsmith_f_op_f32(1300f - var_0.x) >= _wgslsmith_f_op_f32(ceil(-804f))) & !any(vec4<bool>(false, false, true, false))));
    let var_3 = i32(-1i) * -(i32(-1i) * -_wgslsmith_div_i32(30839i, 2147483647i));
    var var_4 = all(!select(var_2, vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x))) | ((var_0.x > var_0.x) & var_2.x);
    var var_5 = select(vec2<bool>(!var_2.x, true && !all(vec4<bool>(var_2.x, var_2.x, false, true))), !vec2<bool>(false & var_2.x, true), vec2<bool>(!(u_input.b.x >= _wgslsmith_div_u32(u_input.a, 1u)), any(var_2)));
    var var_6 = !var_2.x;
    var var_7 = abs(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), ~(countOneBits(vec3<i32>(var_3, var_3, -2147483647i)) >> (~vec3<u32>(51647u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) & vec3<i32>(min(min(var_3, var_3), ~(-42984i)), func_1(), -14991i), -(vec2<i32>(var_3, -26727i) << (u_input.b % vec2<u32>(32u))), ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(5154u, 85571u), vec2<u32>(u_input.b.x, u_input.b.x)), min(u_input.b.x, ~u_input.b.x)));
}

