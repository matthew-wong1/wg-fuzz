struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(31507u, 0u, 51790u, 48610u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = ~vec4<u32>(reverseBits(4294967295u), select(~35172u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 73235u, u_input.a, 43828u), _wgslsmith_sub_vec4_u32(vec4<u32>(47337u, arg_0.x, 103253u, u_input.a), vec4<u32>(global0.x, u_input.a, u_input.a, global0.x))), all(vec3<bool>(false, false, true))), 1u, ~countOneBits(global0.x));
    global0 = _wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, firstLeadingBit(arg_0.x), arg_0.x, 1u), abs(~abs(vec4<u32>(1u, global0.x, 17500u, u_input.a))) << (firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 15144u), vec4<u32>(4294967295u, 8325u, 45793u, 1u))) % vec4<u32>(32u)));
    let var_0 = Struct_1(_wgslsmith_mod_i32(~(-1i), 8278i), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), _wgslsmith_mult_u32(arg_0.x, ~4294967295u), vec4<i32>(1i, -countOneBits(-2147483647i), -(~1i), max(reverseBits(-44153i), 2147483647i)) << (~(~(vec4<u32>(4294967295u, global0.x, 4294967295u, 4294967295u) ^ vec4<u32>(1u, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = var_0;
    var var_2 = vec4<u32>(firstTrailingBit(0u), u_input.a, var_1.c, arg_0.x);
    return arg_0.x;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_div_f32(182f, _wgslsmith_f_op_f32(arg_1.x * -788f)), _wgslsmith_f_op_f32(step(-354f, arg_1.x)), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -771f, arg_1.x, 657f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2436f, 1414f, arg_1.x, 540f))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1335f)))), _wgslsmith_f_op_f32(-295f + arg_1.x), -438f, arg_1.x) + _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(486f - arg_1.x), arg_1.x))));
    global0 = _wgslsmith_mult_vec4_u32(select(max(~vec4<u32>(0u, 59409u, 26805u, 1u), max(vec4<u32>(4294967295u, 1u, 6054u, arg_0), vec4<u32>(4294967295u, 92580u, global0.x, arg_0))) ^ vec4<u32>(_wgslsmith_sub_u32(global0.x, global0.x), 4294967295u, ~u_input.a, _wgslsmith_dot_vec2_u32(global0.zw, global0.xw)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 53739u, 1u, 0u), abs(vec4<u32>(126837u, u_input.a, u_input.a, 8326u))), vec4<bool>(arg_2, true, true, arg_2)), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 1u, arg_0, 0u), vec4<u32>(43549u, 29825u, u_input.a, arg_0)))));
    let var_1 = Struct_1(min(45462i, _wgslsmith_add_i32(0i, max(_wgslsmith_mult_i32(1i, 0i), select(-2147483647i, -2147483647i, arg_2)))), !vec2<bool>(!any(vec2<bool>(arg_2, true)), false), firstTrailingBit(u_input.a), ~(~vec4<i32>(3481i, countOneBits(-33590i), ~(-16578i), ~7155i)));
    var var_2 = Struct_1(0i, !vec2<bool>(all(vec3<bool>(false, arg_2, false)) != arg_2, arg_2), ~1u, vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.d.yyx, vec3<i32>(var_1.a, -var_1.d.x, firstLeadingBit(var_1.a))), 20919i, -select(_wgslsmith_add_i32(1i, var_1.d.x), -var_1.d.x, false), -862i));
    let var_3 = Struct_1(1i, var_1.b, _wgslsmith_add_u32(u_input.a, 33055u) << (55288u % 32u), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_2.d.x, 1i, var_2.a, -6350i)), vec4<i32>(0i, abs(var_2.d.x), _wgslsmith_mod_i32(var_1.d.x, var_1.d.x) & -1i, var_1.a)));
    return _wgslsmith_mod_vec4_u32(countOneBits(~min(vec4<u32>(var_3.c, var_3.c, var_3.c, var_3.c), vec4<u32>(var_1.c, 111818u, 32933u, var_1.c))), ~max(~(vec4<u32>(var_2.c, var_2.c, 0u, var_1.c) & vec4<u32>(global0.x, var_2.c, 1683u, 5838u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 92186u, 0u), vec4<u32>(53819u, u_input.a, 1u, var_3.c))));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = ~select(reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 33596u, global0.x), global0.xzx), u_input.a, _wgslsmith_clamp_u32(global0.x, 4294967295u, u_input.a), ~4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(vec2<u32>(14071u, u_input.a)), firstTrailingBit(0u), global0.x, u_input.a << (33606u % 32u)), func_3(u_input.a, vec4<f32>(733f, -550f, -1464f, -1392f), false) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 25817u, 0u), vec4<u32>(18356u, global0.x, 4294967295u, u_input.a))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)), true));
    var var_0 = Struct_1(arg_0, !select(vec2<bool>(false, true), vec2<bool>(true, true), true), _wgslsmith_mod_u32(_wgslsmith_div_u32(func_3(global0.x, vec4<f32>(1409f, -244f, 488f, -411f), false).x, 1u), 4294967295u) >> (1u % 32u), -abs(vec4<i32>(_wgslsmith_sub_i32(-34024i, -1i), -1i, firstLeadingBit(arg_0), ~arg_0)));
    let var_1 = var_0.b.x;
    var var_2 = 4294967295u << (u_input.a % 32u);
    return var_0.a >> (u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(i32(-1i) * -1i, -1i, -15966i, func_1(-32852i));
    global0 = ~(~vec4<u32>(u_input.a, abs(0u), ~_wgslsmith_add_u32(global0.x, u_input.a), ~u_input.a << (~u_input.a % 32u)));
    let var_1 = true;
    var var_2 = abs(var_0);
    let var_3 = 189f;
    let var_4 = Struct_1(2557i, !vec2<bool>(_wgslsmith_mult_i32(-7453i, var_0.x) <= ~var_2.x, var_1), ~1430u, var_0 >> (select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 15667u), vec4<u32>(global0.x, u_input.a, 5890u, 0u)), min(~vec4<u32>(u_input.a, global0.x, global0.x, 25985u), ~vec4<u32>(0u, 86320u, u_input.a, u_input.a)), !(var_1 | var_1)) % vec4<u32>(32u)));
    var_2 = _wgslsmith_add_vec4_i32(var_0, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(347f))))), _wgslsmith_f_op_f32(ceil(1026f))));
}

