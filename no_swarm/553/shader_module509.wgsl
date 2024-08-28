struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = -6918i;
    let var_2 = arg_1.wzz;
    var var_3 = firstLeadingBit(_wgslsmith_add_i32(u_input.c, arg_0.b));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-1022f, global0.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -678f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, global0.x) - vec2<f32>(global0.x, -327f))))))));
    return max(~(~arg_1), vec4<u32>(arg_1.x >> (4294967295u % 32u), ~u_input.a, 59867u, ~(~(59374u & var_2.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = max(1u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(func_3(arg_1, vec4<u32>(arg_0.x, arg_0.x, u_input.a, 0u)), vec4<u32>(71u, arg_0.x, 4294967295u, arg_1.a) ^ vec4<u32>(u_input.a, arg_0.x, 1u, 20411u))), ~vec4<u32>(_wgslsmith_mod_u32(92725u, arg_0.x), arg_0.x | 42918u, _wgslsmith_dot_vec3_u32(vec3<u32>(21280u, u_input.a, 22836u), vec3<u32>(48975u, 0u, 12338u)), 41501u ^ u_input.a)));
    let var_1 = Struct_1(~(~arg_0.x), 2147483647i);
    var var_2 = Struct_1(1u << (((u_input.a << (min(var_1.a, 1u) % 32u)) ^ ~0u) % 32u), _wgslsmith_add_i32(reverseBits(firstTrailingBit(~49611i)), arg_2.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 305f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, 739f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1446f, global0.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-129f, -1783f), vec2<f32>(global0.x, global0.x))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(~(~vec2<u32>(4294967295u, u_input.a)), arg_0.d, -min(vec4<i32>(-13277i, arg_0.d.b, u_input.b, u_input.b), vec4<i32>(1i, -2147483647i, arg_0.d.b, 0i)), select(vec4<i32>(u_input.b, 2147483647i, u_input.c, -2147483647i), ~vec4<i32>(arg_0.b.b, arg_0.d.b, arg_0.d.b, -1i), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(663f, arg_0.c) + arg_1), false)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, global0.x), arg_1)) * arg_1))) + arg_1));
    let var_0 = vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, select(true, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_1, vec2<f32>(arg_0.c, 451f), false)), _wgslsmith_f_op_vec2_f32(func_2(arg_0.a.yw, arg_0.d, vec4<i32>(-19262i, u_input.c, -2147483647i, 0i), vec4<i32>(0i, 23495i, arg_0.d.b, -52330i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, 2082f)))))), arg_1));
    var var_1 = ~(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.b, arg_0.b.b, -2147483647i) & vec3<i32>(u_input.c, u_input.b, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -4186i, 10026i), vec3<i32>(-1i, 2147483647i, arg_0.e))), -_wgslsmith_mult_i32(-2147483647i, u_input.c), abs(-1i), -2147483647i));
    let var_2 = var_1.yzz;
    return Struct_1(~arg_0.b.a, arg_0.e);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1648f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - 1238f)))));
    var var_0 = global0.x;
    var var_1 = arg_1.d.b >> ((19890u & ~reverseBits(arg_1.a.x)) % 32u);
    var var_2 = arg_1.b;
    return !(!select(vec2<bool>(true, false), vec2<bool>(true, true), !select(false, false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_4(~vec2<u32>(u_input.a, 11786u) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 37289u), vec2<u32>(11069u, 4294967295u)), Struct_2(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) | vec4<u32>(0u, u_input.a, 56229u, 11539u), func_1(Struct_2(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), Struct_1(10232u, u_input.c), -241f, Struct_1(1u, u_input.c), u_input.c), vec2<f32>(-264f, -645f)), 491f, Struct_1(49502u, u_input.c), _wgslsmith_div_i32(-1984i, -1307i)), vec3<i32>(u_input.c, -2147483647i, countOneBits(1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)), vec4<i32>(42598i, u_input.b, 1i, -31815i))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(!(u_input.c != u_input.c), true), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), true);
    let var_1 = Struct_2(~firstTrailingBit(~vec4<u32>(81872u, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(1u, 32857u, 2937u, 17069u)), Struct_1(59360u, ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), Struct_1(u_input.a << (u_input.a % 32u), reverseBits(firstTrailingBit(~(-20715i)))), _wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(37608i, u_input.c, -7650i))), vec3<i32>(u_input.b, _wgslsmith_mod_i32(min(-7577i, -9736i), max(u_input.c, -1i)), ~_wgslsmith_sub_i32(u_input.b, 42i))));
    var var_2 = var_1.a;
    var_2 = vec4<u32>(u_input.a, firstLeadingBit(~var_2.x), u_input.a | _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(var_2.x << (4294967295u % 32u), var_1.b.a)), (_wgslsmith_mult_u32(91233u & var_2.x, var_1.b.a) << (_wgslsmith_mod_u32(~var_1.a.x, 1u) % 32u)) | func_1(var_1, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.c) + vec2<f32>(-162f, var_1.c))))).a);
    let var_3 = reverseBits(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a, -_wgslsmith_div_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_1.e, 34424i), vec3<i32>(var_1.b.b, var_1.e, u_input.b)), reverseBits(vec3<i32>(15569i, u_input.b, var_1.d.b))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-47538i, var_1.e, var_1.e), vec3<i32>(62854i, 123i, -16115i)), firstLeadingBit(vec3<i32>(1i, var_1.b.b, var_1.b.b)))), var_2.x, var_1.c);
}

