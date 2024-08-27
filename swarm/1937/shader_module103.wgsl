struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    return ~vec3<u32>(_wgslsmith_div_u32(1u, 49549u), u_input.a, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b), 69597u));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a ^ 1u, ~u_input.b, 39065u)), func_3(Struct_1(all(vec4<bool>(true, false, false, false))), Struct_1(false))));
    let var_1 = true;
    var var_2 = Struct_1(true);
    var_2 = Struct_1(all(select(!select(vec2<bool>(false, var_1), vec2<bool>(true, var_2.a), var_1), select(vec2<bool>(false, true), !vec2<bool>(false, var_2.a), select(vec2<bool>(var_2.a, true), vec2<bool>(false, false), var_1)), !all(vec3<bool>(true, true, false)))));
    var var_3 = max(38356u, var_0.x);
    return Struct_1(all(vec2<bool>(var_2.a, var_2.a && var_1)));
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = 790f;
    let var_2 = _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 27398u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 59203u), ~vec2<u32>(u_input.b, 17645u), reverseBits(vec2<u32>(4294967295u, 54064u))))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(1u, 24064u, 11693u) | vec3<u32>(55956u, 4294967295u, u_input.b)), ~(~vec3<u32>(59885u, 3901u, u_input.a))), vec3<u32>(1u >> ((u_input.a ^ u_input.a) % 32u), 8907u, u_input.a)));
    let var_3 = func_2();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -719f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1950f))), all(vec4<bool>(any(vec2<bool>(false, var_0.a)), var_0.a, var_0.a, !var_3.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-645f + 1011f), _wgslsmith_f_op_f32(floor(-788f))))));
    return abs(_wgslsmith_mod_u32(1u, 1u)) >= func_3(func_2(), func_2()).x;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = Struct_1(all(!vec2<bool>(true, all(vec4<bool>(arg_3, arg_2.x, true, arg_2.x)))));
    var var_1 = !vec2<bool>(!any(vec4<bool>(true, false, true, arg_3)), !(!(!arg_3)));
    var var_2 = true;
    let var_3 = Struct_1(true);
    return reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(-71692i, 34534i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -4723i), vec2<i32>(58474i, 7380i)))) | _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(2147483647i, 1i))), min(_wgslsmith_clamp_i32(0i, ~(-1i), ~30349i), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(17911i, _wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1276f, -1158f, 1093f, 473f), vec4<f32>(2423f, -1548f, 172f, 530f))), u_input.a, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), func_1()), ~1i, ~22063i), -42192i << (_wgslsmith_sub_u32(countOneBits(u_input.b), 1u >> (0u % 32u)) % 32u)), -2880i);
    var_0 = ~(~_wgslsmith_sub_i32(min(79206i, func_4(vec4<f32>(111f, -285f, -1965f, 1169f), u_input.b, vec4<bool>(false, true, false, false), true)), firstLeadingBit(_wgslsmith_add_i32(-1i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(1575f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, _wgslsmith_div_f32(1944f, 1405f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1795f, 276f, -404f, 143f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-434f, 1197f) - -817f), _wgslsmith_f_op_f32(-1074f - _wgslsmith_f_op_f32(round(-1018f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1215f, -1228f)), _wgslsmith_f_op_f32(f32(-1f) * -1438f))))));
}

