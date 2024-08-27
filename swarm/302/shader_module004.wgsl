struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(960f, 1121f))) - _wgslsmith_f_op_f32(sign(1000f))))));
    var var_1 = _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), -u_input.c.x) | _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(u_input.c.x)), -u_input.c.x);
    var var_2 = u_input.c.xx;
    let var_3 = _wgslsmith_mult_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 1i), u_input.c), vec4<i32>(u_input.c.x, -2147483647i, min(max(var_2.x, 1i), var_2.x), 1i)));
    var var_4 = 36779i >> (~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(963u, arg_2.b.x, arg_1.x, 1u), arg_2.a)) % 32u);
    return select(min(-1572i, u_input.c.x), _wgslsmith_sub_i32(var_3.x, -select(-32643i, 14303i, -1972i != u_input.c.x)), false);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(func_3(u_input.e, ~(~vec3<u32>(0u, 4294967295u, 17350u)), arg_2)), _wgslsmith_add_i32(abs(max(u_input.c.x, _wgslsmith_sub_i32(-1i, -2147483647i))), u_input.c.x));
    var_0 = -(~_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x));
    var var_1 = vec2<u32>(~0u, abs(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mod_u32(~u_input.d.x, 5735u >> (arg_2.a.x % 32u)))));
    var var_2 = arg_2;
    let var_3 = arg_2;
    return var_3;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, _wgslsmith_f_op_f32(f32(-1f) * -703f), -1300f))), -1000f, arg_1);
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(abs(-1594f)), _wgslsmith_div_f32(609f, _wgslsmith_div_f32(-317f, 724f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-213f))))))), arg_1);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1191f, 1203f, -1000f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1015f, -263f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1092f, -1915f, -1113f))))))), _wgslsmith_f_op_f32(197f * _wgslsmith_f_op_f32(round(261f))), Struct_1(abs(vec4<u32>(u_input.d.x, ~4294967295u, ~u_input.e, 1u)), ~vec2<u32>(~var_0.b.x, ~13455u)));
    var_0 = var_1;
    var_0 = Struct_1(vec4<u32>(~countOneBits(arg_1.a.x >> (var_1.a.x % 32u)), 67454u, ~var_0.b.x, ~(1u >> (_wgslsmith_mult_u32(1u, u_input.d.x) % 32u))), _wgslsmith_mod_vec2_u32(var_1.a.yy, vec2<u32>(var_1.a.x, _wgslsmith_div_u32(~u_input.d.x, var_0.b.x))));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, -251f, 1008f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(140f, -165f, -1000f), vec3<f32>(1000f, 725f, -320f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1200f, _wgslsmith_f_op_f32(156f + 768f), _wgslsmith_f_op_f32(round(1739f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-449f, -1058f, 1012f), vec3<f32>(-621f, 1000f, -1788f), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f + -1338f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f))), Struct_1(var_0.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.e, 4294967295u), func_2(vec3<f32>(1000f, 889f, -603f), -969f, Struct_1(var_0.a, vec2<u32>(var_0.a.x, 4294967295u))).b) | arg_1.b));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(countOneBits(1u), 50312u, arg_1.b.x, firstTrailingBit(~(~u_input.b.x))), firstTrailingBit(arg_1.a.yy));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.c.x), arg_3.x, arg_3.x, 1i), vec4<i32>(arg_3.x, 1i, countOneBits(u_input.c.x), -arg_3.x));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, 337f, 867f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-676f)), _wgslsmith_f_op_f32(-2890f + -179f), -2619f))), -675f, arg_1);
    var_0 = Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(-858f - -380f), 239f, _wgslsmith_f_op_f32(-188f * -1336f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(477f * -827f), _wgslsmith_f_op_f32(round(956f))), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-841f, 292f, -441f))), _wgslsmith_f_op_f32(-1267f + -226f), func_2(vec3<f32>(112f, 381f, 171f), -1000f, Struct_1(vec4<u32>(u_input.d.x, var_2.a.x, var_0.b.x, arg_1.a.x), vec2<u32>(u_input.e, arg_0.x))))).a << (u_input.d % vec4<u32>(32u)), vec2<u32>(firstLeadingBit(0u), arg_1.a.x));
    var var_3 = all(vec4<bool>(-2147483647i >= arg_3.x, all(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_2), arg_2), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2)), arg_2)), true, select(false, true, true)));
    return func_2(vec3<f32>(1164f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1467f + 397f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2066f)), _wgslsmith_f_op_f32(1325f - 1411f))), -859f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-151f + _wgslsmith_f_op_f32(-351f - 1428f)))) * _wgslsmith_f_op_f32(738f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-557f, -1000f)) - _wgslsmith_f_op_f32(582f + -145f)))), func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1411f, -200f, 2131f), vec3<f32>(-301f, -351f, 1000f))))), vec3<f32>(-1524f, -466f, -385f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-336f - -273f), _wgslsmith_div_f32(-1980f, 789f)) * -1257f), var_2));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(-255f + arg_0)))) * _wgslsmith_f_op_f32(-190f * -1131f)));
    var_0 = arg_0;
    let var_1 = -14688i >> (firstTrailingBit(_wgslsmith_add_u32(arg_1.b.x ^ 1u, countOneBits(1u))) % 32u);
    let var_2 = abs(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, 0i, 0i), vec4<i32>(u_input.c.x, -9931i, 2147483647i, 0i)), vec4<i32>(-1i, u_input.c.x, var_1, 16763i)) << (_wgslsmith_clamp_vec4_u32(~(vec4<u32>(3580u, 1u, u_input.d.x, 4294967295u) & vec4<u32>(1u, 36235u, u_input.e, 1u)), _wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(u_input.b.x, u_input.a.x, 11571u, 4294967295u)), vec4<u32>(func_4(u_input.d.xzx, arg_1, arg_3.x, vec3<i32>(u_input.c.x, 2147483647i, var_1)).a.x, abs(286u), 56590u, _wgslsmith_add_u32(u_input.e, arg_1.b.x))) % vec4<u32>(32u)));
    return select(vec4<bool>(all(select(vec3<bool>(arg_2.x, arg_3.x, true), vec3<bool>(arg_3.x, true, false), true)) && all(select(vec2<bool>(true, arg_3.x), vec2<bool>(arg_3.x, true), vec2<bool>(false, arg_3.x))), !arg_2.x, arg_2.x, ~21373u > ~u_input.a.x), !select(!select(vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_3.x, true, arg_2.x)), select(!vec4<bool>(arg_3.x, false, arg_2.x, false), vec4<bool>(false, true, true, true), select(vec4<bool>(true, arg_2.x, arg_3.x, false), vec4<bool>(false, arg_2.x, arg_3.x, false), arg_3.x)), select(select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(arg_3.x, true, arg_2.x, arg_3.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(arg_3.x, false, arg_2.x, arg_2.x)), arg_3.x)), firstTrailingBit(9692u) <= _wgslsmith_add_u32(0u, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(func_5(-2897f, func_4(select(u_input.b, vec3<u32>(4766u, u_input.e, 4294967295u), vec3<bool>(false, false, false)), func_1(1i, Struct_1(vec4<u32>(0u, 0u, 22091u, 27829u), vec2<u32>(14816u, u_input.d.x))), select(true, true, false), _wgslsmith_clamp_vec3_i32(u_input.c.zyx, u_input.c.ywy, u_input.c.wyz)), vec2<bool>(all(vec4<bool>(true, false, false, true)), u_input.c.x > 52735i), vec2<bool>(true, all(vec3<bool>(true, true, false))))), all(select(vec4<bool>(59968u != u_input.b.x, true, all(vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true))));
    var_0 = vec2<bool>(any(select(!func_5(-514f, Struct_1(u_input.d, u_input.b.zy), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), func_5(-497f, Struct_1(vec4<u32>(40098u, u_input.a.x, 1u, 1u), u_input.a), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x)), vec4<bool>(var_0.x, true, true, var_0.x)), vec4<bool>(true, true, true, true))), true);
    let var_1 = firstLeadingBit(~u_input.a.x & u_input.b.x);
    let var_2 = Struct_1(u_input.d, ~vec2<u32>(func_2(vec3<f32>(-589f, -399f, 780f), _wgslsmith_f_op_f32(floor(-257f)), func_4(u_input.d.zxy, Struct_1(u_input.d, u_input.a), var_0.x, vec3<i32>(1i, u_input.c.x, -8754i))).b.x, 89367u ^ ~var_1));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d);
}

