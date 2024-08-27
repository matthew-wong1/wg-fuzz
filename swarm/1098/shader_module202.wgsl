struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f))));
    let var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(468f + -522f)), _wgslsmith_div_f32(1271f, _wgslsmith_f_op_f32(1338f + -1124f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-631f, -676f), vec2<f32>(-1083f, -1000f), false))))));
    var var_3 = Struct_3(u_input.a.x, !(!(true & all(vec4<bool>(false, false, false, false)))));
    let var_4 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(max(var_3.a, _wgslsmith_div_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 15008u, var_3.a, var_3.a), ~vec4<u32>(var_1, 79002u, var_3.a, u_input.a.x)), 34500u), vec3<u32>(~(~u_input.a.x), _wgslsmith_sub_u32(4294967295u, 4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), var_1 >> (u_input.a.x % 32u))), ~(select(vec4<u32>(var_3.a, var_3.a, u_input.a.x, 4294967295u) << (vec4<u32>(14547u, var_3.a, 18442u, var_3.a) % vec4<u32>(32u)), select(vec4<u32>(var_3.a, u_input.a.x, var_1, 79069u), vec4<u32>(var_1, u_input.a.x, 45982u, 30839u), var_3.b), all(vec2<bool>(true, var_3.b))) >> (vec4<u32>(1u, min(84348u, 0u), var_3.a, _wgslsmith_clamp_u32(1u, 63108u, 4294967295u)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)), _wgslsmith_f_op_f32(round(1346f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -128f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1256f, -1124f)), vec2<f32>(790f, -401f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> vec4<u32> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(576f, _wgslsmith_f_op_f32(f32(-1f) * -1258f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))))), u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(840f, 2469f) * var_0.b))))))) - vec2<f32>(_wgslsmith_f_op_f32(max(-365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) * _wgslsmith_div_f32(var_0.b.x, 422f)))), 1079f));
    var_0 = Struct_1(var_0.a, var_1, vec3<i32>(firstLeadingBit(~select(u_input.b.x, u_input.b.x, false)), -45806i, u_input.b.x));
    var_0 = Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.b.x, 306f, true)), 256f, any(vec3<bool>(var_0.a, var_0.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f * arg_0)))), u_input.b >> (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.a), 23714u, arg_2) % vec3<u32>(32u)));
    var var_2 = select(select(select(!select(vec3<bool>(var_0.a, true, arg_1), vec3<bool>(false, false, true), false), select(vec3<bool>(true, arg_1, true), select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(arg_1, arg_1, false), var_0.a), select(vec3<bool>(true, arg_1, false), vec3<bool>(var_0.a, arg_1, true), var_0.a)), _wgslsmith_f_op_f32(716f * 776f) < var_1.x), !select(!vec3<bool>(var_0.a, false, arg_1), !vec3<bool>(false, var_0.a, var_0.a), true), vec3<bool>(arg_0 > arg_0, var_0.a, all(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_1, arg_1))))), !(!(!vec3<bool>(true, arg_1, var_0.a))), arg_1);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(4294967295u), arg_2 << (u_input.a.x % 32u), ~u_input.a.x, 1u), firstLeadingBit(_wgslsmith_mod_vec4_u32(~(vec4<u32>(0u, arg_2, 4294967295u, u_input.a.x) >> (vec4<u32>(arg_2, 6368u, u_input.a.x, 59501u) % vec4<u32>(32u))), min(vec4<u32>(35925u, u_input.a.x, u_input.a.x, 49892u), vec4<u32>(u_input.a.x, 10691u, u_input.a.x, 4294967295u)) ^ abs(vec4<u32>(34179u, u_input.a.x, 1u, 0u)))), firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(19175u, 1987u, 4294967295u, arg_2) >> (vec4<u32>(40808u, 11826u, u_input.a.x, 7879u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2, arg_2, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2), vec4<u32>(1u, 4294967295u, 7614u, arg_2)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = !(-u_input.b.x != u_input.b.x);
    let var_1 = true;
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -41413i, u_input.b.x, 0i), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-18422i, i32(-1i) * -34710i), -42527i, -(~15119i)), max(-abs(vec4<i32>(0i, u_input.b.x, 55936i, u_input.b.x)), ~(vec4<i32>(-6839i, u_input.b.x, 54098i, 4159i) & vec4<i32>(u_input.b.x, 12733i, -46295i, u_input.b.x)))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, 4294967295u, 1u), vec4<u32>(_wgslsmith_mod_u32(arg_0.a, 6005u), u_input.a.x, arg_1.x, ~arg_0.a)), func_2(-1687f, arg_0.b, arg_0.a)) % vec4<u32>(32u));
    var var_3 = true;
    let var_4 = max(_wgslsmith_add_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(var_2.x, u_input.b.x, u_input.b.x, 30651i))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, u_input.b.x, -1i, var_2.x), vec4<i32>(-25956i, var_2.x, 1i, 0i))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 53459u, 17879u, 0u), vec4<u32>(1u, arg_0.a, 1u, 86187u)) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(var_2.x), _wgslsmith_dot_vec2_i32(~(u_input.b.zz << (u_input.a % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 26006i, u_input.b.x), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), 1i)), ~u_input.b.x, 2143i));
    return any(!vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, _wgslsmith_f_op_f32(-2799f + 464f) != _wgslsmith_f_op_f32(select(-570f, -1353f, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = arg_1.zx;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(round(arg_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1188f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(984f, arg_1.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f))));
    let var_2 = vec2<bool>(arg_0.a, false);
    let var_3 = vec2<bool>(any(vec4<bool>(select(false, arg_0.a, var_2.x), all(vec3<bool>(arg_0.a, false, true)), true, false)) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - var_0.x)) != -866f), func_1(Struct_3(~34724u, all(vec2<bool>(true, false))), countOneBits(u_input.a) | firstTrailingBit(u_input.a), ~vec3<u32>(0u, u_input.a.x, 31328u)));
    var var_4 = vec4<bool>(arg_0.a, u_input.a.x >= u_input.a.x, !any(select(!vec4<bool>(arg_0.a, true, arg_0.a, true), select(vec4<bool>(false, true, var_2.x, arg_0.a), vec4<bool>(true, arg_0.a, true, false), vec4<bool>(var_2.x, var_2.x, false, var_3.x)), !vec4<bool>(var_3.x, false, true, true))), !var_3.x);
    return Struct_3(34565u, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_4(Struct_1(select(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), func_1(Struct_3(11201u, false), countOneBits(u_input.a), select(vec3<u32>(u_input.a.x, u_input.a.x, 64278u), vec3<u32>(24637u, u_input.a.x, 0u), vec3<bool>(false, false, false))), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(573f, -949f) + vec2<f32>(1360f, 593f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(601f, -1000f)))))), abs(vec3<i32>(var_0, 3630i | var_0, ~var_0))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f + -760f) + _wgslsmith_f_op_f32(f32(-1f) * -2440f))), _wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-545f, 1043f)) + _wgslsmith_f_op_f32(sign(-169f))) * _wgslsmith_div_f32(-523f, -323f)), 1f));
    var_1 = Struct_3(min(1u, 31616u), true);
    let var_2 = 11971u;
    var var_3 = max(vec3<i32>(-var_0, i32(-1i) * -var_0, _wgslsmith_clamp_i32(-1i, ~(-1i), 1i)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-43179i, 2147483647i, -2147483647i))) ^ -u_input.b;
    var_1 = Struct_3(~((_wgslsmith_add_u32(59710u, var_2) ^ 4294967295u) << (var_1.a % 32u)), true);
    let var_4 = !vec3<bool>(!(!var_1.b), true, var_1.b);
    var_1 = func_4(Struct_1(all(!(!vec3<bool>(var_4.x, var_4.x, var_1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1441f * -773f), -1857f)), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, -1540f, -2504f, 1000f)) * vec4<f32>(-1111f, -2113f, -1147f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-883f)), 1437f, _wgslsmith_f_op_f32(-549f + -848f), -1727f)) + vec4<f32>(_wgslsmith_f_op_f32(1349f - _wgslsmith_f_op_f32(-475f * 303f)), -182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-800f - -625f), _wgslsmith_f_op_f32(select(1637f, -418f, false))), 1292f)));
    let x = u_input.a;
    s_output = StorageBuffer(-956f, var_1.a >> (99047u % 32u));
}

