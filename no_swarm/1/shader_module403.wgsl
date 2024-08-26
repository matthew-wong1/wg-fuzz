struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-33608i, ~u_input.d, -u_input.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1395f, -1106f, 1u <= u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1479f, 828f), _wgslsmith_f_op_f32(max(-679f, 1786f))))), _wgslsmith_f_op_f32(f32(-1f) * -1045f)), -838f, u_input.d != _wgslsmith_add_i32(-(u_input.b >> (28664u % 32u)), _wgslsmith_clamp_i32(u_input.b, -u_input.d, u_input.d ^ u_input.b)), u_input.d);
    var var_1 = u_input.a;
    return vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c, var_0.c), -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-797f, var_0.b.x))))), var_0.c);
}

fn func_3() -> vec4<bool> {
    let var_0 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), select(!vec2<bool>(u_input.a.x >= u_input.a.x, any(vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), false), vec2<bool>(true, true)));
    return vec4<bool>(true, var_0.x, all(!vec2<bool>(any(var_0), false)), !(-13051i == _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-13329i, u_input.b), var_0), vec2<i32>(0i, -2147483647i))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1000f + arg_1.c), -1314f, _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(arg_1.b.x - 1763f)), arg_1.c))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = vec3<bool>(!arg_1.d != true, arg_1.d, any(select(select(func_3(), select(vec4<bool>(arg_1.d, true, arg_1.d, arg_1.d), vec4<bool>(arg_1.d, false, false, true), true), vec4<bool>(false, false, arg_1.d, true)), !vec4<bool>(arg_1.d, false, true, arg_1.d), arg_1.d)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-947f, var_0.x, arg_1.c));
    let var_3 = min(~_wgslsmith_mod_u32(0u, 4294967295u), arg_0);
    var_1 = !select(!func_3().zyx, vec3<bool>(any(vec2<bool>(false, true)), !(var_1.x | false), select(arg_1.e >= 44514i, all(var_1.yy), var_1.x | true)), !(!(!vec3<bool>(arg_1.d, true, arg_1.d))));
    return 164f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 280f, arg_0), vec3<f32>(arg_0, arg_0, -1204f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(750f, arg_0, 501f) - vec3<f32>(1287f, -1458f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1992f, arg_1, 2405f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, arg_1))))));
    var var_1 = Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(min(597f, _wgslsmith_f_op_f32(abs(170f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), false, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, -51430i), ~vec2<i32>(-26498i, 0i)), vec2<i32>(firstLeadingBit(arg_2), i32(-1i) * -1i)), ~(-1i)));
    let var_2 = Struct_1(reverseBits(21129i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1782f), var_0.x, _wgslsmith_f_op_f32(abs(var_0.x))), var_1.d))), var_0.x, u_input.c != (firstLeadingBit(74092u) << (0u % 32u)), _wgslsmith_mult_i32((-32895i & arg_2) << (~_wgslsmith_mod_u32(1u, u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_2, -10330i)) >> (~vec2<u32>(9153u, u_input.c) % vec2<u32>(32u)), vec2<i32>(u_input.b, 61675i))));
    let var_3 = func_3().zw;
    let var_4 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec2<bool>(false, false));
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_1(-2147483647i, vec3<f32>(-931f, 1231f, -1069f), 1038f, true, 2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-770f, 994f) * -525f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * _wgslsmith_f_op_f32(-827f + 405f)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f - 597f))), u_input.b);
    var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(-_wgslsmith_add_i32(63280i, u_input.d), ~firstTrailingBit(var_1.a))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x)))), _wgslsmith_f_op_f32(max(568f, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_div_f32(-109f, var_1.c)))), 24925i).b, _wgslsmith_f_op_f32(-1f), !(!(!var_1.d)), firstTrailingBit(2147483647i & u_input.d));
    var var_2 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.c), 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, select(u_input.c, 4294967295u, true)), ~u_input.a.wwy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mult_i32(0i, firstLeadingBit(-1i)));
}

