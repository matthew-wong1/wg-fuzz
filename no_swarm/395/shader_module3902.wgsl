struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(abs(vec2<u32>(0u, ~19472u)), true, 666f);
    let var_1 = Struct_1(vec2<u32>(var_0.a.x, _wgslsmith_clamp_u32(arg_0, 32756u, select(13245u, arg_1.a.x, false) | ~4294967295u)), !arg_1.b, arg_1.c);
    let var_2 = firstLeadingBit(abs(-(~reverseBits(vec4<i32>(-10802i, u_input.a.x, 18734i, 12761i)))));
    var var_3 = var_0.c;
    var var_4 = var_1;
    return var_1.b;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, arg_1, u_input.c, -2147483647i), vec4<i32>(49080i, 0i, u_input.e, u_input.c)), vec4<i32>(2147483647i, ~arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), vec2<i32>(1i, arg_1)), arg_1)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -30150i, -2147483647i, 2147483647i) << (vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 0i, arg_1, arg_1)), vec4<i32>(0i, arg_1, arg_1, ~arg_1), false));
    var_0 = vec4<i32>(var_0.x, arg_1, var_0.x, arg_1);
    var var_1 = select(select(select(!vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(u_input.a.x >= -1i, arg_0.b, true, arg_0.b)), vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-1575f + 1631f) >= _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x) < _wgslsmith_div_u32(35387u, 1u), true), vec4<bool>(!all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), false, !(arg_2.x >= -284f), true)), vec4<bool>(select(all(vec2<bool>(arg_0.b, true)), false, arg_0.b) | (!arg_0.b & all(vec3<bool>(false, arg_0.b, false))), ~select(1i, arg_1, true) <= -6492i, func_2(), arg_0.b), all(select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.c != 270f, 1043f >= arg_2.x, !arg_0.b), !arg_0.b)));
    var_1 = select(vec4<bool>(false, arg_0.b, true != all(var_1.zxw), !(!(arg_0.a.x == 0u))), vec4<bool>(func_2(), arg_0.a.x < ~1u, arg_0.b, any(vec4<bool>(false | arg_0.b, any(vec4<bool>(var_1.x, false, arg_0.b, true)), true, true))), var_1.x);
    let var_2 = arg_0;
    return vec3<bool>(!any(var_1.zzw), func_2(), select(!(!func_3(var_2.a.x, arg_0)), true, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, any(select(func_1(Struct_1(vec2<u32>(0u, 1u), false, -884f), 17003i, vec3<f32>(-617f, 1000f, 832f)), vec3<bool>(true, true, false), false)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), u_input.c <= 2147483647i))), select(vec3<bool>(false, !(u_input.c <= -12815i), true), vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(false, false, false, false)), true, select(false, false, false) & true)), all(vec4<bool>(true, true, u_input.e < _wgslsmith_dot_vec2_i32(vec2<i32>(8418i, u_input.c), u_input.a.zz), func_1(Struct_1(vec2<u32>(1u, 15279u), false, 529f), -u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 774f, -1902f))).x)));
    var var_1 = Struct_1(vec2<u32>(34961u, 1u), (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1932f - -1423f), 365f, false)) <= _wgslsmith_f_op_f32(516f * 384f)) | (((var_0.x | var_0.x) || all(vec4<bool>(false, var_0.x, var_0.x, false))) & true), -1400f);
    var var_2 = vec3<u32>(~(~(~var_1.a.x)), var_1.a.x, _wgslsmith_add_u32(var_1.a.x, _wgslsmith_clamp_u32(var_1.a.x, ~select(var_1.a.x, var_1.a.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 707u) ^ vec3<u32>(4181u, 22260u, var_1.a.x), firstTrailingBit(vec3<u32>(1u, var_1.a.x, 0u))))));
    var var_3 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(var_2.x, var_2.x)), var_2.zy), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u) << (var_1.a % vec2<u32>(32u)), ~var_1.a)), any(var_0.xy), var_1.c);
    let var_4 = -u_input.b;
    var var_5 = 1i;
    var var_6 = 1578f;
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1057f, 905f, 181f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, var_3.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, -1983f, var_3.c)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c - -1137f) - _wgslsmith_f_op_f32(step(var_3.c, var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - 1f))));
}

