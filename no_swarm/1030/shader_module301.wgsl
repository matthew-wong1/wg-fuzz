struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1654f - -197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f + 1394f))))) <= _wgslsmith_f_op_f32(floor(109f));
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(1u, u_input.b, any(select(vec3<bool>(true, any(vec2<bool>(false, false)), func_3()), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)), vec4<f32>(_wgslsmith_f_op_f32(max(1f, 1f)), 807f, 1024f, 1000f));
    var var_1 = _wgslsmith_f_op_f32(select(289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f))))), false));
    var var_2 = countOneBits(~(42764u | ~var_0.a)) | abs(var_0.a);
    let var_3 = Struct_1(u_input.e, ~u_input.d, any(!vec2<bool>(!var_0.c, u_input.c != u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1529f, -444f, 486f, var_0.d.x), var_0.d, vec4<bool>(false, false, var_0.c, false)))))))));
    return -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-16890i, 2147483647i, u_input.a), vec3<i32>(u_input.c, u_input.c, -2147483647i), var_3.c), ~vec3<i32>(u_input.a, 1i, 1i)), ~select(vec3<i32>(u_input.c, -2147483647i, 31873i), vec3<i32>(10035i, u_input.c, u_input.a), var_0.c)), 53155i, -(~(~u_input.c)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = -1i;
    var_0 = -firstTrailingBit(u_input.a);
    var_0 = ~_wgslsmith_clamp_i32(u_input.c, func_2(), u_input.c << (4294967295u % 32u));
    var var_1 = _wgslsmith_mod_i32(u_input.a, ~33413i);
    var var_2 = Struct_1(_wgslsmith_add_u32(u_input.b ^ (u_input.e >> (u_input.e % 32u)), u_input.d), 1u, all(select(!select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), vec4<bool>(true && arg_0, true, arg_0, arg_0), select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, true), arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(262f))))), _wgslsmith_f_op_f32(ceil(845f)), -1137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(199f))))));
    return Struct_1(~4294967295u, var_2.b, any(!(!vec3<bool>(var_2.c, var_2.c, false))), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(u_input.d, u_input.b), (~u_input.b & u_input.b) ^ ~countOneBits(u_input.b), ~u_input.e, ~4026u);
    let var_1 = Struct_1(u_input.d, 0u, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(566f, 2408f, -1825f, 1276f) + vec4<f32>(1000f, 289f, -1278f, 952f))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = func_1(var_1.c);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.yz ^ vec2<u32>(_wgslsmith_mod_u32(var_3.b, u_input.e), max(4294967295u, var_4.b))), 1u | _wgslsmith_div_u32(firstLeadingBit(23484u), ~(var_3.b & 4294967295u)), ~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1977f, -690f))), ~abs(var_0.zz) << (_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(69968u, var_1.b), vec2<u32>(var_0.x, var_3.b)), ~vec2<u32>(31163u, var_3.b)) % vec2<u32>(32u)));
}

