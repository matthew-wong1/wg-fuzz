struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = vec4<u32>(~68368u, abs(_wgslsmith_mult_u32(u_input.a.x << (4294967295u % 32u), firstLeadingBit(arg_3)) & ~min(4294967295u, u_input.a.x)), ~reverseBits(~(arg_3 & 71013u)), max(arg_3, u_input.a.x));
    let var_1 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a, arg_1.a), vec2<i32>(arg_1.a, -2147483647i) >> (vec2<u32>(0u, 49644u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a, arg_1.a), vec2<i32>(540i, arg_2.a)) << (~vec2<u32>(arg_3, 0u) % vec2<u32>(32u)), select(!arg_0.xz, vec2<bool>(true, true), !vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-1180i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(2147483647i, 1i))), _wgslsmith_add_vec2_i32(-vec2<i32>(arg_1.a, arg_2.a), abs(vec2<i32>(arg_2.a, -1i))))) & reverseBits(select(_wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, 0i), vec2<i32>(arg_1.a, 41633i) << (vec2<u32>(var_0.x, 3128u) % vec2<u32>(32u))), firstLeadingBit(~vec2<i32>(arg_2.a, arg_1.a)), arg_1.a > ~arg_1.a));
    var_0 = vec4<u32>(reverseBits(~(~_wgslsmith_add_u32(arg_3, 81434u))), ~reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(50855u, 15443u, 21221u), ~var_0.zyx)), var_0.x, 0u);
    var var_2 = Struct_1(countOneBits(arg_2.a));
    var_0 = _wgslsmith_div_vec4_u32(~(~u_input.b) << (~u_input.b % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_0.x, ~select(40738u, arg_3, arg_0.x), ~var_0.x << (_wgslsmith_mod_u32(u_input.b.x, 0u) % 32u), ~(1u | var_0.x))));
    return vec2<bool>(all(select(!select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, true), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, true, false, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), false), vec4<bool>(true, arg_0.x, select(true, arg_0.x, arg_0.x), true))), !(false | arg_0.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_f_op_f32(f32(-1f) * -183f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1318f), _wgslsmith_f_op_f32(ceil(285f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, -1153f, -1328f)), vec3<f32>(1f, 1f, 1f)) * vec3<f32>(1f, 1f, 1f))));
    let var_1 = Struct_1(72669i);
    let var_2 = Struct_1(-abs(2147483647i) | (arg_1.a & (-1i >> (1u % 32u))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2404f, -1000f, -183f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -427f, -148f, -1032f))))))), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, -364f)), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(trunc(var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-334f, var_3.x, all(vec3<bool>(true, arg_2.x, arg_2.x)))))), var_0.x)));
    return !arg_2;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    var var_0 = !func_4(arg_0, Struct_1(arg_1.a), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), all(func_3(vec3<bool>(true, false, true), arg_1, Struct_1(arg_1.a), 4294967295u)), func_3(vec3<bool>(true, true, true), Struct_1(arg_1.a), Struct_1(49086i), arg_0).x));
    var_0 = !(!vec3<bool>(func_3(vec3<bool>(var_0.x, var_0.x, false), Struct_1(arg_1.a), arg_1, firstTrailingBit(38806u)).x, arg_0 >= arg_0, var_0.x));
    var_0 = vec3<bool>(var_0.x, all(select(func_4(~u_input.b.x, arg_1, !vec3<bool>(var_0.x, false, true)).xy, select(var_0.xy, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), !var_0.x), vec2<bool>(true, true))), var_0.x);
    var var_1 = arg_1;
    let var_2 = 52592u;
    return ~(arg_1.a & 36874i);
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = countOneBits(25699i);
    let var_1 = 1u;
    var var_2 = vec4<u32>(~(~_wgslsmith_mod_u32(var_1, 24326u)), abs(2083u), ~31510u << (var_1 % 32u), u_input.a.x);
    var_2 = vec4<u32>(abs(_wgslsmith_mod_u32(~(var_1 ^ var_1), _wgslsmith_div_u32(reverseBits(u_input.b.x), _wgslsmith_clamp_u32(4294967295u, var_2.x, var_1)))), abs(0u), countOneBits(4294967295u), min(~u_input.b.x, ~var_2.x));
    var_2 = vec4<u32>(~31119u, ~_wgslsmith_clamp_u32(~17910u, var_2.x, var_1), var_2.x, 0u);
    return Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, arg_1) << (~vec3<u32>(4294967295u, 69899u, 4185u) % vec3<u32>(32u)), reverseBits(-vec3<i32>(0i, arg_1, arg_1))));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = func_5(false, _wgslsmith_mod_i32(-(~func_2(1u, Struct_1(-2147483647i), vec3<f32>(194f, arg_1, 486f))), 1i));
    var var_1 = ~7732u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1f), -138f, _wgslsmith_f_op_f32(sign(-1016f)));
    var var_3 = var_0;
    var_1 = countOneBits(_wgslsmith_div_u32(1u, u_input.a.x));
    return Struct_1(firstLeadingBit(_wgslsmith_mult_i32(~firstLeadingBit(-34899i), ~(-2381i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(964f + -153f), _wgslsmith_f_op_f32(max(-234f, -871f)))))), 849f);
    let var_1 = vec4<u32>(u_input.b.x, 11520u, _wgslsmith_div_u32(~u_input.b.x, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.b.x, 53378u), u_input.b, vec4<u32>(27994u, u_input.b.x, u_input.a.x, 0u)))), _wgslsmith_add_u32(1u, u_input.a.x));
    let var_2 = ~select(countOneBits(vec2<u32>(1448u, 1u)), min(vec2<u32>(~var_1.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u)), u_input.b.wx), all(vec2<bool>(true, true)));
    let var_3 = Struct_1(var_0.a);
    let var_4 = func_3(vec3<bool>(true, var_2.x <= var_2.x, !func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 34227u, var_2.x), u_input.b.zyz), func_1(169f, -718f), vec3<bool>(true, true, true)).x), func_5(true, 6431i), Struct_1(-var_3.a), _wgslsmith_dot_vec3_u32(var_1.ywy, vec3<u32>(1u, 93222u, _wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(4294967295u, u_input.a.x, var_1.x), firstTrailingBit(u_input.b.ywx))))).x;
    let var_5 = 29817u;
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_i32(abs(vec2<i32>(var_0.a, -16319i)), ~vec2<i32>(36747i, var_0.a)), min(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.a, -2147483647i), vec2<i32>(var_0.a, -4795i)), select(-vec2<i32>(1i, var_3.a), abs(vec2<i32>(1i, var_3.a)), false)), !select(!vec2<bool>(var_6, false), !vec2<bool>(false, var_6), !vec2<bool>(var_4, var_4))));
}

