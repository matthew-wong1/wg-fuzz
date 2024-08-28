struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -327f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), 1000f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-194f, arg_0.x), _wgslsmith_f_op_f32(floor(arg_1))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(463f, arg_0.x)));
    let var_1 = (reverseBits(~vec3<i32>(-1i, u_input.a.x, -1i) & vec3<i32>(u_input.a.x, -20922i, 2147483647i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(10008u, ~4294967295u, 0u), ~abs(vec3<u32>(37809u, 8765u, 4294967295u))) % vec3<u32>(32u))) ^ ~vec3<i32>(-61181i, ~u_input.a.x | u_input.a.x, u_input.a.x);
    global0 = _wgslsmith_f_op_f32(arg_1 * arg_0.x);
    return _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, -_wgslsmith_sub_i32(var_1.x, 0i)) | (((u_input.a.x >> (4294967295u % 32u)) ^ _wgslsmith_div_i32(u_input.a.x, -34809i)) ^ u_input.a.x), u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-9682i, _wgslsmith_add_i32(min(u_input.a.x, 1i), -1i), _wgslsmith_mult_i32((-28924i & u_input.a.x) & firstLeadingBit(-12833i), 2147483647i), -_wgslsmith_clamp_i32(u_input.a.x, ~2147483647i, 1i)), vec4<i32>(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, -187f, -644f, arg_2.a), vec4<f32>(1171f, 267f, arg_2.a, arg_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, arg_2.a, -122f) + vec4<f32>(-1129f, -1821f, arg_2.a, arg_2.a))), arg_2.a), ~(-36819i), ~min(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(min(func_3(vec4<f32>(303f, arg_2.a, 269f, arg_2.a), arg_2.a), u_input.a.x >> (0u % 32u)), _wgslsmith_sub_i32(u_input.a.x, countOneBits(1i)))));
    global0 = _wgslsmith_f_op_f32(-arg_2.a);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a + 2001f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(trunc(1000f))), arg_2.a, !select(false, false, true))))));
    var var_1 = vec4<bool>(all(!(!vec3<bool>(true, arg_1, true))) && true, arg_1, true, true);
    let var_2 = vec2<i32>(func_3(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1192f)), _wgslsmith_f_op_f32(f32(-1f) * -572f))), arg_2.a, _wgslsmith_div_f32(arg_2.a, 390f), _wgslsmith_f_op_f32(arg_2.a + -1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1038f - 164f)) + -627f)), 38434i);
    return var_1.zx;
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = 57884u;
    var var_1 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), func_2(true, false, Struct_2(arg_0.x)))), true, !((-11484i | u_input.a.x) != u_input.a.x));
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_div_u32(abs(select(0u, 98700u, true)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 49373u), vec2<u32>(23643u, 37316u)))), 4294967295u, firstLeadingBit(~abs(53969u))), -276f);
    var_2 = Struct_1(_wgslsmith_mult_vec3_u32(~var_2.a, var_2.a), _wgslsmith_f_op_f32(-505f + var_2.b));
    var_1 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, false, false), vec3<bool>(false, true, var_1.x), true), any(vec4<bool>(true, false, true, var_1.x))), vec3<bool>(any(vec2<bool>(var_1.x, false)), var_1.x, true), false), vec3<bool>(u_input.a.x > firstTrailingBit(u_input.a.x), all(var_1.xz) && true, !var_1.x), !all(vec2<bool>(var_1.x, false))), select(vec3<bool>(any(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true, true), select(select(vec3<bool>(false, false, true), !vec3<bool>(true, true, var_1.x), arg_0.x >= arg_0.x), !(!vec3<bool>(true, var_1.x, true)), var_1.x), select(vec3<bool>(any(var_1.yz), var_1.x, !var_1.x), vec3<bool>(false, !var_1.x, any(var_1.zx)), false)));
    return !select(select(select(!vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, true, !var_1.x, var_1.x), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), !var_1.x)), func_2(true, !var_1.x, Struct_2(-346f)).x && false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1529f)), _wgslsmith_div_f32(618f, -1857f))))));
    let var_0 = !func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(615f, -1192f, -1000f, -419f), vec4<f32>(594f, 1000f, -1662f, -888f))))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -903f, 1000f, 1121f), vec4<f32>(1470f, 1000f, -1074f, -1000f)))));
    let var_1 = 421f;
    global0 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1056f, var_1, -1358f, -1701f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -407f, 971f, var_1)), !var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, var_1, var_1, 1291f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 488f, 374f, -674f)))))))).x;
    let var_3 = Struct_2(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1)));
    global0 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2737f);
}

