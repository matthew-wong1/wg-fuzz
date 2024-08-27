struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = Struct_1(vec2<u32>(~1u, _wgslsmith_sub_u32(~1u, ~24374u)) >> (reverseBits(~vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u)));
    var var_1 = select(vec4<bool>(var_0.a.x != 34023u, all(select(!vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(false, arg_2, true), vec3<bool>(false, true, arg_2), arg_2))), (all(vec2<bool>(arg_2, false)) || true) && false, any(vec4<bool>(arg_2, all(vec2<bool>(arg_2, true)), true, arg_2))), vec4<bool>(false, select(true || select(arg_2, arg_2, arg_2), true, all(!vec2<bool>(false, arg_2))), 1032f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(119f * -299f))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, u_input.a, 2147483647i, -16327i), vec4<i32>(arg_1, 2147483647i, -56535i, -2147483647i)) <= _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_mod_i32(u_input.a, 6667i))), any(select(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), !arg_2), vec3<bool>(!arg_2, false && arg_2, arg_2), vec3<bool>(all(vec2<bool>(arg_2, arg_2)), arg_2, 1u > arg_0))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_mult_u32(~min(reverseBits(~0u), ~select(41093u, arg_0, arg_2)), 0u);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-880f, -972f, arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f + -726f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1907f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2415f), 387f, true))));
    return var_4;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = 30254i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(step(-686f, 885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2057f, 948f), _wgslsmith_f_op_f32(func_3(4294967295u, u_input.a, true))))), -604f));
    let var_2 = Struct_4((vec3<i32>(u_input.a, u_input.a, min(0i, -2147483647i)) | ~firstTrailingBit(vec3<i32>(u_input.a, -84081i, u_input.a))) << (_wgslsmith_sub_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(50321u, 4294967295u, 13482u))), ~vec3<u32>(0u, 39379u, 4294967295u) | firstTrailingBit(vec3<u32>(0u, 14562u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1390f - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, var_1.x))), var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-571f + 894f) - _wgslsmith_f_op_f32(var_1.x + 351f)))), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(24542u, 1u), vec2<u32>(0u, 11935u))), max(_wgslsmith_div_u32(reverseBits(32910u), 1u), min(44373u, _wgslsmith_add_u32(40730u, 82640u)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(722f * 809f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(239f))))));
    return Struct_1(min(~vec2<u32>(var_2.e >> (var_2.e % 32u), var_2.e ^ 4294967295u), vec2<u32>(max(var_2.e | var_2.e, _wgslsmith_dot_vec3_u32(vec3<u32>(27146u, var_2.e, var_2.e), vec3<u32>(44996u, var_2.e, var_2.e))), ~16577u)));
}

fn func_1() -> StorageBuffer {
    var var_0 = 827f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f - -456f) + -1051f)))));
    let var_1 = func_2();
    let var_2 = func_2();
    var var_3 = any(vec2<bool>(true, all(vec4<bool>(false, false, false, true)) | true));
    return StorageBuffer(u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2270f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(655f - -515f)))), _wgslsmith_f_op_f32(step(1192f, -190f)))), reverseBits(-min(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), ~vec4<i32>(u_input.a, 10574i, u_input.a, 0i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1408f * 229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(trunc(480f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(select(-727f, _wgslsmith_f_op_f32(func_3(1u, -u_input.a, true)), any(vec2<bool>(true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

