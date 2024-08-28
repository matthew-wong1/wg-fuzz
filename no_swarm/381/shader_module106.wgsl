struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: f32) -> bool {
    global0 = _wgslsmith_dot_vec4_u32(arg_2, reverseBits(min(max(arg_2, _wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_2.x, u_input.e, u_input.d, arg_1.x))), min(~arg_2, vec4<u32>(u_input.e, 66521u, 68765u, 0u)))));
    global0 = 54795u;
    global0 = ~max(35663u, 13124u);
    let var_0 = !(!(~(-2193i) < u_input.c));
    global0 = arg_2.x;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = !arg_0;
    global0 = _wgslsmith_clamp_u32(~28207u, _wgslsmith_mod_u32(~(~(~u_input.a)), u_input.e), 4294967295u);
    var var_1 = u_input.c;
    var var_2 = arg_1;
    var_2 = arg_1;
    return !vec4<bool>(false, any(vec3<bool>(all(arg_0), true, arg_0.x && arg_0.x)), !(u_input.c < reverseBits(-913i)), arg_0.x);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    var var_0 = func_4(vec2<bool>(select(func_3(vec3<i32>(u_input.c, -1i, u_input.c) << (vec3<u32>(u_input.b, 54873u, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.d, u_input.b, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 51864u, u_input.e), vec4<u32>(35568u, 4294967295u, u_input.b, u_input.b)), -891f), any(vec2<bool>(false, true)), select(true, false, all(vec3<bool>(true, false, false)))), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true))), Struct_1(vec2<u32>(min(u_input.e, ~4294967295u), ~u_input.b)));
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-399f))) >= 969f, false, 1i >= arg_0, any(vec4<bool>(any(var_0.yzw), true, any(vec2<bool>(var_0.x, var_0.x)), all(vec2<bool>(var_0.x, false)))) || true);
    global0 = ~(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~u_input.a, u_input.a), 50323u) | 1u);
    let var_1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -17281i, -16401i, arg_0), vec4<i32>(arg_1, u_input.c, arg_1, 2147483647i)), -firstLeadingBit(2147483647i), 0i), _wgslsmith_mult_vec3_i32((vec3<i32>(arg_0, -2147483647i, u_input.c) & vec3<i32>(arg_0, 2147483647i, -42801i)) | vec3<i32>(arg_0, 3403i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-37282i, arg_1, -21886i), vec3<i32>(-5040i, 2147483647i, arg_0))));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_div_u32(~(u_input.d << (u_input.a % 32u)), 4294967295u), u_input.d));
    return ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36716u, 0u, 1u), vec4<u32>(41365u, var_2.a.x, u_input.e, u_input.b)), ~(vec4<u32>(u_input.b, 0u, 0u, u_input.a) ^ vec4<u32>(6413u, u_input.d, u_input.e, 0u)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.a.x, u_input.e, 1u, var_2.a.x), vec4<u32>(var_2.a.x, 26727u, 4294967295u, var_2.a.x)), ~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.e))) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(23220u, 36211u, var_2.a.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(134190u, 0u, 4364u, var_2.a.x), vec4<u32>(var_2.a.x, u_input.d, u_input.a, 1u)) << ((vec4<u32>(31133u, var_2.a.x, var_2.a.x, 28801u) << (vec4<u32>(u_input.b, var_2.a.x, var_2.a.x, var_2.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(~firstLeadingBit(vec4<u32>(u_input.a, 8171u, u_input.d, 69879u))), _wgslsmith_clamp_vec4_u32(func_2(-2147483647i, u_input.c) ^ ~vec4<u32>(u_input.e, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.e | 4294967295u, min(u_input.a, u_input.a), u_input.b, 0u), _wgslsmith_add_vec4_u32(max(vec4<u32>(1u, u_input.e, 4294967295u, 4294967295u), vec4<u32>(6459u, u_input.a, u_input.e, 96563u)), abs(vec4<u32>(1u, 1u, 1u, 91726u))))), vec4<u32>(u_input.d, 1u, u_input.d, u_input.b));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 1i, select(u_input.c, -75560i, true)), vec3<i32>(-1i, u_input.c & u_input.c, u_input.c) ^ reverseBits(-vec3<i32>(-20730i, u_input.c, -60740i))));
    let var_2 = u_input.d;
    var_0 = ~(~(~select(vec4<u32>(u_input.b, 43721u, 4294967295u, u_input.d), vec4<u32>(4294967295u, 102711u, u_input.a, u_input.e), vec4<bool>(false, false, true, false))) << (vec4<u32>(func_2(var_1.x ^ u_input.c, -1i).x, ~u_input.d, ~firstLeadingBit(4294967295u), _wgslsmith_add_u32(38135u, 1u)) % vec4<u32>(32u)));
    global0 = 6265u | select(_wgslsmith_mod_u32(max(max(var_2, 4294967295u), u_input.a), _wgslsmith_mod_u32(u_input.b << (74071u % 32u), u_input.b)), var_0.x, true);
    return Struct_1(~var_0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(u_input.b & ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 43750u, 0u), vec3<u32>(1u, 58938u, u_input.b)) & ~20814u));
    var var_0 = vec2<bool>(select(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false)), ~u_input.c < -38907i) == true, -27699i < (_wgslsmith_mult_i32(u_input.c, ~1i) | u_input.c));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1465f, vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(1011f, 149f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1433f, -757f))), _wgslsmith_f_op_f32(abs(-1293f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(508f)), -855f)) - 1f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -445f, 306f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1020f, 634f, 402f) * vec3<f32>(1389f, 2081f, 584f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2017f, 2133f, -747f)))))))));
}

