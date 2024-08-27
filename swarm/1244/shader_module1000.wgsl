struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = vec3<i32>(-(i32(-1i) * -u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c)), -vec3<i32>(u_input.c, u_input.c, -2147483647i)), 10712i) | countOneBits(vec3<i32>(_wgslsmith_sub_i32(~13013i, max(u_input.c, -8008i)), -55570i, -2147483647i));
    var var_1 = arg_1;
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.d.x, 0u), select(u_input.b, 1u, true)), ~u_input.d >> (_wgslsmith_div_vec3_u32(u_input.d, u_input.d) % vec3<u32>(32u))), _wgslsmith_div_u32(~(u_input.b | u_input.a.x), _wgslsmith_clamp_u32(~u_input.d.x, ~u_input.d.x, 9722u))), u_input.d.x);
    let var_3 = 35368i;
    var_1 = arg_1;
    return select(!select(select(select(vec2<bool>(false, arg_1.a.x), arg_1.a, arg_1.a), select(var_1.a, var_1.a, var_1.a), select(arg_1.a, var_1.a, false)), vec2<bool>(true, true), any(select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(false, arg_1.a.x, var_1.a.x), true))), select(select(vec2<bool>(true, true), select(arg_1.a, vec2<bool>(false, arg_1.a.x), arg_1.a.x), false), select(arg_1.a, !select(vec2<bool>(false, var_1.a.x), arg_1.a, arg_1.a.x), select(!vec2<bool>(arg_1.a.x, arg_1.a.x), var_1.a, arg_1.a)), var_1.a), !arg_1.a.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f - 367f) * -1485f)), -268f));
    var_0 = Struct_2(-146f);
    var_0 = Struct_2(var_0.a);
    var var_1 = Struct_1(!func_3(Struct_2(_wgslsmith_f_op_f32(round(-1297f))), Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 921f, -1352f, var_0.a)))));
    return Struct_1(vec2<bool>(false, var_1.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> vec3<u32> {
    var var_0 = 27918u;
    var_0 = ~(~21046u);
    var_0 = 81835u;
    let var_1 = func_2(~(0u ^ u_input.b));
    var var_2 = select(select(vec3<bool>(!var_1.a.x, any(vec3<bool>(true, var_1.a.x, true)), any(!vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x))), !select(vec3<bool>(false, var_1.a.x, true), !vec3<bool>(true, false, var_1.a.x), func_2(4294967295u).a.x), true), select(select(select(select(vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(var_1.a.x, false, true), vec3<bool>(true, false, var_1.a.x)), !vec3<bool>(var_1.a.x, true, var_1.a.x), true), select(vec3<bool>(false, var_1.a.x, var_1.a.x), !vec3<bool>(false, var_1.a.x, false), select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, var_1.a.x, var_1.a.x))), select(select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(false, true, var_1.a.x), var_1.a.x)), select(!(!vec3<bool>(var_1.a.x, var_1.a.x, false)), select(vec3<bool>(var_1.a.x, false, var_1.a.x), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(false, false, false), vec3<bool>(true, var_1.a.x, false))), true), false && !(!var_1.a.x)), true);
    return max(~select(vec3<u32>(16783u, 0u, 4294967295u), ~vec3<u32>(55254u, 4294967295u, u_input.a.x), !var_2.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 11432u), _wgslsmith_mod_u32(u_input.a.x, u_input.d.x)), u_input.d | vec3<u32>(4294967295u, 4294967295u, u_input.b), abs(firstLeadingBit(vec3<u32>(u_input.b, 1u, u_input.d.x))))) << (~abs(~(~u_input.d)) % vec3<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = func_2(u_input.b);
    var_0 = Struct_1(func_2(~_wgslsmith_mod_u32(arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 15499u, u_input.b), vec4<u32>(16347u, u_input.d.x, 48172u, u_input.b)))).a);
    var_0 = Struct_1(!var_0.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(-1000f));
    var_0 = func_2(~(1u | func_1(Struct_2(546f), vec2<i32>(arg_0, 1i) | vec2<i32>(u_input.c, -75915i), _wgslsmith_mult_i32(u_input.c, 1i)).x));
    return vec2<f32>(-110f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f) + arg_1.x), _wgslsmith_f_op_f32(1000f * 737f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.c > u_input.c) | false;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(740f + -144f), _wgslsmith_f_op_f32(f32(-1f) * -609f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-806f, 1246f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1506f, -479f) - vec2<f32>(-2355f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-423f, 314f)))))))));
    var_0 = true;
    let var_2 = _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(36925i, u_input.c)), firstTrailingBit(~vec2<i32>(-1i, u_input.c))), -(firstTrailingBit(vec2<i32>(u_input.c, -6738i)) & (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -25234i), vec2<i32>(u_input.c, u_input.c)) | vec2<i32>(-50025i, 1i))));
    let var_3 = 36406u;
    var_1 = vec2<f32>(-336f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, 15436i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 0i, -2147483647i), vec3<i32>(var_2.x, 5305i, 0i))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, 2758f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, var_1.x)))), func_1(Struct_2(var_1.x), abs(var_2), select(var_2.x, var_2.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(460f, -750f, true)), _wgslsmith_f_op_f32(var_1.x - 1017f))) * 1075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(817f)) * -884f))), ~u_input.c, var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1603f) - -242f) * var_1.x))));
}

